# 7. Perguntas frequentes

[← Voltar ao início](../README.md)

### Preciso saber programar?

Não. As skills são textos em Markdown. Para instalar no Claude.ai basta compactar uma pasta e enviar. Veja [Instalação](02-instalacao.md).

### Posso instalar todas ao mesmo tempo?

Sim. O Claude só abre a skill que combina com o seu pedido, então ter várias instaladas não atrapalha.

### A skill não foi usada. O que fazer?

1. Confira se ela está **ativada** (Claude.ai) ou na pasta `~/.claude/skills/` (Claude Code).
2. No Claude Code, abra uma **sessão nova**.
3. Chame pelo nome: "Use a skill CIVILISTA_CAAO para ...".

### Deu erro ao enviar o `.zip` no Claude.ai

- O `.zip` deve conter **a pasta da skill**, e o `SKILL.md` precisa estar dentro dela.
- Envie **uma skill por `.zip`**.
- O cabeçalho do `SKILL.md` precisa ter `name` e `description` entre as linhas `---`.

### As jurisprudências e leis citadas são confiáveis?

As skills foram escritas para buscar fontes oficiais e informar número e link. Mesmo assim, **sempre abra o link e confira** antes de usar numa peça: a IA pode errar números, datas ou resumos.

### Posso usar as skills com dados de clientes?

Pode conversar sobre o caso no Claude, com o cuidado de compartilhar só o necessário. O que **não pode** é gravar dados de clientes dentro dos arquivos deste repositório, que é público.

### Posso alterar uma skill para o meu escritório?

Sim. Baixe a pasta, edite o `SKILL.md` (por exemplo, troque o rodapé) e instale a sua versão. Veja [Criar ou editar uma skill](04-criar-skill.md).

### Como sei se há versões novas?

Acompanhe o [CHANGELOG](../CHANGELOG.md) ou clique em **Watch** no topo da página do repositório no GitHub.

### As skills substituem o advogado?

Não. Elas produzem rascunhos e orientações de apoio. A revisão e a responsabilidade final são sempre do advogado.

---

Dúvidas: Instagram [@oliveiraCarlosADV](https://www.instagram.com/oliveiracarlosadv) · http://www.oliveiracarlos.adv.br
