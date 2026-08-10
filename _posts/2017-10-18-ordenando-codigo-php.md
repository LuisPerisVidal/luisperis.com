---
layout: post
title: "Ordenando el código en PHP"
date: 2017-10-18 00:42:37 +0100
permalink: /ordenando-codigo-php/
description: "Ordenando el código en PHP Estoy más que acostumbrado a estudiar programas/plataformas PHP desarrollado por otras personas, muchas veces (como en el caso de mis alumnos), personas que acaban de..."
categories: ["Programación"]
---

# Ordenando el código en PHP

Estoy más que acostumbrado a estudiar programas/plataformas PHP desarrollado por otras personas, muchas veces (como en el caso de mis alumnos), personas que acaban de empezar en el mundo de la programación.

Y algo que desde el principio intento enseñarles, es a ordenar el código PHP, ojo, no sólo porque sea mejor para ellos, sino porque sino, el mismo código, se me hace extremadamente complicado de leer a mi mismo.

Así pues, en este artículo voy a intentar dar unos cuantos tips para tener un código mucho más ordenado, pero antes (aunque parezca lógico), vamos a dar las unas razones para ordenar bien el código

## Razones para ordenar el código PHP

Muchas veces, sobretodo, cuando se empieza en el mundo de la programación, no se da la suficiente importancia a ordenar al código, total, no afecta al funcionamiento del programa ¿No?

Pues bien, esta parte del artículo está especialmente pensada para todos los nuevos programadores (bienvenidos a este increible mundo) que opinan que no es necesario ser meticuloso a la hora de ordenar el código ¡Veamos las ventajas de ordenar el código!

### Otros programadores te pueden ayudar

Un punto muy importante, sobretodo cuando estás empezando en este fantástico mundo de la programación es que otras personas te pueden ayudar a programar.

Si pides ayuda a alguien o subes tu código a un foro de programadores, como no esté bien ordenado, nadie te ayudará.

Yo mismo he respondido a usuarios que me pedían ayuda que “su código es ilegible” ¿Puedo ser un borde? Puede ser, pero es que es HORRIBLE leer un código que no está ordenado, el que lo ha programado lo entenderá, nadie más.

Cuando un alumno mío me manda un código así, lo primero que le enseño es a organizarlo. Cogemos  el código que me ha mandado y lo ordenamos y luego ya resuelvo la duda.

Puedes programar “mal” (y poco a poco ir aprendiendo), pero ¡Programa organizado!

### Estructura mejor definida

Otra ventaja de organizar bien el código (hacerlo bonito), es que eres consciente de lo que hace tu programa en cada línea, no tienes que ir revisando el resto del código para entenderlo.

Esto te ayudará muchísimo, ya que de un vistazo sabrás lo que hace el programa y lo más importante, cómo lo hace.

### Cometes muchos menos errores

Otra ventaja de organizar el código es que cometes muchos menos errores, esto lo tengo más que comprobado. Los alumnos que organizan mejor el código tienden a cometer menos errores de sintaxis que los alumnos que no lo ordenan ¡Ojo! ¡Aunque los que no lo ordenan sepan mucho más!

Además, luego está el tema de las repeticiones, las personas que no organizan el código tienden a duplicar el código, en ocasiones por error, realizan dos *foreach* en vez de uno o declaran varias veces la misma variable.

### Programas mucho, mucho más rápido

Y la mejor sin duda, para el final y es que, ordenando el código, se programa mucho, pero mucho más rápido.

Seguramente, ya que al tener el código ordenado, te permita tener una visión global, de por donde vas, qué hace cada cosa y cómo continuar.

Así pues, ahora que ya hemos visto las ventajas, veamos cómo podemos ordenar nuestro código.

## Comentario en PHP

Empecemos hablando de los comentarios en PHP, dando por hecho que sabemos crear comentarios en PHP (ya haré otro artículo, hablando sólo de los diferentes tipos de comentario).

Pero veamos los principales consejos que debemos tener en cuenta a la hora de poner comentarios:

### Encima de lo referenciado y con las mismas tabulaciones

Lo primero que tenemos que hacer al comentar el código es posicionarnos justo encima del código que queremos comentar, además, con las mismas tabulaciones, es decir, si el código que queremos comentar tiene dos tabulaciones, nuestro comentario también debería de tener dos tabulaciones.

Es decir, esto sería incorrecto:

![](/assets/img/2017/php-mal-comentado.png)

Lo correcto sería esto:

![](/assets/img/2017/php-bien-comentado.png)

### Debe de ser descriptivo

Cada comentario debe de ser un texto lo más corto posible y descriptivo. Ojo, si en alguna ocasión necesitas tres líneas, sin problemas, pero que no sea la norma.

Esto te permitirá de un vistazo ver todo el código ordenado y al fijarte en la parte que te interese, ver el comentario describiéndolo.

### No incluir viejo código en exceso

Algo con lo que me encuentro muchas veces, es que hay mucho código comentado, quizás de versiones anteriores, esto es horrible. De hecho, el 90% de las veces no tiene sentido y la única razón es porque al ser humano le encanta guardarlo todo.

Si hemos programado bajo GIT (software de versión de controles), podremos acceder al viejo código sin problemas y si realmente lo necesitamos, no tiene sentido que lo eliminemos comentándolo.

Ojo, no digo que de vez en cuando no esté bien comentar algo que nos pueda ayudar en un futuro (entiendo mejor cómo se desarrolló un parte, etc.), pero ni de broma debería de ser el 70% del código de la web, de hecho, ni siquiera el 10%.

## Cómo tabular correctamente en PHP

Sin duda, junto a los comentarios, uno de los temas más “vitales” a la hora de ordenar el código, es aprender a tabular correctamente, vamos esto es importantísimo.

Empecemos indicando que el tabulador es la tecla que está encima del botón de mayúsculas (la que tiene una lucecita), y nos permite, justamente eso ¡Tabular el texto!

Si has visto código en alguna web, verás que en ocasiones ese código está «metido hacia adentro» en mayor o menor medida.

Pues bien, veamos cuales son las normas para hacer esto de una forma correcta.

### Nunca tabular con espacios en PHP

Si lo que queremos es meter el código hacia adentro, nunca, usar el espacio, a no ser que quieras que te despidan donde trabajes.

Un “tabulado” equivale (depende el visualizador de código) a 4 espacios, lo que quiere decir, para empezar, que el código, al guardar el fichero te ocupará 4 veces más si has utilizado espacios en vez de tabulados.

Además, las tabulaciones están pensadas para mostrar textos de un forma ordenada, mientras un espacio es un espacio. Gracias a esto, las tabulaciones siempre te mostrarán el código ordenado.

### ¿Cuándo debemos de tabular en PHP?

Esta sin duda es la pregunta del millón ¿Cuándo debemos de tabular?

La respuesta es fácil, siempre que estés encerrando el código entre unas llaves { }. ¡Así de fácil!

Por ejemplo, en una función, dentro de las llaves { }, todo el código estará tabulado, pero ojo, si dentro metemos un if, un for o cualquier otra función que tenga llaves ¡Ese código también se tendrá que tabular!

Veamos un ejemplo:

![](/assets/img/2017/php-tabulacion.png)

## Resumen y conclusión

Como podemos observar, es muy importante tabular el código, al ver estos consejos, vemos que muchas cosas son de pura lógica y otras son muy fáciles de recordar y de aplicar.

Por lo que ahora sólo queda que nos pongamos manos a la obra y practiquemos.
