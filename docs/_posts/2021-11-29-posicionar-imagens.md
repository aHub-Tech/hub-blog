---
author: RodrigoDornelles
title: Como posicionar imagens na postagem?
description: Ajustar imagens no word é chato, mas em nosso blog é uma barbada.
---

> {{ page.description }}


<br/>
<hr/>
<br/>

## Imagem Padrão ##

Por padrão as imagens são centralizadas ajustadas ao tamanho de tela.

![gpl3](../assets/images/gpl3.png)

```MARKDOWN
![exemplo](../assets/images/gpl3.png)
```

<br/>
<hr/>
<br/>

## Texto em volta da imagem ##

![gpl3<](../assets/images/gpl3.png)
Nós podemos escrever texto alinhado a esquerda ou direita da imagem, ocupando metade do tamanho de tela.

```MARKDOWN
Utilize '<' no final do nome da imagem, para simbolizar a direção.
![exemplo<](../assets/images/gpl3.png)
```

<br/>
<hr/>
<br/>

## Imagens lado a lado ##

Também podemos alinhar as imagens lado a lado, separado em duas colunas.

![gpl3><](../assets/images/gpl3.png)
![gpl3><](../assets/images/gpl3.png)
![gpl3><](../assets/images/gpl3.png)
![gpl3><](../assets/images/gpl3.png)

```MARKDOWN
Utilize '><' no final do nome da imagem.

![gpl3><](../assets/images/gpl3.png)
![gpl3><](../assets/images/gpl3.png)
![gpl3><](../assets/images/gpl3.png)
![gpl3><](../assets/images/gpl3.png)
```
