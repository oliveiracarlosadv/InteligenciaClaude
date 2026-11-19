# 3. Como usar

[← Voltar ao início](../README.md)

## Jeito 1: pedir normalmente

Depois de instalada, basta conversar. Se o pedido combinar com a skill, o Claude a usa sozinho.

> Tenho 62 anos e 20 anos de contribuição. Já posso me aposentar?

Aqui o Claude reconhece o tema e usa a **AdvogadoPrevidenciarioCAAO**.

## Jeito 2: chamar pelo nome (recomendado)

Para ter certeza de qual skill será usada, cite o nome dela:

> Use a skill civilista-caao e elabore uma contestação em ação de cobrança.

No Claude Code, você também pode digitar `/` seguido do nome da skill.

## O que esperar

A maioria das skills deste repositório segue o mesmo roteiro:

1. **Perguntas iniciais**: a skill pede os dados que faltam (área, partes, datas, prazos, documentos). Responda tudo o que souber; quanto mais detalhe, melhor o resultado.
2. **Análise**: explica o caso com base na lei, na doutrina e na jurisprudência.
3. **Entrega**: o documento ou a resposta, com cabeçalho e rodapé no [Padrão CAAO](05-padrao-caao.md).
4. **Próximos passos**: o que fazer a seguir.

## Combinar skills

Você pode pedir duas skills juntas:

> Use a JurisprudenciaSearchPro_CAAO para buscar decisões do TRT8 sobre horas extras de bancário e depois a EscritaHumanaCAAO para revisar o texto final.

## Boas práticas

- **Dê contexto**: tribunal, cidade, datas e o objetivo do pedido.
- **Anexe documentos** quando tiver (decisão, contrato, carta do INSS), sempre sem compartilhar mais dados pessoais do que o necessário.
- **Peça ajustes**: "mais curto", "linguagem para o cliente", "inclua tutela de urgência".
- **Confira sempre**: números de processo, links de jurisprudência, prazos e valores devem ser verificados nas fontes oficiais antes de usar.

## Exemplos por skill

Veja pedidos prontos para cada skill no [Catálogo](06-catalogo.md).

## Próximo passo

[4. Criar ou editar uma skill →](04-criar-skill.md)
