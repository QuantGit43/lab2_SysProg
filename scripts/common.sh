ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
BUILD="$ROOT/build"
RESULTS="$ROOT/results"
WORK="${WORK:-/tmp/sensorlab}"
FG="${FG:-/opt/FlameGraph}"
FREQ="${FREQ:-}"

CALLGRAPH="${CALLGRAPH:---call-graph dwarf}"
read -r -a PROG_ARGS <<< "${PROG_ARGS:-65536 5000}"
BUILDS=(sensor_O0 sensor_O3 sensor_native sensor_fast)
freq_for() { case "$1" in *_O0) echo "${FREQ:-999}" ;; *) echo "${FREQ:-9999}" ;; esac; }

mkdir -p "$RESULTS" "$WORK"

run() {
    printf '\n\033[1;36m$ %s\033[0m\n' "$*" >&2
    "$@"
}
