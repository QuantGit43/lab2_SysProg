#define _GNU_SOURCE
#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#ifndef BUILD_NAME
#define BUILD_NAME "sensor"
#endif

#define SAMPLE_RATE 1000.0f
#define PULSE_HZ 1.2f
#define NOISE 0.6f
#define PASSES 8

static double now_s(clockid_t clk)
{
    struct timespec ts;
    clock_gettime(clk, &ts);
    return ts.tv_sec + ts.tv_nsec * 1e-9;
}

static float *alloc_signal(int n)
{
    float *p = malloc((size_t)n * sizeof(float));
    if (!p) {
        fprintf(stderr, "Не вистачає пам'яті\n");
        exit(1);
    }
    return p;
}

static uint32_t rng = 20251024u;

static float noise(void)
{
    rng = rng * 1664525u + 1013904223u;
    return (float)(rng >> 8) * (1.0f / 16777216.0f) - 0.5f;
}

__attribute__((noinline))
void generate_signal(float *clean, float *noisy, int n)
{
    for (int i = 0; i < n; i++) {
        float t = (float)i / SAMPLE_RATE;
        clean[i] = sinf(2.0f * 3.14159265f * PULSE_HZ * t);
        noisy[i] = clean[i] + NOISE * noise();
    }
}

__attribute__((noinline))
void smooth(const float *restrict in, float *restrict out, int n)
{
    out[0] = in[0];
    for (int i = 1; i < n - 1; i++)
        out[i] = (in[i - 1] + in[i] + in[i + 1]) / 3.0f;
    out[n - 1] = in[n - 1];
}

__attribute__((noinline))
const float *filter_block(const float *noisy, float *a, float *b, int n, int passes)
{
    smooth(noisy, a, n);
    for (int p = 1; p < passes; p++) {
        smooth(a, b, n);
        float *t = a;
        a = b;
        b = t;
    }
    return a;
}

__attribute__((noinline))
int count_beats(const float *s, int n)
{
    int beats = 0, armed = 1;
    for (int i = 0; i < n; i++) {
        if (armed && s[i] > 0.5f) {
            beats++;
            armed = 0;
        } else if (!armed && s[i] < -0.5f) {
            armed = 1;
        }
    }
    return beats;
}

__attribute__((noinline))
void signal_stats(const float *s, int n, float *min_out, float *max_out, double *mean_out)
{
    float mn = s[0], mx = s[0];
    double sum = 0.0;
    for (int i = 0; i < n; i++) {
        if (s[i] < mn)
            mn = s[i];
        if (s[i] > mx)
            mx = s[i];
        sum += s[i];
    }
    *min_out = mn;
    *max_out = mx;
    *mean_out = sum / n;
}

__attribute__((noinline))
double rms_error(const float *s, const float *clean, int n)
{
    double sum = 0.0;
    for (int i = 0; i < n; i++) {
        double d = s[i] - clean[i];
        sum += d * d;
    }
    return sqrt(sum / n);
}

static int self_test(void)
{
    float in[16], out[16];
    for (int i = 0; i < 16; i++)
        in[i] = (float)i;
    smooth(in, out, 16);
    for (int i = 0; i < 16; i++)
        if (fabsf(out[i] - in[i]) > 1e-4f)
            return 0;
    return 1;
}

static void save_csv(const char *path, const float *clean, const float *noisy, const float *smoothed, int n)
{
    FILE *f = fopen(path, "w");
    if (!f) {
        perror(path);
        return;
    }
    fprintf(f, "t,clean,noisy,smoothed\n");
    for (int i = 0; i < n; i++)
        fprintf(f, "%.3f,%.5f,%.5f,%.5f\n", i / SAMPLE_RATE, clean[i], noisy[i], smoothed[i]);
    fclose(f);
}

int main(int argc, char **argv)
{
    int n = argc > 1 ? atoi(argv[1]) : 65536;
    int blocks = argc > 2 ? atoi(argv[2]) : 5000;
    const char *csv = argc > 3 ? argv[3] : NULL;
    if (n < 3 || blocks <= 0) {
        fprintf(stderr, "Використання: %s [N] [BLOCKS] [файл.csv]\n", argv[0]);
        return 1;
    }
    double cpu0 = now_s(CLOCK_PROCESS_CPUTIME_ID);
    double t_start = now_s(CLOCK_MONOTONIC);
    printf("Згладжування сигналу [%s]: точок = %d, блоків = %d, проходів = %d\n", BUILD_NAME, n, blocks, PASSES);
    printf("Самоперевірка (лінійний сигнал не змінюється): %s\n", self_test() ? "OK" : "ПОМИЛКА");

    float *clean = alloc_signal(n), *noisy = alloc_signal(n), *a = alloc_signal(n), *b = alloc_signal(n);
    double t0 = now_s(CLOCK_MONOTONIC);
    generate_signal(clean, noisy, n);
    double t_gen = now_s(CLOCK_MONOTONIC) - t0;

    double t_filter = 0, t_beats = 0, t_stats = 0;
    const float *res = NULL;
    int beats = 0;
    float mn = 0, mx = 0;
    double mean = 0;
    for (int blk = 0; blk < blocks; blk++) {
        double p = now_s(CLOCK_MONOTONIC);
        res = filter_block(noisy, a, b, n, PASSES);
        double q = now_s(CLOCK_MONOTONIC);
        beats = count_beats(res, n);
        double r = now_s(CLOCK_MONOTONIC);
        signal_stats(res, n, &mn, &mx, &mean);
        double s = now_s(CLOCK_MONOTONIC);
        t_filter += q - p;
        t_beats += r - q;
        t_stats += s - r;
    }

    double rms_before = rms_error(noisy, clean, n);
    double rms_after = rms_error(res, clean, n);
    double seconds = n / SAMPLE_RATE;
    double bpm = beats * 60.0 / seconds;
    double checksum = 0;
    for (int i = 0; i < n; i++)
        checksum += res[i];
    if (csv)
        save_csv(csv, clean, noisy, res, n < 3000 ? n : 3000);

    double samples = (double)n * PASSES * blocks;
    printf("Пульс: %.1f уд/хв (%d ударів за %.1f с запису)\n", bpm, beats, seconds);
    printf("Шум: RMS до %.4f, після %.4f (у %.1f раза менше)\n", rms_before, rms_after, rms_before / rms_after);
    printf("Сигнал після згладжування: мін. %.4f, макс. %.4f, середнє %.5f\n", mn, mx, mean);
    printf("Генерація сигналу:      %8.3f с\n", t_gen);
    printf("Згладжування:           %8.3f с  (%.3f нс/точку)\n", t_filter, t_filter * 1e9 / samples);
    printf("Підрахунок ударів:      %8.3f с\n", t_beats);
    printf("Статистика:             %8.3f с\n", t_stats);
    printf("Контрольна сума:        %.6f\n", checksum);

    double cpu1 = now_s(CLOCK_PROCESS_CPUTIME_ID);
    printf("RESULT build=%s n=%d blocks=%d passes=%d gen_s=%.4f filter_s=%.4f beats_s=%.4f stats_s=%.4f "
           "total_s=%.4f cpu_s=%.4f ns_per_sample=%.4f beats=%d bpm=%.2f rms_before=%.5f rms_after=%.5f checksum=%.6f\n",
           BUILD_NAME, n, blocks, PASSES, t_gen, t_filter, t_beats, t_stats,
           now_s(CLOCK_MONOTONIC) - t_start, cpu1 - cpu0, t_filter * 1e9 / samples,
           beats, bpm, rms_before, rms_after, checksum);
    free(clean);
    free(noisy);
    free(a);
    free(b);
    return 0;
}
