![](https://img.shields.io/github/license/gabuldev/bootstrap_flutter?style=flat)
![](https://img.shields.io/github/issues/gabuldev/bootstrap_flutter?style=flat)
[![codecov](https://codecov.io/gh/gabuldev/bootstrap_flutter/branch/main/graph/badge.svg?token=R2S8PLJ8EG)](https://codecov.io/gh/gabuldev/bootstrap_flutter)
[![pub package](https://img.shields.io/pub/v/bootstrap_flutter.svg)](https://pub.dev/packages/bootstrap_flutter)

# Intro

Package criado para facilitar o uso do Flutter em multiplos tamanhos de telas. Com esse package você vai conseguir fazer que o mesmo layout tenha comportamentos diferentes para dispositivos, mobile, tablet, web e desktop.

![enter image description here](https://media.giphy.com/media/C1gGS7DYyB9N8x4XEV/giphy.gif)

# Conceitos

Utilizamos da padronização do bootstrap para fazer a arranjo das telas de forma simples através de uma simples string;

| Size      | Type    | Tag | Column | Divisions |
| --------- | ------- | --- | ------ | --------- |
| <768px    | Mobile  | xs- | auto   | 12        |
| >= 768px  | Tablet  | sm- | ~62px  | 12        |
| >= 992px  | Web     | md- | ~81px  | 12        |
| >= 1200px | Desktop | lg- | ~97px  | 12        |

# Utilização

Para utilizar o **bootstrap** em sua página basta usar nosso widget **ScaffoldBootstrap** como pai dos widgets de sua tela.

```dart
return ScaffoldBootstrap(children: <Component>[]);
```

Precisamos agora criar os components responsivos e seus respectivos comportamentos

```dart
return ScaffoldBootstrap(children: [
  Component(style: "lg-4 md-4 sm-4 xs-4 xs:h\4", child: YourWidget())
]);
```

Nesse exemplo acima estamos dizendo que queremos usar 4 partes das 12 disponíveis na tela para todos os tipos de tela, mas quando for uma tela xs queremos que ocupe 1/4 da altura da tela ( deixando o widget menor quando está na tela de um dispositivo mobile por exemplo).

- Você pode definir a altura máxima para todos os tipos de tela, para isso basta definir qual tela quer adicionar essa propriedade e depois adicionar os dois pontos.

```dart
xs:h/4
xs:h*2
md: h*3
```

# Importante

Esse package está na sua primeira versão, então pedimos para reportarem todas as issues o mais rápido possível ou subir uma correção para deixarmos o mais alinhado e utilizável possível.

# Agradecimento

Package desenvolvimento por Gabul Dev, qualquer coisa só chamar nas redes sociais para tirar dúvidas
