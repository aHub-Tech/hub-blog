---
author: Nelson Saraiva
title: Me aventurando num mundo descentralizado - Parte 1
description: Minha tentativa de te explicar sobre Blockchain
---

Tenho certeza que você já ouviu falar de criptomoedas, Bitcoin e Blockchain. Estão em todos os lugares. Mesmo quem nunca investiu uma criptomoeda se quer, quem nunca minerou um bloco e nem sabe o que significa, já ouviu isso em algum lugar. Essas palavras aparecem na TV, no rádio, na Internet e nas redes sociais.
Até pouco tempo, eu também não conhecia muita coisa sobre o assunto. Comecei a estudar alguns meses atrás, e estou começando a entender esse ecossistema e tudo que envolve esse novo _mundo descentralizado_. Fiquei tão encantado com isso, que passei a ser aquele cara chato, que sempre que vê uma brecha, puxa o papo pra falar de blockchain ou algo relacionado, seja nas conversas presenciais, nas comunidades, no trabalho. 😅 
Por esse motivo, muitos vem tirar dúvidas, pedem para escrever  sobre o assunto, e até pedem algum tipo de apresentação.
Estou muito longe de ser um especialista no assunto, nem um aplicativo na blockchain eu fiz ainda&mdash; e essa ainda é a primeira vez que escrevo um artigo. 😬
Resolvi aceitar esse desafio e vou começar uma série de artigos, onde colocarei tudo que estou aprendendo, à medida que for estudando. Vou tentar passar de uma maneira clara e de fácil compreensão, onde qualquer um possa entender.

**Então, vamos começar a 1ª parte dessa jornada…** 😨

## Explica logo esse tal de Blockchain!

_Blockchain é uma corrente de blocos. Pronto, falei!_

Parece brincadeira, mas é isso mesmo. Pense num bloco, que está preso ao bloco anterior, que também está preso a outro bloco, que está preso a um… adivinha? Bloco.
Toda vez que um bloco novo é aceito, ele é colocado “logo após” o bloco anterior.

![Blockchain](https://raw.githubusercontent.com/nsaraiva/posts/main/aHub-Tech/images/blockchain.png)

Vamos voltar um pouco, e aprender porque esses blocos são assim.

Blockchain é uma planilha que contém a lista de todas as transações que já foram feitas na rede. Essa rede é **_descentralizada_**, isso quer dizer que os computadores participantes (nós) não precisam se conectar a um servidor central, que irá gerenciar todo o tráfego da rede.

![decentralized network](https://raw.githubusercontent.com/nsaraiva/posts/main/aHub-Tech/images/decentralized_network.png)
 
Além disso, uma cópia da planilha, com as transações, também é distribuída para cada nó. Quando uma nova transação é adicionada a esta planilha, cada um recebe essa nova transação e ela é adicionada a sua cópia.

![distributed network](https://raw.githubusercontent.com/nsaraiva/posts/main/aHub-Tech/images/distributed_network.png)

Como cada nó é independente, a rede fica bem mais segura, e não havendo um servidor único os ataques precisam ser bem mais complexos. Um ataque de DDoS, numa rede desse tipo, só seria possível caso o poder de processamento do atacante fosse maior do que toda rede.

Existem blockchains privados que têm o acesso restrito, e públicos que são aqueles do qual qualquer um pode participar, exemplo do Bitcoin.

## E o que seriam essas transações?
Pensando na blockchain como um enorme banco de dados distribuído, uma transação é a inclusão de um registro nesse banco de dados. Uma vez incluídos, esses registros não sofrem mais alterações ou exclusões&mdash; Os dados  são imutáveis.
Todos os tipos de transações podem ser armazenadas na blockchain. Uma transação que atribui propriedade de direitos autorais a uma música, ou mesmo uma transação que emite um diploma para o Pedro da USP em Ciências da Computação.
Os tipos mais comuns são as financeiras, utilizando criptomoedas como o Bitcoin.

## E os blocos? Até agora não vi nada de bloco.
Uma _transação_ possui várias informações, que são diferentes dependendo do tipo. No caso de uma transação de Bitcoins, existem informações sobre de onde vem o Bitcoin, para onde ele vai e a quantidade de moedas. Esses dados são colocados dentro de um _bloco_.
Para compor um bloco, precisamos colocar, além dos dados das transações, mais  algumas informações:

**_Hash_** - É um algoritmo matemático usado para criptografia, na qual ocorre uma transformação do dado, como o conteúdo de um bloco, em um conjunto alfanumérico com comprimento fixo de caracteres.

O _hash_ é como se fosse a impressão digital do bloco. Ele é único, e identifica o bloco e seu conteúdo. Qualquer alteração nesse conteúdo fará com que o hash mude, o que é muito útil. Alterando essa impressão digital o bloco já não é mais o mesmo&mdash; O bitcoin utiliza o algoritmo de hash SHA-256.

**_Hash do bloco anterior_** - Também é armazenado nesse novo bloco, a hash que foi gerada no bloco anterior, criando assim uma _corrente de blocos_&mdash; Opa! já ouvi isso em algum lugar. 😉

Então, para criar um bloco válido, eu tenho que ter os _dados das transações_, o _hash do bloco atual_ e o _hash do bloco anterior_.

Funciona mais ou menos assim:<br>
Cada bloco tem seu hash e o hash do bloco anterior. 

![blockchain and Hashes](https://raw.githubusercontent.com/nsaraiva/posts/main/aHub-Tech/images/blockchain2.png)

Na figura acima, o bloco 3 aponta para o bloco 2 e o bloco 2 aponta para o bloco 1. E o bloco 1? ele não está apontando para nenhum hash. Isso porque ele é o 1º bloco, não existe bloco anterior. Ele é um bloco especial, chamado de **_Bloco Gênesis_**.
Agora vamos supor que um hacker altere o conteúdo do bloco 2. Lembra que quando o conteúdo de um bloco é alterado, o seu hash também altera? Isso fará com que o bloco 3 e os blocos seguintes, sejam invalidados. Eles não terão mais um hash anterior válido.

>Mas aí você me diz: _“Um hacker pode recalcular todos os hashes dos blocos seguintes!”_<br>
Eu te digo: _“Pode! Hoje, com o poder computacional que temos, podemos recalcular tudo em segundos.”_ 

Para evitar que isso aconteça, existe um mecanismo que retarda a criação de novos blocos, é o chamado _Proof of work_&mdash; Prova de trabalho.

No caso do Bitcoin, uma prova de trabalho leva ± 10 minutos&mdash; Quer dizer que um bloco novo é validado a cada 10 minutos.
É praticamente impossível alterar alguma transação que já tenha sido incluída em um bloco. A alteração exigiria um recálculo de hash não só do bloco alterado, mas de todos os demais que venham após ele. 

Esse hacker precisaria refazer a prova de trabalho para todos os blocos seguintes. Este recálculo deveria ocorrer antes que acrecentassem novos blocos à rede, algo que acontece com grande frequência. Deu ruim, né? 😬

**_Vou terminar por aqui gente, na parte 2 irei escrever sobre o Proof of work. Vlw pessoal!_** 
