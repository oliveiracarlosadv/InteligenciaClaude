#!/usr/bin/env bash
# Backup do repositório em BACKUPS/:
#  - InteligenciaClaude_AAAA-MM-DD_HHMM.zip    → arquivos atuais (sem .git, BACKUPS e dist)
#  - InteligenciaClaude_AAAA-MM-DD_HHMM.bundle → histórico Git completo
# Restaurar o histórico: git clone InteligenciaClaude_....bundle pasta-nova
set -euo pipefail
cd "$(dirname "$0")/.."
mkdir -p BACKUPS
STAMP=$(date +%Y-%m-%d_%H%M)
zip -qr "BACKUPS/InteligenciaClaude_$STAMP.zip" . -x '.git/*' 'BACKUPS/*' 'dist/*' '*.DS_Store'
git bundle create -q "BACKUPS/InteligenciaClaude_$STAMP.bundle" --all
ls -lh BACKUPS | tail -n 2
