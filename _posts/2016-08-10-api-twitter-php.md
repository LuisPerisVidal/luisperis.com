---
layout: post
title: "API Twitter en PHP"
date: 2016-08-10 23:40:53 +0100
permalink: /api-twitter-php/
description: "La finalidad de este artículo es acercar a los desarrolladores el uso de la API Twitter en PHP, explicando todo lo que tienen que saber antes de empezar con su desarrollo. No obstante, antes de..."
categories: ["Programación"]
tags: ["API", "PHP", "Twitter"]
---

La finalidad de este artículo es acercar a los desarrolladores el uso de la API Twitter en PHP, explicando todo lo que tienen que saber antes de empezar con su desarrollo.

No obstante, antes de empezar a explicar que significa REST, o para que necesitamos una APP creada por nosotros para hacer de conexión a la API, tengo que dejar algo claro sobre el lenguaje de programación a utilizar.

Una de las cosas que debemos tener claro desde el comienzo, es que la API de Twitter se puede usar con cualquier lenguaje de programación, no obstante, puesto que la mayoría de mis usuarios son fans de PHP he decidido realizar los pocos ejemplos que voy a utilizar con PHP.

Así pues, comencemos.

## ¿Cómo es la API de Twitter? ¿API REST?

![Crear APP Twitter](/assets/img/2016/crear-app-twitter.jpg)

Bueno, el término API en el mundo humanos significa «sistema para que otros softwares se puedan conectar a mi servicio y recuperen información”, es decir, que nos podremos conectar a los servidores de Twitter y ejecutar funciones (por ejemplo, publicar un tweet) y recuperar datos (un listado de tweets).

No obstante, en ningún momento dice «sistema basado en un estándar», es decir, que cada empresa podía decir de qué forma te podías conectar con ellos, por lo tanto, al final era un lío, ya que necesitabas aprender para cada plataforma a la que te conectaras cómo funcionaba su API. Imaginar que estáis haciendo una alternativa a Hootsuite y queréis conectaros a toda las APIs de todas las redes sociales ¡Tenías que aprender cómo funcionaba cada API!

Así pues, para no volver locos a los informáticos, se creó un estándar que actualmente usa la mayoría de las grandes empresas, a este estándar se le llamó API REST.

Esto es importante que lo entendamos para comprender como funciona una API REST

## Twitter y la API REST

De la API REST podríamos hacer un libro (o por lo menos un artículo), pero para resumirlo mucho e ir a lo que nos importa en este artículo (¡Empezar con la API de Twitter en PHP!), vamos a indicar lo que más nos interesa saber de la API REST:

– Se utilice el protocolo HTTP y HTTPS

– Cada petición que hagamos mandaremos TODA la información necesaria. No se usa cookies de sesión ni nada similar. Nuestro usuario-clave (normalmente llamadas tokens), las tendremos que mandar en cada ocasión.

– Las operaciones están divididas en POST, GET, PUT, DELETE. Por ejemplo, para añadir un nuevo tweet, usaremos POST no obstante, para leer un perfil usaremos GET. Estos cuatro recursos vienen por defecto en el protocolo HTTP.

– Cada función se ejecuta a través de una URL/URI por ejemplo api.twitter.com/tweet y nunca se mandará la función que queremos ejecutar en el mensaje de la petición HTTP/S.

Sé que esto puede parecer un poco complicado al principio, pero ya veréis que en el fondo es sencillo una vez que se entiende.

## Twitter API ¡Primeros pasos!

Bien, antes de empezar a usar la API Twitter en PHP y una vez hemos comprendido las características de las API REST (la que usa Twitter), debemos de abrir dos páginas web:

**Twitter para desarrolladores**Esta página tenemos toda la información referencia a la API, instrucciones para conectarnos, las URLs de las funciones, que necesitamos, etc.

**Gestor de aplicaciones de Twitter**Desde esta página podremos crear una APP o gestionar todas las APPs de Twitter que hayamos creado.

Sinceramente, yo sería fan de tenerlo todo en una página (como lo tenían antes), pero se ve que los chicos de Twitter prefirieron complicarlo todo un poco.

Así pues, perfecto, ya estamos en las páginas para desarrolladores, no obstante ¿Pero qué narices es una APP?

Es decir, la gracia es que nosotros creemos nuestras aplicaciones desde fuera de Twitter por ejemplo en PHP conectándonos a ellos ¿Por qué tenemos que crear una APP?

Pues bien, vamos a verlo.

## Crear nuestra primera APP en Twitter

Para comprender que es una APP debemos de preguntarnos ¿Para qué vamos a utilizar la API? ¿Para conectarnos nosotros solos? ¿O también para controlar las cuentas de otros?

Pues bien, pongamos dos ejemplos:

En el primero ejemplo, tenemos que pensar que vamos a utilizar la API de Twitter para que la gente se pueda registrar en nuestra página web con su cuenta de usuario.

En el segundo ejemplo, vamos a pensar que queremos usar la API de Twitter para publicar noticias en el twitter de nuestros usuarios.
Bien, en estos dos ejemplos, nos surge una duda ¿Cómo nos darán permisos los usuarios para que accedamos a su cuenta? ¿Con el usuario y la contraseña? ¡Claro que no! ¡Eso sería peligrosísimo!
La forma que Twitter ha implementado (igual que otros), es que, cuando quieras acceder a la cuenta de un usuario, le redirijas a tu «APP» en la página oficial de Twitter y que cuando el usuario acepta tu APP, Twitter te manda en ese mismo momento dos tokens (como números y letras aleatorios), con esos tokens podrás hacer lo mismo que si conocieras la contraseña ¡Pero sin conocerla!

![wailux_auth_app](/assets/img/2016/wailux_auth_app.jpg)

Así pues, si vamos a utilizar usuarios para nuestra aplicación tiene sentido la APP, pero ¿Y si no? ¿Y si queremos sólo mandar tweets desde nuestra cuenta?

Pues si no utilizamos usuarios también la podemos crear, no obstante, simplemente, al crear nuestra APP tendremos que presionar un botón en nuestro panel de control para que nos genere y nos muestre los tokens de nuestro usuario.

![twitter-tokens](/assets/img/2016/twitter-tokens.jpg)

Tenemos que recordar que siempre tendremos dos tokens, uno que hace referencia al usuario y otro a lo que sería «su contraseña » o autorización.

Así pues, cuando finalmente nos conectemos a la API tendremos que mandarle para hacer cualquier acción 4 tokens, 2 de nuestra APP (la encontraremos en nuestro panel de APPs) y 2 del usuario.

Perfecto, imaginemos que ya tenemos los 4 tokens que hemos cogido desde el panel de control ¿Y ahora?

## Twitter para desarrolladores

![API Twitter PHP](/assets/img/2016/API-Twitter-PHP.jpg)

Bien, ya hemos visto la página de las APPs, ahora nos toca ver que podemos encontrar en la página de Twitter para desarrolladores.

Pues bien, esta página es como una biblioteca (desordenada y en inglés) que te intenta dar toda la información necesaria para que programes tu API.

No obstante, la parte más importante de todas está escondida, que es donde podemos ver ejemplos reales y todas las funciones (acciones) que podemos usar en Twiter. Así pues, podéis acceder [desde aquí](https://dev.twitter.com/rest/public).

Dicho esto, vemos que estamos dentro del apartado Public API y que, en la columna de la izquierda, podremos encontrar un listado de todas las funciones que podemos utilizar.

Si nos fijamos, podremos destacar dos cosas:

– Se categorizan en GET y en POST. GET la usaremos cuando queremos recuperar información (un perfil, una búsqueda) y POST cuando queremos mandar información.

– El formato es URI, es decir para acceder al recurso statuses/update tendremos que hacerlo desde la URL https://api.twitter.com/1.1/**statuses/update**

Así pues ¿Cómo nos conectamos? ¿Usamos el famoso cURL en PHP para hacer las peticiones HTTP?

No, por desgracia no es nada recomendable hacerlo así «a pelo», de hecho, lo más seguro es que no nos funcione (a no ser que entiendas oAuth), todavía nos queda una cosa por aprender.

## oAuth en Twitter… en PHP

Lo sé, parece desesperante, tener que aprender un millón de cosas para poder hacer un simple «Hola mundo», no obstante, una vez aprendamos todo esto podremos programar la API de casi cualquier plataforma web (Twitter, Facebook, Linkedin, Google, Microsoft…) y nos costará lo mismo hacer un Hola Mundo que hacer algo complejo.

Así pues, lo último que nos queda por ver es el famoso y temido oAuth.

Por decirlo de alguna forma, el oAuth es un protocolo (sí, bajo el propio protocolo HTTP/S) que se encarga de gestionar las credenciales para no poder los datos del usuario en peligro (email y contraseña) ¿Recordáis los 4 tokens? ¡Pues eso!

El problema es que oAuth no es sólo «la definición de tokens», sino que tenemos que implementar todo un sistema para que cuando hagamos las peticiones HTTP/S a Twitter le digamos los datos del token mediante variables oAuth.

Sencillo ¿Verdad?

## API Twitter en PHP

![API Twitter PHP](/assets/img/2016/API-Twitter-PHP-2.jpg)

Pues bien, vamos a ver cómo podemos usar la API Twitter en PHP.

Seguramente te estarás preguntando ¿¡Pero este Luis me va a poner algún ejemplo con código para que lo entienda!? ¿Cómo puedo programar en PHP? ¡Me he perdido!

Pues no te preocupes, tengo dos noticias, una buena y una mala:

La mala primero. El 99% de los mortales programadores nunca podrán hacer una petición a la API de Twitter «a pelo» (no importa el lenguaje de programación). Es decir, necesitas conocimientos de protocolos HTTP, POST/GET, oAuth, etc. ¿Entonces? ¿Tiro la toalla? ¡Nunca!

La buena noticia. La parte positiva es que algunos locos hemos creado librerías para que todos los programadores puedan conectarse de una forma sencilla con unas pocas líneas de PHP, eso sí, tendréis que importar la librería.

¿Y dónde la puedes encontrar?

Pues bueno, Twitter ha publicado un listado de las librerías que les ha gustado más ([acceder](https://dev.twitter.com/overview/api/twitter-libraries)).

Ahora que ya tenéis todos los conocimientos básicos de que es una APP, una API REST, el oAuth, podréis usarlas sin muchos problemas.

## Resumen

A Twitter le gusta hacer sufrir a los programadores. No obstante, tiene una potente API con la que podremos hacer maravillas, desde dar la posibilidad a nuestros usuarios que se loguen con Twitter hasta crear una alternativa a Hootsuite. Vosotros ponéis los límites
