# InteligenciaClaude

Biblioteca de **skills para o Claude** voltadas à advocacia, à gestão de pessoas e à produção técnica, criadas por **Carlos A. A. Oliveira — OAB/PA 33996**.

Uma skill é um conjunto de instruções em Markdown que ensina o Claude a trabalhar de um jeito específico: como um advogado previdenciarista, como um pesquisador de jurisprudência, como um revisor de textos. Você instala uma vez e o Claude passa a usá-la sempre que o assunto aparecer.

Todas as skills deste repositório estão em **Markdown puro** (`.md`), fáceis de ler, editar e versionar.

---

## ⬇️ Download da versão mais recente

> ### [📦 Baixar todas as skills (.zip)](https://github.com/oliveiracarlosadv/InteligenciaClaude/releases/latest/download/todas-as-skills.zip)
>
> **[Ver a última versão (Release) e baixar uma skill só →](https://github.com/oliveiracarlosadv/InteligenciaClaude/releases/latest)**
>
> Estes links apontam sempre para o lançamento mais recente. Para o Claude normal ou o Claude Desktop, envie **um `.zip` por skill**: a lista com o link de cada uma está na [tabela de downloads](docs/02-instalacao.md#baixar-somente-uma-skill).

---

## Skills disponíveis

| Skill | Para que serve |
|---|---|
| [AdvogadoPrevidenciarioCAAO](skills/advogadoprevidenciariocaao/) | Aposentadorias, benefícios do INSS, BPC/LOAS, revisões e planejamento previdenciário |
| [AdvogadoTrabalhistaCAAO](skills/advogadotrabalhistacaao/) | Consultas trabalhistas, petições, contestações, recursos e compliance |
| [AdvogadoTributaristaCAAO](skills/advogadotributaristacaao/) | Planejamento tributário, execução fiscal, autos de infração e créditos |
| [AssistenteJuridicoCompletoCAAO](skills/assistentejuridicocompletocaao/) | Peças, cálculos, análise processual e revisão em qualquer área |
| [CAAO_DireitoServidorPublicoPA](skills/caao-direitoservidorpublicopa/) | Direitos de servidores de Belém e do Estado do Pará |
| [CIVILISTA_CAAO](skills/civilista-caao/) | Direito Civil e Processual Civil: contratos, família, sucessões, execução |
| [EscritaHumanaCAAO](skills/escritahumanacaao/) | Texto natural, gramática correta e formatação ABNT |
| [JurisprudenciaLeisBRCAAO](skills/jurisprudencialeisbrcaao/) | Leis e jurisprudência só em fontes oficiais, com número e link |
| [JurisprudenciaSearchPro_CAAO](skills/jurisprudenciasearchpro-caao/) | Busca de jurisprudência no TJPA, TRT8, TRF, STJ, STF e TST |
| [RevisaoTecnicaArtigosQuimicaEN](skills/revisaotecnicaartigosquimicaen/) | Revisão de artigos científicos de Química em português e inglês |
| [SocialMediaAdvExpert_CAAO](skills/socialmediaadvexpert-caao/) | Redes sociais para advogados, dentro da ética da OAB |
| [SSTSEMSTSegPrev_CAAO](skills/sstsemstsegprev-caao/) | Segurança e Saúde no Trabalho, NRs e investigação de acidentes |
| [resposta-objetiva](skills/resposta-objetiva/) | Respostas curtíssimas, sempre no formato `Pergunta: - "Resposta"` |
| [especialista-escala-5x2](skills/especialista-escala-5x2/) | Montagem, validação e cálculo de escalas de trabalho 5x2 |
| [gerador-de-skills-claude-juridicas](skills/gerador-de-skills-claude-juridicas/) | Cria novas skills: transforma uma descrição em um `SKILL.md` pronto |

Detalhes de cada uma no [Catálogo](docs/06-catalogo.md).

---

## Começo rápido

**Quero só uma skill:** baixe o `.zip` pronto dela na [tabela de downloads](docs/02-instalacao.md#baixar-somente-uma-skill) e envie ao Claude.

**No Claude Code, todas de uma vez:**

```bash
git clone https://github.com/oliveiracarlosadv/InteligenciaClaude.git
mkdir -p ~/.claude/skills
cp -R InteligenciaClaude/skills/* ~/.claude/skills/
```

**No Claude normal (claude.ai) ou no Claude Desktop:** ligue a execução de código em **Configurações → Capacidades** e envie o `.zip` em **Personalizar → Skills → + → Criar skill → Enviar uma skill**.

O passo a passo completo está em [Instalação](docs/02-instalacao.md).

---

## Manual

1. [Como funciona](docs/01-como-funciona.md): o que é uma skill e como o Claude decide usá-la
2. [Instalação](docs/02-instalacao.md): Claude normal (navegador), Claude Desktop e Claude Code
3. [Como usar](docs/03-como-usar.md): ativar, pedir documentos e boas práticas
4. [Criar ou editar uma skill](docs/04-criar-skill.md): estrutura, regras e publicação aqui
5. [Padrão CAAO](docs/05-padrao-caao.md): cabeçalho, rodapé e identidade dos documentos
6. [Catálogo](docs/06-catalogo.md): o que cada skill faz e exemplos de pedido
7. [Perguntas frequentes](docs/07-perguntas-frequentes.md)

Também: [modelo de skill](templates/SKILL-modelo.md) · [histórico de mudanças](CHANGELOG.md)

---

## Estrutura do repositório

```
InteligenciaClaude/
├── README.md              ← esta página (Sobre)
├── CHANGELOG.md           ← histórico de versões
├── docs/                  ← manual completo
├── scripts/
│   ├── empacotar.sh       ← gera os .zip de cada skill
│   └── backup.sh          ← backup local (.zip + histórico Git)
├── templates/
│   └── SKILL-modelo.md    ← ponto de partida para novas skills
└── skills/
    └── <nome-da-skill>/
        ├── SKILL.md       ← instruções que o Claude lê
        └── README.md      ← apresentação para pessoas
```

---

## Aviso importante

As skills são **ferramentas de apoio**. Elas produzem rascunhos, pesquisas e orientações, mas **não substituem a análise do advogado responsável**. Confira prazos, valores, leis e jurisprudência nas fontes oficiais antes de protocolar ou enviar qualquer documento.

Nunca coloque dados de clientes (nomes, CPF, processos) dentro dos arquivos das skills: este repositório é público.

---

## Autor

**Carlos A. A. Oliveira** — OAB/PA 33996
Instagram: [@oliveiraCarlosADV](https://www.instagram.com/oliveiracarlosadv) · Site: http://www.oliveiracarlos.adv.br
