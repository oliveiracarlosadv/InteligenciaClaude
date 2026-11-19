# 4. Criar ou editar uma skill

[← Voltar ao início](../README.md)

## Passo a passo

> **Atalho:** a skill [`gerador-de-skills-juridicas`](../skills/gerador-de-skills-juridicas/) pergunta o tipo, o objetivo e a área e escreve o `SKILL.md` para você. Depois é só seguir os passos 2 a 7.

1. Copie o [modelo de skill](../templates/SKILL-modelo.md).
2. Crie uma pasta em `skills/` com o nome da skill em **letras minúsculas e hífens**, por exemplo `skills/direito-consumidor-caao/`.
3. Salve o modelo dentro dela como `SKILL.md` e preencha.
4. Crie um `README.md` na mesma pasta explicando a skill para pessoas.
5. Acrescente a skill na **área certa** do [README principal](../README.md) (seção *Skills por área*; crie uma área nova se nenhuma servir), no [Catálogo](06-catalogo.md) e na [tabela de downloads](02-instalacao.md#baixar-somente-uma-skill).
6. Registre a novidade no [CHANGELOG](../CHANGELOG.md).
7. Teste instalando a skill (veja [Instalação](02-instalacao.md)) antes de divulgar.

## Regras do cabeçalho

```markdown
---
name: direito-consumidor-caao
description: Assistente de Direito do Consumidor para reclamações, ações no JEC, negativação indevida e cobranças abusivas.
version: 1.0.0
author: Carlos A. A. Oliveira
---
```

| Campo | Obrigatório | Regra |
|---|---|---|
| `name` | Sim | Até 64 caracteres, **só** letras minúsculas, números e hífens, igual ao nome da pasta. **Não pode** conter "claude" nem "anthropic" |
| `description` | Sim | Até 1024 caracteres. Diga **o que faz** e **quando usar** |
| `version` | Não | Aumente a cada mudança (1.0.0 → 1.1.0) |
| `author` | Não | Autor da skill |

> Desde a v1.8.0, todas as skills do repositório seguem essa regra: o `name` é igual ao nome da pasta. O nome de exibição (ex.: CIVILISTA_CAAO) pode continuar no título e no texto da skill.

## Como escrever uma boa `description`

É por ela que o Claude decide se vai usar a skill. Seja específico e use as palavras que você usaria no pedido.

| Fraca | Boa |
|---|---|
| "Skill jurídica." | "Direito do Consumidor: reclamações, ações no JEC, negativação indevida, cobranças abusivas e vícios de produto." |
| "Ajuda com textos." | "Revisa e humaniza textos em português brasileiro, corrige gramática e aplica formatação ABNT." |

## Como escrever o corpo

- **Defina o papel**: "Você é um especialista em ...".
- **Liste o fluxo**: o que perguntar primeiro, o que analisar, como entregar.
- **Mostre exemplos** de entrada e saída quando o formato importa (veja a skill `resposta-objetiva`).
- **Escreva regras claras** e evite contradições.
- **Inclua o [Padrão CAAO](05-padrao-caao.md)** de cabeçalho e rodapé, se a skill gerar documentos.
- **Seja conciso**: o Claude lê o arquivo inteiro a cada uso. Instruções longas e repetidas atrapalham.

## O que nunca colocar numa skill

- Dados de clientes ou de processos reais.
- Senhas, tokens ou chaves de acesso.
- Conteúdo copiado de terceiros sem autorização.

O repositório é público: tudo que estiver aqui pode ser lido por qualquer pessoa.

## Editar uma skill existente

1. Altere o `SKILL.md` (e o `README.md`, se necessário).
2. Aumente o `version` no cabeçalho.
3. Registre a mudança no [CHANGELOG](../CHANGELOG.md).
4. Reinstale a skill onde você a usa (veja [Atualizar](02-instalacao.md#c-atualizar-uma-skill-já-instalada)).

---

## Publicar uma nova versão (para o mantenedor)

Depois de enviar as mudanças ao GitHub, gere os `.zip` e publique uma Release para atualizar os links de download:

```bash
./scripts/empacotar.sh
```

```bash
gh release create v1.1.0 dist/*.zip --title "v1.1.0" --notes "Veja o CHANGELOG.md"
```

Os links da [tabela de downloads](02-instalacao.md#baixar-somente-uma-skill) e o destaque **Download da versão mais recente** no README passam a apontar para a nova versão automaticamente. Esse destaque deve ficar sempre no topo do README.

## Próximo passo

[5. Padrão CAAO →](05-padrao-caao.md)
