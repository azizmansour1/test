#!/usr/bin/env bash
# Step 5: trim the four chosen panels and join them into exactly 15.0s,
# 1080x1920, 24 fps. Run from the repo root once the drafts exist.
#
#   ./necklace-test/assemble.sh [P1 P2 P3 P4]
#
# Default inputs: necklace-test/finals/P{1..4}.mp4
# Per-panel knobs, all optional:
#   S1..S4      in-point in seconds, e.g. S2=0.4 skips a silent lead-in
#   CROP1..4    source-pixel crop W:H:X:Y applied before scaling, e.g.
#               CROP1=612:1088:0:96 drops a stray figure at the right edge of
#               a 720x1280 clip while keeping 9:16
#   T1..T4      speed factor with pitch preserved, e.g. T3=1.015 fits 8.12s of
#               dialogue into the 8.0s slot
set -euo pipefail

DIR="$(cd "$(dirname "$0")" && pwd)"
IN=("${1:-$DIR/finals/P1.mp4}" "${2:-$DIR/finals/P2.mp4}" "${3:-$DIR/finals/P3.mp4}" "${4:-$DIR/finals/P4.mp4}")
DUR=(1.0 2.2 8.0 3.8)
START=("${S1:-0}" "${S2:-0}" "${S3:-0}" "${S4:-0}")
CROP=("${CROP1:-}" "${CROP2:-}" "${CROP3:-}" "${CROP4:-}")
TEMPO=("${T1:-1}" "${T2:-1}" "${T3:-1}" "${T4:-1}")
OUT="$DIR/necklace_test_15s.mp4"

for f in "${IN[@]}"; do
  [[ -f "$f" ]] || { echo "missing input: $f" >&2; exit 1; }
done

args=()
filter=""
for i in 0 1 2 3; do
  # Read a little more than the slot so a sped-up panel still fills it.
  indur=$(awk -v d="${DUR[$i]}" -v t="${TEMPO[$i]}" 'BEGIN{printf "%.3f", d*t+0.25}')
  args+=(-ss "${START[$i]}" -t "$indur" -i "${IN[$i]}")
  crop=""; [[ -n "${CROP[$i]}" ]] && crop="crop=${CROP[$i]},"
  # Normalise every clip so concat gets identical streams: cut to the exact
  # slot, pad with silence if the audio is short, resample.
  filter+="[$i:v]${crop}scale=1080:1920:force_original_aspect_ratio=increase,crop=1080:1920,setsar=1,setpts=(PTS-STARTPTS)/${TEMPO[$i]},fps=24,trim=duration=${DUR[$i]},setpts=PTS-STARTPTS[v$i];"
  filter+="[$i:a]aresample=48000,aformat=channel_layouts=stereo,atempo=${TEMPO[$i]},apad,atrim=duration=${DUR[$i]},asetpts=PTS-STARTPTS[a$i];"
done
filter+="[v0][a0][v1][a1][v2][a2][v3][a3]concat=n=4:v=1:a=1[v][a]"

ffmpeg -y "${args[@]}" -filter_complex "$filter" -map "[v]" -map "[a]" \
  -c:v libx264 -preset slow -crf 18 -pix_fmt yuv420p -r 24 \
  -c:a aac -b:a 192k -t 15.0 -movflags +faststart "$OUT"

ffprobe -v error -show_entries format=duration:stream=width,height,r_frame_rate \
  -of default=nw=1 "$OUT"
echo "wrote $OUT"
