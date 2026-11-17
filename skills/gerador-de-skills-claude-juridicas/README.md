# gerador-de-skills-claude-juridicas

Skill que **cria outras skills**. O Claude atua como engenheiro de prompts e arquiteto de Skills: pergunta o que você quer e devolve um arquivo `SKILL.md` completo, pronto para salvar e instalar.

## Como funciona

1. Ao ser acionada, a skill pergunta:

   > QUAL O TIPO DE Skill você quer criar?
   >
   > Por favor, informe:
   > - O tipo de Skill
   > - O objetivo da Skill
   > - A área de atuação da Skill

   Se você já mandar essas informações junto com o pedido, ela gera direto.

2. Em seguida, entrega **só o conteúdo do arquivo**, começando pela linha `---`, sem explicações e sem blocos de código em volta.

## Estrutura do SKILL.md gerado

1. **YAML Frontmatter:** `name` (em kebab-case), `description`, `version`, `author`, `location` e `tagline`
2. Título da Skill
3. Identidade
4. Função
5. Conhecimentos especializados
6. Objetivo
7. Processo de análise
8. Regras operacionais
9. Padrão de resposta
10. Exemplos práticos (entrada e saída)
11. Assinatura: *Criado por Dr. Carlos A. A. Oliveira (@oliveiracarlosadv) · Belém-PA, Brasil · De advogado para advogado.*

## Exemplos de pedido

- "Tipo: assistente de peças. Objetivo: elaborar contratos de prestação de serviços. Área: Direito Civil."
- "Crie uma Skill especialista em marketing jurídico."
- "Crie uma Skill para consultoria tributária de pequenas empresas."

## Depois de gerar

1. Salve o texto como `SKILL.md` dentro de uma pasta com o mesmo nome do campo `name` (ex.: `contratos-prestacao-servicos/SKILL.md`).
2. Compacte a pasta em `.zip` e envie ao Claude em **Personalizar → Skills** (veja o [guia de Instalação](../../docs/02-instalacao.md)).
3. Para publicar neste repositório, siga [Criar ou editar uma skill](../../docs/04-criar-skill.md).

**Dica:** revise a `description` da skill gerada. É por ela que o Claude decide quando usar a skill.

---

Criado por Dr. Carlos A. A. Oliveira (@oliveiracarlosadv)
Belém-PA, Brasil
De advogado para advogado.
