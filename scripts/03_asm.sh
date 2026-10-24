#!/usr/bin/env bash
set -euo pipefail
source "$(dirname "$0")/common.sh"
out="$RESULTS/asm"; mkdir -p "$out"

(cd "$ROOT" && make -s asm vecreport)
cp "$BUILD"/vec_*.txt "$out/"

printf '%-14s %6s %6s %6s %6s %6s %6s %6s %6s %8s\n' \
    збірка інстр xmm ymm zmm "*ss" "*ps" "div" "mul" "k-маски" | tee "$out/summary.txt"
for b in "${BUILDS[@]}"; do
    for fn in smooth count_beats signal_stats; do
        objdump -d -M intel --no-show-raw-insn --disassemble="$fn" "$BUILD/$b" \
            | sed -n '/^[0-9a-f]* <'"$fn"'>:/,/^$/p' > "$out/${b}_${fn}.asm"
    done
    body=$(grep -E '^\s+[0-9a-f]+:' "$out/${b}_smooth.asm" || true)
    cnt() { grep -c -E "$1" <<< "$body" || true; }
    printf '%-14s %6s %6s %6s %6s %6s %6s %6s %6s %8s\n' "$b" \
        "$(wc -l <<< "$body")" "$(cnt 'xmm')" "$(cnt 'ymm')" "$(cnt 'zmm')" \
        "$(cnt '\s[v]?[a-z]+ss\s')" "$(cnt '\s[v]?[a-z]+ps\s')" "$(cnt 'div[sp]s')" "$(cnt 'mul[sp]s')" \
        "$(cnt '\{k[1-7]\}|\sk[1-7],|kmov')" | tee -a "$out/summary.txt"
done

echo
echo "Векторизатор GCC про цикли програми:"
for v in O3 native fast; do
    echo "-- $v:"
    for fn in smooth count_beats signal_stats; do
        line=$(grep -n -E "^(void|int|double|const float \*) ?\*?$fn\(" "$ROOT/src/sensor.c" | head -n1 | cut -d: -f1)
        loop=$(awk -v s="$line" 'NR > s && /for \(int i/ { print NR; exit }' "$ROOT/src/sensor.c")
        msg=$(grep -E "sensor.c:$loop:[0-9]+: (optimized: loop vectorized|missed: couldn.t vectorize loop)" "$out/vec_$v.txt" | sort -u | sed 's/^src\///' | tr '\n' ' ')
        echo "   $fn (рядок $loop): ${msg:-немає повідомлення}"
    done
done
echo "Готово: $out/"
