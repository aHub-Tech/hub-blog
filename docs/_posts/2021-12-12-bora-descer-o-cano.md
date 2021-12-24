---
author: vcwild
title: Bora descer pelo cano?
description: Vamos brincar um pouco de programação funcional em Python
---

## Pipelines

Já se pegou tentando descobrir como funcionam pipelines? Claro que não né, pois é. Mas mesmo assim eu vou te ensinar, até porque é bem legal, confia.

Hoje vamos descer pelo cano e aprender um pouquinho de programação funcional, descobrindo uma forma diferente de lidar com código.

### Mas o que significa um pipeline?

Imagina que uma pipeline é um conjunto de operações a serem executadas em sequência e que a saída da primeira operação é o argumento de entrada da segunda e assim por diante até chegar na saída final.

`entrada -> transformação1 -> transformação2 -> ... -> transformaçãoN -> saída`

Podemos tomar como exemplo quando a gente interage com o terminal.

Se executamos duas operações encadeadas, o terminal vai executar a primeira e usar a saída dela para executar a segunda, que também terá retorno.

Exemplo: usar o comando `echo` para retornar a palavra "Hello world", desencadear com `|` (pipe) a segunda operação `wc` que conta o número de caracteres sendo recebidos.

```bash
$ echo "Hello World" | wc -c

Saída >> 11
```

Muito legal, né? Aliás, se você quiser aprender um pouquinho mais sobre como funciona o pipeline no terminal, sugiro [esse](https://www.vivaolinux.com.br/artigo/Pipelines-\(Canalizadores\)) post.

Agora vamos pegar essa mesma ideia e aplicar no Python.

### Fazendo isso da forma mais simples

Primeiramente vamos inventar um conjunto qualquer de funções que serão usadas como transformações:

```python
def double(x):
    """duplica o valor de x"""
    return x * 2

def increment_one(x):
    """incrementa x em 1"""
    return x + 1

def decrement_one(x):
    """decrementa x em 1"""
    return x - 1
```

Primeiramente vamos fazer na mão a sequências de operações pra trazer o contexto do que estamos tentando executar:

```python
input = 2

output = double(input)
output = increment_one(output)
output = decrement_one(output)
```

Ao ler o output vamos ter como resposta `4`:

```python
>>> output
4
```

E isso se configura como um pipeline.

Bem simples, não achou? Beleza, mas agora vamos fazer de um jeito mais elaborado.

### Dando uma incrementada

Imagina que temos uma classe `Pipeline` que tem um método de inicialização `__init__` que recebe uma sequência de funções `funcs` e armazena todas elas no atributo `self.funcs`.

```python
class Pipeline:
    def __init__(self, *funcs):
        self.funcs = funcs
```

Observe que usamos o operador `*` para [desempacotar](https://www.alura.com.br/artigos/entendendo-o-desempacotamento-no-python) e passar uma sequência de funções para o atributo `self.funcs`.

Agora vamos incrementar essa classe, colocando um método de chamada `__call__` que recebe um argumento `arg` e itera sobre todas as funções `self.funcs` pegando a entrada de cada uma e passando adiante a saída para a próxima e ao final retornando o resultado da última função.

```python
class Pipeline:
    def __init__(self, *funcs):
        self.funcs = funcs

    def __call__(self, arg):
        for func in self.funcs:
            arg = func(arg)
        return arg
```

Legal! Agora vamos criar uma instância da classe `Pipeline` e armazenar nossas funções no atributo `self.funcs`.

```python
pipeline = Pipeline(double, increment_one, decrement_one)
```

Agora vamos `evocar()` a instância e passar um argumento arbitrário `2` para ela e armazenar o resultado em uma variável `output`.

```python
output = pipeline(arg=2)
```

Teremos a resposta `4` novamente.

### Mas o que aconteceu?

Nós executamos a sequência de operações declaradas em ordem, passando o resultado da operação anterior para a próxima até chegar no final.

`2 -> double() -> increment_one() -> decrement_one() -> 4`

Essa abordagem é muito interessante, porque nós protegemos o cliente que for consumir esse módulo de fazer uma sequência de operações incorreta e de alterar o resultado no meio do caminho.

### Conclusão

Você também pode acompanhar [esse vídeo](https://www.twitch.tv/videos/1242247269), onde fizemos isso em live-coding.

Agora sabemos o que é um pipeline e de quebra aprendemos alguns conceitos básicos de programação funcional. Espero que você tenha curtido o conteúdo. Qualquer dúvida ou sugestão, manda lá no [Twitter](https://twitter.com/vcwild) e me siga na [Twitch](https://www.twitch.tv/vcwild).

Grande abraço e até a próxima!
