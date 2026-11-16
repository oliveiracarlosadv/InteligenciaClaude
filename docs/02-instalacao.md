# 2. Instalação

[← Voltar ao início](../README.md)

- [Baixar somente uma skill](#baixar-somente-uma-skill)
- [Antes de tudo: ativar a execução de código](#antes-de-tudo-ativar-a-execução-de-código)
- [A. Claude normal (navegador, claude.ai)](#a-claude-normal-navegador-claudeai)
- [B. Claude Desktop (app do Mac ou do Windows)](#b-claude-desktop-app-do-mac-ou-do-windows)
- [C. Claude Code](#c-claude-code)
- [D. Atualizar uma skill já instalada](#d-atualizar-uma-skill-já-instalada)
- [E. Remover uma skill](#e-remover-uma-skill)

---

## Baixar somente uma skill

Cada skill tem um **`.zip` pronto**, no formato que o Claude aceita. Clique no link da skill que você quer:

| Skill | Download |
|---|---|
| AdvogadoPrevidenciarioCAAO | [advogadoprevidenciariocaao.zip](https://github.com/oliveiracarlosadv/InteligenciaClaude/releases/latest/download/advogadoprevidenciariocaao.zip) |
| AdvogadoTrabalhistaCAAO | [advogadotrabalhistacaao.zip](https://github.com/oliveiracarlosadv/InteligenciaClaude/releases/latest/download/advogadotrabalhistacaao.zip) |
| AdvogadoTributaristaCAAO | [advogadotributaristacaao.zip](https://github.com/oliveiracarlosadv/InteligenciaClaude/releases/latest/download/advogadotributaristacaao.zip) |
| AssistenteJuridicoCompletoCAAO | [assistentejuridicocompletocaao.zip](https://github.com/oliveiracarlosadv/InteligenciaClaude/releases/latest/download/assistentejuridicocompletocaao.zip) |
| CAAO_DireitoServidorPublicoPA | [caao-direitoservidorpublicopa.zip](https://github.com/oliveiracarlosadv/InteligenciaClaude/releases/latest/download/caao-direitoservidorpublicopa.zip) |
| CIVILISTA_CAAO | [civilista-caao.zip](https://github.com/oliveiracarlosadv/InteligenciaClaude/releases/latest/download/civilista-caao.zip) |
| EscritaHumanaCAAO | [escritahumanacaao.zip](https://github.com/oliveiracarlosadv/InteligenciaClaude/releases/latest/download/escritahumanacaao.zip) |
| JurisprudenciaLeisBRCAAO | [jurisprudencialeisbrcaao.zip](https://github.com/oliveiracarlosadv/InteligenciaClaude/releases/latest/download/jurisprudencialeisbrcaao.zip) |
| JurisprudenciaSearchPro_CAAO | [jurisprudenciasearchpro-caao.zip](https://github.com/oliveiracarlosadv/InteligenciaClaude/releases/latest/download/jurisprudenciasearchpro-caao.zip) |
| RevisaoTecnicaArtigosQuimicaEN | [revisaotecnicaartigosquimicaen.zip](https://github.com/oliveiracarlosadv/InteligenciaClaude/releases/latest/download/revisaotecnicaartigosquimicaen.zip) |
| SocialMediaAdvExpert_CAAO | [socialmediaadvexpert-caao.zip](https://github.com/oliveiracarlosadv/InteligenciaClaude/releases/latest/download/socialmediaadvexpert-caao.zip) |
| SSTSEMSTSegPrev_CAAO | [sstsemstsegprev-caao.zip](https://github.com/oliveiracarlosadv/InteligenciaClaude/releases/latest/download/sstsemstsegprev-caao.zip) |
| resposta-objetiva | [resposta-objetiva.zip](https://github.com/oliveiracarlosadv/InteligenciaClaude/releases/latest/download/resposta-objetiva.zip) |
| especialista-escala-5x2 | [especialista-escala-5x2.zip](https://github.com/oliveiracarlosadv/InteligenciaClaude/releases/latest/download/especialista-escala-5x2.zip) |
| gerador-de-skills-claude-juridicas | [gerador-de-skills-claude-juridicas.zip](https://github.com/oliveiracarlosadv/InteligenciaClaude/releases/latest/download/gerador-de-skills-claude-juridicas.zip) |
| Social Media para ADVs | [social-media-para-advs.zip](https://github.com/oliveiracarlosadv/InteligenciaClaude/releases/latest/download/social-media-para-advs.zip) |
| **Todas as skills** | [todas-as-skills.zip](https://github.com/oliveiracarlosadv/InteligenciaClaude/releases/latest/download/todas-as-skills.zip) |

Os links apontam sempre para a **versão mais recente**. Todas as versões ficam em [Releases](https://github.com/oliveiracarlosadv/InteligenciaClaude/releases).

**Não descompacte** se for usar no Claude normal ou no Desktop: envie o `.zip` do jeito que baixou (veja as seções A e B).

### Outros jeitos de baixar uma skill só

**Pelo site do GitHub, sem `.zip`:**

1. Abra a pasta da skill em [`skills/`](../skills/).
2. Clique em `SKILL.md`.
3. No canto superior direito do arquivo, clique no botão **Download raw file** (ícone de seta para baixo).
4. No seu computador, crie uma pasta com o nome da skill (ex.: `civilista-caao`) e coloque o `SKILL.md` dentro.

**Pelo Terminal (Claude Code):** veja [C. Instalar só uma](#instalar-só-uma).

---

## Antes de tudo: ativar a execução de código

As skills só funcionam com a **execução de código** ligada. Faça isso uma vez só, no Claude normal (navegador) ou no Claude Desktop, porque a configuração vale para a conta inteira:

1. Clique no seu **nome ou nas suas iniciais**, no canto inferior esquerdo.
2. Abra **Configurações** (*Settings*).
3. Entre em **Capacidades** (*Capabilities*).
4. Ligue **Execução de código e criação de arquivos** (*Code execution and file creation*). Nas versões mais novas, o nome é **Criar e editar arquivos** (*Create and edit files*).

> Planos **Team** e **Enterprise**: se a opção não aparecer, peça ao administrador da organização para ativar *Code execution and file creation* e *Skills* em **Configurações da organização → Plugins & skills → Policy**.

As skills funcionam em todos os planos: Free, Pro, Max, Team e Enterprise.

---

## A. Claude normal (navegador, claude.ai)

1. Baixe o `.zip` da skill na [tabela acima](#baixar-somente-uma-skill). **Não descompacte.**
2. Acesse **https://claude.ai** e entre na sua conta.
3. No menu lateral esquerdo, clique em **Personalizar** (*Customize*).
4. Abra a aba **Skills**.
5. Clique no botão **+** e depois em **+ Criar skill** (*+ Create skill*).
6. Escolha **Enviar uma skill** (*Upload a skill*).
7. Selecione o `.zip` baixado e confirme.
8. A skill aparece na lista. Confira se a chave ao lado dela está **ligada**.

Repita do passo 5 ao 8 para cada skill. **Envie uma skill por vez**: o `todas-as-skills.zip` não serve para este envio.

### Testar

Abra uma conversa nova e escreva, por exemplo:

> Use a skill CIVILISTA_CAAO: quais os requisitos da usucapião extraordinária?

Se a skill for usada, a resposta segue o padrão dela, com cabeçalho e rodapé `@oliveiracarlosadv` quando gerar um documento.

---

## B. Claude Desktop (app do Mac ou do Windows)

O Claude Desktop usa **a mesma conta** do navegador. Se você já instalou a skill no claude.ai, ela **já está no app**: não precisa enviar de novo.

Para instalar pelo próprio app:

1. Baixe o `.zip` da skill na [tabela acima](#baixar-somente-uma-skill). **Não descompacte.**
2. Abra o **Claude Desktop**. Se ainda não tem, baixe em https://claude.ai/download.
3. No menu lateral esquerdo, clique em **Personalizar** (*Customize*).
4. Abra a aba **Skills**.
5. Clique em **+** → **+ Criar skill** → **Enviar uma skill** (*Upload a skill*).
6. Selecione o `.zip`. No Mac, ele normalmente está na pasta **Downloads**.
7. Confira se a chave da skill está **ligada**.

### Dicas do app

- **Pela conversa:** no Desktop, você pode pedir ao Claude para ver o `.zip`: arraste o arquivo para a conversa e escreva "o que essa skill faz?". Mas atenção: **arrastar o arquivo para a conversa não instala a skill**. A instalação é só pelo caminho **Personalizar → Skills**.
- **Aba Code:** o Claude Desktop tem a aba **Code**, que é o Claude Code dentro do app. Quem estiver conectado com a mesma conta recebe automaticamente as skills enviadas no claude.ai. Para instalar só no computador, siga a [seção C](#c-claude-code).

### Se você mesmo for montar o `.zip`

O `.zip` deve ter a pasta da skill dentro, com o `SKILL.md`:

```
civilista-caao.zip
└── civilista-caao/
    ├── SKILL.md
    └── README.md
```

**Mac:** botão direito na pasta → **Comprimir**.
**Windows:** botão direito na pasta → **Enviar para** → **Pasta compactada**.

> Os nomes dos menus podem variar um pouco conforme o idioma e a versão do Claude. Em inglês, o caminho é **Customize → Skills → + → Create skill → Upload a skill**.

---

## C. Claude Code

O Claude Code procura skills em duas pastas:

| Pasta | Vale para |
|---|---|
| `~/.claude/skills/` | Todos os projetos do seu computador |
| `.claude/skills/` dentro de um projeto | Só aquele projeto |

### Instalar só uma

Troque `civilista-caao` pelo nome da pasta da skill desejada:

```bash
mkdir -p ~/.claude/skills/civilista-caao && curl -fsSL -o ~/.claude/skills/civilista-caao/SKILL.md https://raw.githubusercontent.com/oliveiracarlosadv/InteligenciaClaude/main/skills/civilista-caao/SKILL.md
```

Ou, com o `.zip` baixado:

```bash
unzip civilista-caao.zip -d ~/.claude/skills/
```

### Instalar todas

```bash
git clone https://github.com/oliveiracarlosadv/InteligenciaClaude.git
```

```bash
mkdir -p ~/.claude/skills && cp -R InteligenciaClaude/skills/* ~/.claude/skills/
```

### Conferir

Abra uma **nova** sessão do Claude Code e digite `/skills`. As skills instaladas aparecem na lista. Sessões que já estavam abertas não enxergam skills novas.

### Skills do claude.ai no Claude Code

Se o Claude Code estiver conectado com a **mesma conta** do claude.ai, as skills enviadas pelo navegador ou pelo Desktop aparecem nele sozinhas, no grupo *claude.ai sync* do comando `/skills`. Isso não funciona quando o Claude Code usa chave de API.

---

## D. Atualizar uma skill já instalada

**Claude normal e Desktop:** em **Personalizar → Skills**, clique na skill, depois em **...** ao lado da chave → **Excluir** (*Delete*). Em seguida, envie o `.zip` novo como na [seção A](#a-claude-normal-navegador-claudeai).

**Claude Code:** rode de novo o comando de [instalar só uma](#instalar-só-uma), ou, se clonou o repositório:

```bash
cd InteligenciaClaude && git pull && cp -R skills/* ~/.claude/skills/
```

Veja o que mudou em cada versão no [CHANGELOG](../CHANGELOG.md).

---

## E. Remover uma skill

**Claude normal e Desktop:** em **Personalizar → Skills**, desligue a chave da skill para pausar, ou clique em **...** → **Excluir** para remover.

**Claude Code:** apague a pasta dela em `~/.claude/skills/`.

---

## Próximo passo

[3. Como usar →](03-como-usar.md)
