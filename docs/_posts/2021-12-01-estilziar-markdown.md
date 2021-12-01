---
author: RodrigoDornelles
title: Como estilizar em markdown
description: Linguagem de marcação muito útil, aprenda como utilizar markdown.
---

Escrever em markdown pode parecer limitante, mas é pratico e rápido, para escrever algo formal ou caso for criativo ao misturar marcações pode fazer algo bem legal. aprenda o básico para se escrever textos em markdown.

## Ênfase ##

_Popularmente apelidado de "negrito"_, você pode destacar uma palavra ou frase utilizando **dois asteriscos** de cada lado.

```MARKDOWN
**dois asteriscos**
```

## Itálico ##

Para utilizar texto em itálico um _underline_ de cada lado.

```MARKDOWN
_underline_
```

## Links ##

Você pode adicionar links de duas maneiras diferentes, tanto um nome para link quanto apenas a url, veja os dois exemplos:

```MARKDOWN
[Site da hub](https://ahub.tech)

<https://ahub.tech>
```

[Site da hub](https://ahub.tech)

<https://ahub.tech>

## Imagens ##

As imagens são semalhantes a adicionar links com nomes, única diferença é que você precisa adicionar o caracter exclamação antes `!`.

* Veja a respectiva postagem para aprender a alinhar imagens em nosso blog: <https://blog.ahub.tech/posicionar-imagens/>

```MARKDOWN
![gpl3](../assets/images/gpl3.png)
```

![gpl3](../assets/images/gpl3.png)

## Listas ##

Para criar listas você precisa adicionar o caracter asterisco `*` antes de cada termo.

```
 * Foo
 * Bar
 * Z
```

 * Foo
 * Bar
 * Z

## Lista de tarefas ##

Semelhante de como escrever a lista, para exibir um checkbox você deve usar conchetes com espaço no meio `[ ]` para desmarcado, ou com um _X_ para marcado `[X]`.

```
 - [X] Criar um blog
 - [X] Postar no blog
 - [ ] Expropriar os meios de desenvolvimento
```

 - [X] Criar um blog
 - [X] Postar no blog
 - [ ] Expropriar os meios de desenvolvimento

## Tabelas ##

Para construir tabelas é muito simples, as coluna são separadas pelo caracter _pipe_ `|`. Sendo que a primeira linha é identificada como legenda, segunda faz a configuração das celulas e apartir, cada linha individual da tabela.

* Utilize `:` a esquerda ou direita para um alinhar horizontalmente em um lado, e nos dois lados para centralizar no centido horizontal.

```MARKDOWN
| Legenda | Legenda | Legenda |
| :------ | :-----: | ------: |
| foo | bar | z |
| foo | bar | z |
```

| Legenda | Legenda | Legenda |
| :------ | :-----: | ------: |
| foo | bar | z |
| foo | bar | z |

## Nível de texto ##

Não vou exemplificar aqui para não quebrar o layout da pagina, mas é algo bem simples, o numero de _hashtags_ determina se é primario, secundário...

```MARKDOWN
# Texto nível 1 #

## Texto nível 2 ##

### Texto nível 3 ###

#### Texto nível 4 ####

##### Texto nível 5 #####
```
