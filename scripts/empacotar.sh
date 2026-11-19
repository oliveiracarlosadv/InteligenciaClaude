#!/usr/bin/env bash
# Gera os pacotes de download em dist/:
#  - <skill>.zip           → só o SKILL.md, na raiz do .zip (sem pasta e sem README),
#                            formato aceito em Personalizar → Skills do Claude
#  - todas-as-skills.zip   → todos os <skill>.zip lado a lado, sem subpastas
# Uso: ./scripts/empacotar.sh
set -euo pipefail
cd "$(dirname "$0")/.."
rm -rf dist && mkdir -p dist
for d in skills/*/; do
  nome=$(basename "$d")
  zip -qj "dist/$nome.zip" "$d/SKILL.md"
done
(cd dist && zip -qj todas-as-skills.zip ./*.zip)
ls -1 dist
