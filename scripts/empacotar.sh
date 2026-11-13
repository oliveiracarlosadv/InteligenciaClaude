#!/usr/bin/env bash
# Gera um .zip por skill (formato aceito pelo Claude.ai) e um com todas.
# Uso: ./scripts/empacotar.sh   → arquivos em dist/
set -euo pipefail
cd "$(dirname "$0")/.."
rm -rf dist && mkdir -p dist
cd skills
for d in */; do
  d="${d%/}"
  zip -qr "../dist/$d.zip" "$d" -x '*.DS_Store'
done
zip -qr ../dist/todas-as-skills.zip . -x '*.DS_Store'
cd ..
ls -1 dist
