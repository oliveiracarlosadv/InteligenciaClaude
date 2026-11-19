# Histórico de mudanças

Formato: a versão mais recente fica no topo. Os `.zip` de cada versão estão em [Releases](https://github.com/oliveiracarlosadv/InteligenciaClaude/releases).

## v1.7.0 — 19/11/2026

### Adicionado
- Skill `orientador-de-artigos`: textos acadêmicos originais, com fontes verificáveis, normas da ABNT e LaTeX (abnTeX2).

### Alterado
- Área do README renomeada para **Escrita acadêmica, revisão e respostas**.

## v1.6.0 — 17/11/2026

### Adicionado
- Skill `especialista-em-direito-criminal`: peças e análise de casos da advocacia criminal (CP, CPP, CF, LEP, legislação especial e criminologia).
- Nova área no README: **Direito Penal e Processual Penal**.

## v1.5.0 — 17/11/2026

### Alterado
- `gerador-de-skills-claude-juridicas` atualizada para a versão 1.1.0 da skill: novo prompt de engenheiro de prompts e arquiteto de Skills; pergunta inicial "QUAL O TIPO DE Skill você quer criar?" (tipo, objetivo e área), que é dispensada quando os dados já vêm no pedido; `name` gerado em kebab-case e `tagline` própria para cada skill.

## v1.4.0 — 16/11/2026

### Removido
- Skill `SocialMediaAdvExpert_CAAO` (a produção de conteúdo para redes sociais fica com a `social-media-para-advs`).

## v1.3.0 — 16/11/2026

### Adicionado
- Skill `social-media-para-advs`: diretor de arte e social media jurídico; gera post completo para Instagram (arte, legenda, CTA ético, hashtags, direção de arte e prompt para IA de imagem) dentro do Provimento 205/2021.

### Alterado
- README: skills organizadas **por área** (Previdenciário, Trabalho e SST, Tributário, Civil, Administrativo, geral, pesquisa, marketing, escrita e criação de skills).
- Catálogo com índice por área.

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
