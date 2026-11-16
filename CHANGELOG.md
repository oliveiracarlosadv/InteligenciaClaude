# Histórico de mudanças

Formato: a versão mais recente fica no topo. Os `.zip` de cada versão estão em [Releases](https://github.com/oliveiracarlosadv/InteligenciaClaude/releases).

## v1.2.0 — 16/11/2026

### Adicionado
- Skill `gerador-de-skills-claude-juridicas`: cria novas skills a partir de uma descrição, entregando o `SKILL.md` completo.
- Atalho para essa skill no guia *Criar ou editar uma skill*.

## v1.1.0 — 14/11/2026

### Adicionado
- Skill `especialista-escala-5x2`: montagem, validação e cálculo de escalas de trabalho 5x2.
- Destaque no README com o link de download da versão mais recente.
- `scripts/backup.sh`: backup local em `BACKUPS/` com `.zip` dos arquivos e `.bundle` do histórico Git.

### Alterado
- Guia de instalação reescrito com o caminho atual: **Personalizar → Skills → + → Criar skill → Enviar uma skill**, passos separados para o Claude normal (navegador) e o Claude Desktop, ativação da execução de código e sincronização com o Claude Code.

## v1.0.0 — 13/11/2026

### Adicionado
- 12 skills CAAO em Markdown: Previdenciário, Trabalhista, Tributário, Assistente Jurídico Completo, Servidor Público do Pará, Civilista, Escrita Humana, Jurisprudência e Leis BR, Jurisprudência Search Pro, Revisão Técnica de Química, Social Media para advogados e SST.
- Skill `resposta-objetiva`.
- Manual completo em `docs/`: como funciona, instalação, uso, criação de skills, Padrão CAAO, catálogo e perguntas frequentes.
- Modelo de skill em `templates/SKILL-modelo.md`.
- `.zip` pronto de cada skill para baixar uma só, e script `scripts/empacotar.sh` para gerá-los.

### Corrigido
- `CIVILISTA_CAAO`: o rodapé do `SKILL.md`, que estava cortado, foi completado e ganhou fluxo de atendimento, texto institucional e limitações.
