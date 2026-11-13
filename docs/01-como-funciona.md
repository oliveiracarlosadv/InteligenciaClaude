# 1. Como funciona

[← Voltar ao início](../README.md)

## O que é uma skill

Uma skill é uma **pasta com um arquivo `SKILL.md`**. Esse arquivo diz ao Claude:

- **quem ele deve ser** naquela tarefa (por exemplo, um advogado tributarista);
- **o que perguntar** antes de começar;
- **como entregar** o resultado (estrutura, linguagem, cabeçalho e rodapé).

É como entregar a um assistente um manual de procedimentos do escritório. Ele lê o manual quando o assunto aparece e segue o que está escrito.

## As duas partes do `SKILL.md`

```markdown
---
name: AdvogadoPrevidenciarioCAAO
description: SKILL especializada em Direito Previdenciário ...
---

# AdvogadoPrevidenciarioCAAO

Você é um especialista em Direito Previdenciário brasileiro ...
```

1. **Cabeçalho (entre os `---`)**: o `name` é o nome da skill e a `description` diz em uma frase quando ela deve ser usada.
2. **Corpo**: as instruções em texto livre, com títulos, listas e exemplos.

## Como o Claude decide usar uma skill

O Claude **não lê todas as skills o tempo todo**. Ele funciona assim:

1. No início da conversa, ele vê apenas o **nome e a descrição** de cada skill instalada.
2. Quando o seu pedido combina com uma descrição (por exemplo, "meu auxílio-doença foi negado"), ele **abre aquela skill** e lê as instruções completas.
3. A partir daí, responde seguindo a skill.

Por isso a `description` é a parte mais importante: se ela for vaga, o Claude pode não perceber que deve usar a skill. Veja dicas em [Criar ou editar uma skill](04-criar-skill.md).

Você também pode **chamar a skill pelo nome**, o que garante que ela será usada. Veja [Como usar](03-como-usar.md).

## O `README.md` de cada pasta

O `README.md` **não é lido pelo Claude** para executar a tarefa. Ele existe para pessoas: explica a skill, o público e exemplos de uso. Quem visita o repositório no GitHub vê esse arquivo ao abrir a pasta.

## Onde as skills funcionam

| Onde | Como instalar |
|---|---|
| Claude normal (claude.ai, no navegador) | Enviando o `.zip` em **Personalizar → Skills** |
| Claude Desktop (Mac/Windows) | Pelo mesmo caminho. Como a conta é a mesma, o que você instalar em um aparece no outro |
| Claude Code | Copiando a pasta para `~/.claude/skills/` ou recebendo automaticamente as skills da conta |

Detalhes em [Instalação](02-instalacao.md).

## Próximo passo

[2. Instalação →](02-instalacao.md)
