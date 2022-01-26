---
author: Em1dio
title: Criando Relatorios CSV com VueJs/NuxtJs
description: Como fazer  relatorios csv de maneira facil e rapida com Vuejs/Nuxtjs.
---

Para quem me acompanha na [Twitch](https://twitch.tv/em1dio) sabe que eu estou fazendo um projeto financeiro. (Já fica a propaganda, lives de segunda a quinta das 17h as 20h).

Uma dos recursos que mais tive vontade de implementar, seria guardar relatórios em formato csv.

## Solução Encontrada
Estava procurando solucões e encontrei essa [vue-json-to-csv](https://www.npmjs.com/package/vue-json-to-csv)

Gostei por que é simples e fica facil.

## instalacao

Como qualquer projeto basta usar o npm
```bash
npm install vue-json-csv
```

ou o yarn ...
```bash
yarn add vue-json-csv
```

## Utilizando no VueJs

```html
<download-csv
    :data= "json_data">
    Download Data
    <img src="download_icon.png">
</download-csv>
```

```js

// Essas 3 próximas linhas sao necessárias apenas dentro do vuejs.
// No nuxt isso ja é incluido/renderizado no plugin. 
// (Basicamente, é so sair usando)
import Vue from 'vue'
import JsonCSV from 'vue-json-csv'

Vue.component('downloadCsv', JsonCSV)

const app = new Vue({
    el: '#app',
    data: {     
        json_data: [
            {
                'name': 'joe',
                'surname': 'Roe',
            },
            {
                'name': 'john',
                'surname': 'Doe',
            }
        ]
    }
})

```

## Usando no Nuxt.js
Para usar dentro do Nuxt.js temos que colocar alguns passos a mais.

## Criar um plugin

```js
// ../plugins/jsonToCsv.js

import Vue from 'vue'
import JsonCSV from 'vue-json-csv'
 
Vue.component('downloadCsv', JsonCSV)
```

## Atualizar o nuxt.config.js
```js
// nuxt.config.js
// incluir dentro de plugins

  plugins: ['~plugins/jsonToCsv.js'],
```
## Resultado
Se baseando na documentacao oficial o resultado do .csv seria

Nome do Arquivo: My_CSV.csv
```csv
name,surname
joe,Roe
john,Doe
```

link do pacote para mais detalhes[
](https://www.npmjs.com/package/vue-json-csv)
