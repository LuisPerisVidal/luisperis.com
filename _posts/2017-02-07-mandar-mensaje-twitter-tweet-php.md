---
layout: post
title: "Mandar un mensaje a Twitter (tweet) con PHP"
date: 2017-02-07 11:35:48 +0100
permalink: /mandar-mensaje-twitter-tweet-php/
description: "Una de las primeras cosas que queremos hacer cuando empezamos a trabajar con la API de Twitter en PHP, es mandar nuestro primer tweet con PHP. Además, si como buenos programadores, mandamos el..."
categories: ["Programación"]
---

Una de las primeras cosas que queremos hacer cuando empezamos a trabajar con la [API de Twitter en PHP](/api-twitter-php/), es mandar nuestro primer tweet con PHP. Además, si como buenos programadores, mandamos el texto «¡Hola mundo!» pues mucho mejor.

Pues bien, en esta guía aprenderemos a mandar nuestro primer tweet.

## **Mandar un mensaje a Twitter con PHP**

Lo primero que tenemos que hacer para mandar un tweet con PHP a Twitter es una lista de todos los requerimientos que necesitamos.

En principio, si todavía no hemos empezado a desarrollar nada en Twitter, tendremos que conseguir o realizar lo siguiente:

- Necesitaremos crear una aplicación en Twitter
- Necesitaremos descargar oAuth en PHP (verificación)
- Necesitaremos conseguir nuestros tokens
- (Opcional) Algún framework para trabajar con Twitter en PHP

Así pues, con esta lista preparada, vamos a empezar.

## **Crear APP en Twitter para usar la API con PHP**

Lo primero que tenemos que hacer cuando trabajemos con la API de Twitter es preguntarnos ¿Cómo pueden darnos los usuarios permisos para usar sus cuentas desde la API? ¿Con el usuario y la contraseña? ¡Esto nunca!

La única forma de que puedas manejar una cuenta de un usuario sin saber la contraseña, es que crees una «APP» que esta, a su vez, pida autorización al usuario (desde la web twitter.com) para que puedas controlar su cuenta, sin tener la contraseña.

Para entender mejor, ver imagen de abajo.

![app twitter autorizacion](/assets/img/2017/app-twitter-autorizacion.png)

Una vez el usuario nos autorice, recibiremos dos tokens del usuario (ninguno de los dos será la contraseña), un token, por decirlo de alguna forma, hace referencia a la cuenta del usuario (su ID, etc.) y el otro token a la autorización.

Además, nuestra APP nos habrá generado dos tokens nuestros (de nuestra APP), por lo que si queremos mandar un tweet mediante PHP, necesitaremos usar los 4 tokens.

*Podemos crear nuestra primera APP desde la web <http://apps.twitter.com>.*

## **Conseguir los cuatro tokens para nuestra cuenta**

Bien, como sé que esto puede ser un poco lioso, vamos por partes, lo primero que necesitaremos serán los dos tokens de nuestra APP, para ello sólo tendremos que irnos a la pestaña «Keys and Access Tokens» y ahí os aparecerá ¿¡Veis que sencillo!? ¡Y sin programar nada!

![generar app twitter php](/assets/img/2017/generar-app-twitter-php.jpg)

Luego, si queremos hacer pruebas con nuestra cuenta para mandar el primer tweet, simplemente tendremos que quedarnos en esa página y presionar sobre el botón «Generate my access tokens» ¡Ya está!

![twitter generar tokens](/assets/img/2017/twitter-generar-tokens.jpg)

La API de Twitter con PHP puede parecer difícil, pero una vez la entendemos es muy sencilla.

## **Mandar un tweet mediante PHP**

Por último, ahora que ya tenemos los 4 tokens, vamos a mandar nuestro primer tweet, en este caso necesitaríamos descargar oAuth con soporte para Twitter en PHP (por ejemplo esta <https://twitteroauth.com>), en mi caso, puesto que ya llevo años desarrollando para la API de Twitter, decidí hace tiempo desarrollar una mucho más sencilla.

Con mi librería el código para mandar un tweet sería así:

<?php

include(‘../Twitter\_API.php’);

$twitter = new Twitter\_API(‘your-api-key’,’you-api-secret’);

$twitter->connect(‘the-user-key’, ‘the-user-secret’);

$twitter->tweet(‘¡Hola mundo cruel!’);

?>

Fácil ¿Verdad?

## **Resumen y conclusión**

Como vemos, una vez entendemos el funcionamiento de Twitter, es mucho más fácil programar y con una simple función en PHP, podremos mandar un tweet.

*Puesto que mucha me ha pedido mi framework para PHP, lo publicaré el día 12 de Febrero como más tardar.*
