---
layout: post
title: "Apache Cordova"
date: 2016-12-18 14:41:43 +0100
permalink: /apache-cordova/
description: "Pongámonos en situación, somos programadores y queremos hacer un software para todas las plataformas móviles (Android, iOS, Windows, blackberry, etc.) así como para los ordenadores (Linux, Mac,..."
categories: ["Rendimiento y Aplicaciones"]
---

Pongámonos en situación, somos programadores y queremos hacer un software para todas las plataformas móviles (Android, iOS, Windows, blackberry, etc.) así como para los ordenadores (Linux, Mac, Windows, etc.) ¿Cuál sería el problema? ¡Pues que tendría que aprender más de 10 lenguajes de programación, pero no te preocupes ¡Esto es justamente lo que solventa Apache Cordova!

## Apache Cordova

![apache cordova](/assets/img/2016/apache-cordova.jpg)

La idea tras Apache Cordova es sencilla, simplemente quieren que desarrolles una aplicación (en adelante APP) y que sea tanto multi dispositivos (móviles, ordenadores, consolas), como multi sistema operativo, de hecho, la tecnología tras Apache Cordova soporta los siguientes dispositivos:

- Móviles (Android, iOS, Blackberry 10, Windows Phone, Firefox OS)
- Ordenadores (Windows, Mac y Ubuntu)
- Consolas (xBox)
- Televisiones (Firefox OS)

Vamos, que actualmente soporta ¡Hasta televisiones!

Antes de ver que lenguaje de programación utiliza, vamos a ver quién está detrás de este proyecto, para así poder entender que les ha movido a realizarlo y que se espera del proyecto en los próximos años.

## ¿Quién hay tras Apache Cordova?

Esta pregunta tiene una fácil respuesta, tras Apache Cordova, se encuentra la organización sin ánimo de lucro Apache, sí, sí, la misma que la de los servidores web.

Por si no lo sabías, entre los principales proyectos de esta organización se encuentran:

- Apache Web Server
- Librerías gratuitas para Java (lector de PDF, etc.)
- Apache Cordova
- Decenas y decenas de proyectos open-source

Y ahora que entendemos más quién está detrás del proyecto, podemos entender que la tecnología utilizada para Apache Cordova sea JS+HTML5+CSS, es decir ¡Tecnología open-source web!

Tenemos que comprender que en 10 años se ha diversificado muchos los lenguajes de programación y aunque Java pretendía ser un lenguaje que pudiera funcionar en todas las máquinas no lo ha conseguido, principalmente por pertenecer a una empresa privada (Oracle).

Fue entonces, cuando Apache creó Apache Cordova, basando este proyecto en tecnológicas únicamente WEB, como es el caso de JavaScript, HTML5 y CSS.

Vamos a ver las ventajas y desventajas de utilizar Apache Cordova

## Ventajas de utilizar Apache Cordova

1. Realizas una APP una única vez y funciona en todos los dispositivos.
2. Alta compatibilidad (incluso con televisiones).
3. Sólo hace falta saber programar HTML/JS.
4. Sólo tienes que aprender la API de Apache Cordova
5. Olvídate de aprender diferentes lenguajes

## Desventajas de Apache Cordova

1. No suele ser nativo (Tarda un poco más en procesarse)
2. No suele tener soporte para efectos visuales de cada sistema operativo.

## Programar para Apache Cordova

Programar para Apache Cordova es realmente sencillo, tan sólo nos hace falta conocimiento de JavaScript y podremos estudiarnos en una tarde su API.

Gracias a dicha API, podremos, por ejemplo, acceder a la cámara o al micrófono, lo interesante es que nosotros sólo programaremos para la API de Apache Cordova e internamente Apache Cordova traducirá a la API de Android cuando se ejecute en Android o a la API de iOS cuando se ejecute en iOS.

Aquí abajo pongo un listado con todos los objetos de la API JavaScript con sus compatibilidades.

![apache cordova api](/assets/img/2016/apache-cordova-api.png)

## ¿Cómo funciona realmente Apache Cordova?

Realmente el funcionamiento de Apache Cordova es muy sencillo de entender, tenemos que pensar que cada vez que se abre nuestra APP, lo que se está abriendo es un navegador al 100×100 donde dentro de dicho navegador se muestra nuestro HTML/JS/CSS.

Si lo pensamos así, podremos hacer APPs de forma más simple, comprendiendo cómo va a funcionar nuestra APP.

Lógicamente, esto es totalmente transparente para el usuario, por lo que en ningún momento sabrá cómo se está ejecutando y pensará que es una APP nativa.

## phoneGap

![apache cordova phonegap](/assets/img/2016/apache-cordova-phonegap.jpg)

Perfecto, ya sabemos que es Apache Cordova y más o menos cómo funciona, ahora buena, cómo pasamos (por ejemplo) un proyecto donde tenemos nuestro HTML+JS+CSS a un fichero .apk (es decir, una APP para Android).

Pues hay diferentes formas, incluso lo podemos hacer por comandos, pero si queremos hacerlo de una forma sencilla y visual, podemos utilizar la aplicación phoneGap.

De hecho, podemos descargar dicha aplicación para nuestro ordenador desde phonegap.com o directamente subir a su web un fichero .zip con nuestro proyecto para que se procese allí y podamos bajar el fichero .apk

## Resumen

Apache Cordova es un proyecto que nos permitirá programar una única vez en JavaScript y que nos funcione en todas las plataformas.

Cierto es, que no funcionará tan rápido como una APP nativa, pero si no vamos hacer algoritmos cuántos que necesiten mucho procesamiento, pues podremos programar tranquilos.
