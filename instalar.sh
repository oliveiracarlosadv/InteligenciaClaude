#!/usr/bin/env bash
# Instalador das skills InteligenciaClaude para o Claude Code (Mac e Linux).
#
# Uso (no Terminal):
#   curl -fsSL https://raw.githubusercontent.com/oliveiracarlosadv/InteligenciaClaude/main/instalar.sh | bash
#
# O que faz:
#   - baixa as skills direto do GitHub (sem você precisar baixar nada);
#   - instala cada uma em ~/.claude/skills/<nome>/SKILL.md;
#   - se a skill já estiver instalada (mesma pasta ou mesmo "name:"), NÃO instala de novo.
#
# Opcional: CLAUDE_SKILLS_DIR=/outra/pasta para instalar em outro lugar
#           (ex.: .claude/skills dentro de um projeto).
set -euo pipefail

REPO="oliveiracarlosadv/InteligenciaClaude"
DEST="${CLAUDE_SKILLS_DIR:-$HOME/.claude/skills}"

TMP=$(mktemp -d)
trap 'rm -rf "$TMP"' EXIT

echo "Baixando as skills de github.com/$REPO ..."
curl -fsSL "https://codeload.github.com/$REPO/tar.gz/refs/heads/main" | tar -xz -C "$TMP"
SRC=$(find "$TMP" -maxdepth 2 -type d -name skills | head -n 1)
[ -d "$SRC" ] || { echo "Erro: pasta skills não encontrada no download." >&2; exit 1; }

mkdir -p "$DEST"

# Nomes (campo name:) de todas as skills já instaladas
EXISTENTES=$(grep -h -m1 '^name:' "$DEST"/*/SKILL.md 2>/dev/null | sed 's/^name:[[:space:]]*//; s/["'\'']//g' || true)

instaladas=0
puladas=0
for dir in "$SRC"/*/; do
  nome=$(basename "$dir")
  [ -f "$dir/SKILL.md" ] || continue
  if [ -e "$DEST/$nome/SKILL.md" ] || printf '%s\n' "$EXISTENTES" | grep -qx "$nome"; then
    echo "  • $nome — já instalada, pulando"
    puladas=$((puladas + 1))
    continue
  fi
  mkdir -p "$DEST/$nome"
  cp "$dir/SKILL.md" "$DEST/$nome/SKILL.md"
  echo "  ✓ $nome — instalada"
  instaladas=$((instaladas + 1))
done

echo
echo "Pronto. Instaladas: $instaladas · Já existiam: $puladas"
echo "Pasta: $DEST"
echo "Abra uma NOVA sessão do Claude Code e digite /skills para conferir."
