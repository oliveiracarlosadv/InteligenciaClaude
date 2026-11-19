# 7. Perguntas frequentes

[← Voltar ao início](../README.md)

### Preciso saber programar?

Não. As skills são textos em Markdown. Para instalar no Claude normal ou no Desktop, basta baixar o `.zip` e enviar. Veja [Instalação](02-instalacao.md).

### Instalei no navegador. Preciso instalar de novo no Claude Desktop?

Não. O Claude normal e o Claude Desktop usam a mesma conta, então a skill aparece nos dois.

### Não acho o menu "Personalizar"

Atualize o app ou recarregue a página. Em inglês, o menu se chama **Customize**. Se mesmo assim não aparecer e você usa um plano Team ou Enterprise, peça ao administrador para liberar as skills.

### Posso instalar todas ao mesmo tempo?

Sim. O Claude só abre a skill que combina com o seu pedido, então ter várias instaladas não atrapalha.

### A skill não foi usada. O que fazer?

1. Confira se a **execução de código** está ligada em Configurações → Capacidades.
2. Confira se a chave da skill está **ligada** em Personalizar → Skills (Claude normal e Desktop) ou se a skill está na pasta `~/.claude/skills/` (Claude Code).
3. No Claude Code, abra uma **sessão nova**.
4. Chame pelo nome: "Use a skill civilista-caao para ...".

### Erro "Skill name in SKILL.md cannot contain the reserved word 'claude'"

O campo `name` da skill não pode conter "claude" nem "anthropic", e deve ter só letras minúsculas, números e hífens. Isso foi corrigido na v1.8.0: baixe de novo o `.zip` no topo do README. O gerador de skills passou a se chamar `gerador-de-skills-juridicas`.

### Erro "O arquivo deve conter um manifesto .claude-plugin/plugin.json, ou um SKILL.md de nível superior"

O arquivo enviado não tem um `SKILL.md` na raiz, por exemplo o `todas-as-skills.zip`, que é um pacote de pacotes. Descompacte-o e envie os `.zip` de dentro, **um por vez**, em **Personalizar → Skills**.

### Deu erro ao enviar o `.zip`

- O `.zip` deve conter o `SKILL.md` na raiz (é assim que vêm os `.zip` deste repositório).
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
