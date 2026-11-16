# gerador-de-skills-claude-juridicas

Skill que **cria outras skills**. Você descreve em uma frase a skill que quer, e o Claude devolve um arquivo `SKILL.md` completo, pronto para salvar e instalar.

## O que ela entrega

Um `SKILL.md` que começa direto pelo cabeçalho YAML (`name`, `description`, `version`, `author`, `location`, `tagline`) e traz, nesta ordem:

1. Título
2. Identidade
3. Função
4. Conhecimentos especializados
5. Objetivo
6. Processo de análise
7. Regras operacionais
8. Padrão de resposta
9. Exemplos práticos
10. Assinatura: *Criado por Dr. Carlos A. A. Oliveira (@oliveiracarlosadv) · Belém-PA, Brasil · De advogado para advogado.*

## Como usar

Ao começar, a skill **sempre pergunta primeiro** que tipo de skill você quer criar, pedindo:

- área da skill
- objetivo principal
- público-alvo
- forma de resposta desejada
- regras específicas

Mesmo que você diga só "Crie uma Skill", ela pergunta antes de gerar. Depois de receber as informações, entrega o arquivo. Exemplos de descrição:

- "Crie uma Skill para elaboração de contratos."
- "Crie uma Skill especialista em marketing jurídico."
- "Crie uma Skill para consultoria tributária."

A resposta é **só o conteúdo do arquivo**, sem explicações. Depois:

1. Salve o texto como `SKILL.md` dentro de uma pasta com o mesmo nome do campo `name` (ex.: `contratos-empresariais/SKILL.md`).
2. Compacte a pasta em `.zip` e envie ao Claude em **Personalizar → Skills** (veja o [guia de Instalação](../../docs/02-instalacao.md)).
3. Se quiser publicar no repositório, siga [Criar ou editar uma skill](../../docs/04-criar-skill.md).

## Dica

Revise a skill gerada antes de usar: confira se a `description` diz claramente quando a skill deve ser acionada, porque é por ela que o Claude decide usá-la.

---

Criado por Dr. Carlos A. A. Oliveira (@oliveiracarlosadv)
Belém-PA, Brasil
De advogado para advogado.
