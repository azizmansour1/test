#!/usr/bin/env bash
# Step 6: trim the four chosen panels and join them into exactly 15.0s,
# 1080x1920, 24 fps. Run from the repo root after the finals exist.
#
#   ./necklace-test/assemble.sh [P1 P2 P3 P4]
#
# Default inputs: necklace-test/finals/P{1..4}.mp4
# Per-panel start offsets (seconds) can be set with S1..S4, e.g. S2=0.4 to skip
# a silent lead-in before the line starts.
set -euo pipefail

DIR="$(cd "$(dirname "$0")" && pwd)"
IN=("${1:-$DIR/finals/P1.mp4}" "${2:-$DIR/finals/P2.mp4}" "${3:-$DIR/finals/P3.mp4}" "${4:-$DIR/finals/P4.mp4}")
DUR=(1.0 2.2 8.0 3.8)
START=("${S1:-0}" "${S2:-0}" "${S3:-0}" "${S4:-0}")
OUT="$DIR/necklace_test_15s.mp4"

for f in "${IN[@]}"; do
  [[ -f "$f" ]] || { echo "missing input: $f" >&2; exit 1; }
done

args=()
filter=""
for i in 0 1 2 3; do
  args+=(-ss "${START[$i]}" -t "${DUR[$i]}" -i "${IN[$i]}")
  # Normalise every clip so concat gets identical streams. The clip is cut to
  # its exact length, padded with silence if it has no audio, and resampled.
  filter+="[$i:v]scale=1080:1920:force_original_aspect_ratio=increase,crop=1080:1920,fps=24,setsar=1,trim=duration=${DUR[$i]},setpts=PTS-STARTPTS[v$i];"
  filter+="[$i:a]aresample=48000,aformat=channel_layouts=stereo,apad,atrim=duration=${DUR[$i]},asetpts=PTS-STARTPTS[a$i];"
done
filter+="[v0][a0][v1][a1][v2][a2][v3][a3]concat=n=4:v=1:a=1[v][a]"

ffmpeg -y "${args[@]}" -filter_complex "$filter" -map "[v]" -map "[a]" \
  -c:v libx264 -preset slow -crf 18 -pix_fmt yuv420p -r 24 \
  -c:a aac -b:a 192k -t 15.0 -movflags +faststart "$OUT"

ffprobe -v error -show_entries format=duration:stream=width,height,r_frame_rate \
  -of default=nw=1 "$OUT"
echo "wrote $OUT"
