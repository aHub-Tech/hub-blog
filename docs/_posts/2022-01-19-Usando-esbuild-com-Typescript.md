---
author: Em1dio
title: Usando esbuild com Typescript
description: Como utilizar esse bundle para deixar seu build mais rapido.
---

Esses dias estava em [live la na Twitch](https://twitch.tv/em1dio) e um follower(arch1tekt_) estava me perguntando o que uso para fazer o "build" dos meus projetos. 

Estudando sobre o tema achei diversos (grunt, webpack, native) mas o que mais me interessou foi o tal do esbuild. 

Indicado por um colega de trabalho que leva a palavra "desempenho" muito a sério. Resolvi analisar, estudar e aplicar este construtor.

## O que é um builder?
Antes de qualquer coisa podemos afirmar que um bundler é um pacote que tem como objetivo separar a construcao do projeto. Propondo sempre fazer algo de maneira mais completa, segura ou mais rapida.

[Segundo a Wikipedia](https://pt.wikipedia.org/wiki/Builder#:~:text=Builder%20%C3%A9%20um%20padr%C3%A3o%20de,constru%C3%A7%C3%A3o%20possa%20criar%20diferentes%20representa%C3%A7%C3%B5es.)(_que nao deve ser considerada como uma fonte 100% eficaz ok!_)
Builder é um padrão de projeto de software criacional que permite a separação da construção de um objeto complexo da sua representação, de forma que o mesmo processo de construção possa criar diferentes representações.

Para ficar mais claro. Vamos fazer um teste aqui com o esbuild.

## Criar um arquivo typescript basico
Para nosso teste vamos criar um programa super simples e chama-lo de "app.ts" e copie o codigo abaixo se quiser.

```typescript
interface IUser {
   name: string,
   age: number
}
function getName(user: IUser}) {
    return user.name
}

const usuario = {
   name: "Joao das Couves",
   age: 51
}

console.log(getName(usuario))
```

## Sobre o esbuild
De acordo com o [site oficial](url), o esbuild é um empacotador JavaScript extremamente rápido (_"An extremely fast JavaScript bundler"_). E sou obrigado a concordar. Fiz testes com codigos pequenos, medios e grandes e o resultado foi surpreendente.

### Instalando o esbuild
Vamos instalar o esbuild de maneira Global.

```bash
npm i -g esbuild
```

### Testando esbuild
Ao rodar esbuild no terminal voce deve receber essa infomacao.
```bash
PS C:\Users\Em1dio> esbuild

Usage:
  esbuild [options] [entry points]

Documentation:
  https://esbuild.github.io/

Repository:
  https://github.com/evanw/esbuild
...
```

### Configurar o esbuild
Aqui vai a melhor resposta de todas! Depende!
Depende do que? Do ambiente que voce esta querendo construir.

Indico para ambientes de desenvolvimento e homologacao
cria um arquivo chamado "esbuild.js" e coloque esse campo.
```javascript
const esbuild = require('esbuild');

esbuild.build({
    entryPoints: ['app.ts'],
    outfile: 'out/app.js',
    bundle: true,
    minify: true,
    sourcemap: true,
    platform: 'node',
    target: 'node14'
}).catch(() => process.exit(1));
```

Caso queira saber o que cada informacao dentro desse build significa, indico muito ler [a documentação](https://esbuild.github.io/api/#build-api).

### Executar a build
```bash
node esbuild.js
```
Mas para facilitar voce pode colocar um script no seu "package.json"

```json
{
    "name": "enterpryze-middleware",
    "description": "Enterpryze Middleware/API",
    "version": "1.21.1213.1",
    "scripts": {
        "build":"node esbuild"
    }
}
```

Ao coloca no _package.json_ podemos apenas executar no bash
```cmd
npm run build
```


## Executar seu codigo
Com tudo pronto vamos executar e ver isso ai funcionando!
```bash
node esbuild.js
node out/app.js
```

