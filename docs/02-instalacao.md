# 2. Instalação

[← Voltar ao início](../README.md)

- [Baixar somente uma skill](#baixar-somente-uma-skill)
- [A. Claude.ai e app Claude](#a-claudeai-e-app-claude)
- [B. Claude Code](#b-claude-code)
- [C. Atualizar uma skill já instalada](#c-atualizar-uma-skill-já-instalada)
- [D. Remover uma skill](#d-remover-uma-skill)

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
| **Todas as skills** | [todas-as-skills.zip](https://github.com/oliveiracarlosadv/InteligenciaClaude/releases/latest/download/todas-as-skills.zip) |

Os links apontam sempre para a **versão mais recente**. Todas as versões ficam em [Releases](https://github.com/oliveiracarlosadv/InteligenciaClaude/releases).

**Não descompacte** se for usar no Claude.ai ou no app: envie o `.zip` do jeito que baixou (veja a seção A).

### Outros jeitos de baixar uma skill só

**Pelo site do GitHub, sem `.zip`:**

1. Abra a pasta da skill em [`skills/`](../skills/).
2. Clique em `SKILL.md`.
3. No canto superior direito do arquivo, clique no botão **Download raw file** (ícone de seta para baixo).
4. No seu computador, crie uma pasta com o nome da skill (ex.: `civilista-caao`) e coloque o `SKILL.md` dentro.

**Pelo Terminal (Claude Code):** veja [B. Instalar só uma](#instalar-só-uma).

---

## A. Claude.ai e app Claude

O Claude.ai (navegador) e o app Claude (Mac/Windows) usam a mesma conta. Instalando em um, a skill aparece no outro.

> Os nomes dos menus podem mudar um pouco conforme a versão do Claude e o seu plano.

1. Baixe o `.zip` da skill na [tabela acima](#baixar-somente-uma-skill).
2. No Claude, abra **Configurações** (clique no seu nome ou nas iniciais).
3. Vá em **Capacidades** (*Capabilities*).
4. Na área **Skills**, clique em **Enviar skill** (*Upload skill*).
5. Escolha o `.zip` baixado.
6. Confirme que a skill aparece na lista e está **ativada**.

Repita para cada skill que quiser. O arquivo `todas-as-skills.zip` serve para guardar ou para o Claude Code. No Claude.ai, envie **uma skill por vez**.

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

---

## B. Claude Code

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

Abra uma **nova** sessão do Claude Code e pergunte: "Quais skills você tem disponíveis?". Sessões que já estavam abertas não enxergam skills novas.

---

## C. Atualizar uma skill já instalada

**Claude.ai / app:** exclua a skill antiga em Configurações → Capacidades → Skills e envie o `.zip` novo.

**Claude Code:** rode de novo o comando de [instalar só uma](#instalar-só-uma), ou, se clonou o repositório:

```bash
cd InteligenciaClaude && git pull && cp -R skills/* ~/.claude/skills/
```

Veja o que mudou em cada versão no [CHANGELOG](../CHANGELOG.md).

---

## D. Remover uma skill

**Claude.ai / app:** Configurações → Capacidades → Skills → desative ou exclua a skill.

**Claude Code:** apague a pasta dela em `~/.claude/skills/`.

---

## Próximo passo

[3. Como usar →](03-como-usar.md)
