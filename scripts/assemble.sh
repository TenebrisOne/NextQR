#!/usr/bin/env bash
# Ensambla public/index.html desde scripts/parts/  (uso: bash scripts/assemble.sh)
set -euo pipefail

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
PARTS="$DIR/scripts/parts"

for f in part1-head.html part2-body.html part3-script.html part4-close.html; do
  [ -f "$PARTS/$f" ] || { echo "✗ Falta scripts/parts/$f" >&2; exit 1; }
done

cat "$PARTS/part1-head.html" \
    "$PARTS/part2-body.html" \
    "$PARTS/part3-script.html" \
    "$PARTS/part4-close.html" > "$DIR/public/index.html"

echo "✓ public/index.html ensamblado ($(wc -c < "$DIR/public/index.html") bytes)"
