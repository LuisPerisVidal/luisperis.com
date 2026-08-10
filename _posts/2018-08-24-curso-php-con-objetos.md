---
layout: post
title: "Curso de PHP con objetos"
date: 2018-08-24 08:28:19 +0000
permalink: /curso/php-con-objetos/
description: "Curso gratuito de programación orientada a objetos en PHP: clases y objetos, constructores y destructores, ámbito de variables y herencia."
categories: ["Programación"]
---

Antes que nada ¡Bienvenido al curso de PHP con objetos!

No importa realmente si eres un programador senior en otro lenguaje y quieres aprender a programar en PHP o estás iniciándote en el mundo de la programación y ya has pasado por el curso de PHP Básico y deseas aprender el mundo de los objetos en PHP.

**¿Qué aprenderás en este curso de PHP con Objetos?**

- Lo primero ¡Aprenderemos qué son los objetos!
- Aprenderemos a crear objetos desde cero (diferentes)
- Aprenderemos a crear objetos con herencias
- Aprenderemos qué son y cómo usar los constructores y destructores
- También veremos el ámbito de las variables
- Por último veremos las herencias en objetos

**¿Y qué me quedará por aprender?**

- ¡Practicar creando tus propias aplicaciones!

Así que ya está todo dicho ¡Ahora sólo queda practicar!

## 13. ¿Qué son los objetos en PHP?

En el curso de PHP básico hemos visto un montón de cosas, desde variables hasta la gestión de cookies, pasando por la utilización y creación de funciones, entonces ¿Qué nos queda por ver? ¿Qué son los objetos en PHP?

## Objetos en PHP

Antes que nada hay que dejar algo claro, sobretodo para las personas que vienen de otros lenguajes de programación: PHP no es un lenguaje de programación orientado a objetos.

Entonces, si no es un lenguaje de programación ¿Cómo es que vamos a ver los objetos?

Pues bien, esto es únicamente, porque desde la versión 5 de PHP (actualmente vamos por 7, no existiendo la 6), se introdujeron los objetos. Es decir: PHP es un lenguaje de programación que no está orientado a objetos (no es la base), pero que sí que soporta objetos.

Dicho esto, nos queda por responder una pregunta.

## PHP: ¿Qué son los objetos?

Podemos definir los objetos como mini programitas independientes e inteligentes dentro de PHP. Realmente la programación orientada a objetos es lo que se conoce como un **paradigma** , una nueva forma de pensar las cosas y de programar.

Se podría decir que al programar con objetos programas «por partes», es decir, primero programas un bloque «el objeto login», luego programas otro «el objeto mensajes», luego otro «el objeto usuarios», hasta que los acabas juntando y obtienes una red social totalmente creada por ti.

Si te estás preguntando si es difícil programar con objetos, mi respuesta (como profesor de programación que soy) es la siguiente:

Una vez comprendes los objetos es más fácil y rápido programar con objetos que sin ellos, no obstante, cuesta mucho entrenar a nuestra mente para que pase de una programación sin objetos a una con objetos.

Así que, para entender mejor de lo que estoy hablando ¡Veamos la clase!

Video: https://www.youtube.com/watch?v=8hyIIth2ry4

Como podemos observar, la teoría de los objetos en PHP es realmente sencilla ¿A qué sí?

Pues bien, ahora es el turno de pasar de la teoría a la prácticas, así que, piensa un proyecto ¡Y adelante!

## 14: Objetos en PHP: Constructores y Destructores

En la clase anterior hemos visto por primera vez los objetos en PHP, hemos visto qué son las clases y cómo podemos instanciarlos, y está genial, no obstante ¡Eso sólo era el principio de los objetos!

Los objetos son mucho, pero mucho más potente de lo que vimos la clase anterior, así que en esta ocasión vamos a ver los constructores y destructores en la programación orientada a objetos en PHP.

Así que ¡Veamos la clase!

Video: https://www.youtube.com/watch?v=dg7jxhxnCMU

## Constructores y destructores en los objetos de PHP

Como acabamos de ver en esta clase, los constructores y destructores no son más que métodos (funciones) que se ejecutan solas en un momento dado.

En el caso de los constructores se ejecutan siempre que instanciamos un objeto (es decir, cuando usamos el new…) y no puede servir para mil cosas, para empezar, para preparar el objeto, declaración de variables, etc. Pero también, le podemos pasar datos mediante argumentos al propio constructor, así que se puede crear un objeto totalmente personalizado ¡Súper potente! ¿No?

Por otra parte tenemos los destructores, en esta ocasión, no se ejecutan cuando se crean los objetos, sino al revés, cuando se destruyen los objetos. ¡Pero ojo! Un objeto se puede destruir por dos razones, la primera es porque lo borramos con alguna función tipo unset(), no obstante, también se destruyen cuando el programa termina.

Es decir, sí o sí, el destructor se ejecutará, ya sea porque hemos eliminado el objeto nosotros o porque la ejecución de PHP ha terminado y se ejecuta en ese momento.

En este caso, el destructor se suele usar para liberar memoria RAM borrando variables u otros objetos, incluso cerrando conexiones a ficheros o a bases de datos.

Así pues, podemos decir, que aunque los constructores y destructores no son algo «vitales», sí que es cierto que nos ayudan a programar mejor.

## 15. Objetos en PHP: Ámbito de variables

Seguimos profundizando en los objetos en PHP y en esta ocasión llegamos hasta los ámbitos de las variables en PHP, en esta clase analizaremos qué son, cómo programamos y lo más importante: Para qué podemos utilizarlos.

Y es que los ámbitos de variable es algo muy importante cuando queremos hacer una programación más estable y segura. Pero ¿Qué son?

Para explicar qué son, tenemos que recordad que a las variables/atributos de los objetos podemos acceder, crearlas y modificarlas desde fuera del objeto ¿Verdad?

Pues bien, según muchos puristas, esto sería algo que nunca debería de poderse hacer, por ello, los ámbitos de variables indican a qué atributos/métodos podremos acceder desde fuera del objeto ¡Así de simple!

Veamos en esta clase cómo podemos hacerlo:

Video: https://www.youtube.com/watch?v=LXBL4xVPaSI

Como acabamos de ver, es extremadamente fácil declarar el ámbito de los atributos y de los métodos en los objetos ¿A que sí?

¡Nos vemos en la próxima clase!

## 16. Objetos en PHP: Herencias

Ya hemos visto un montón de cosas relacionadas con los objetos, y realmente, con la primera clase de objetos cubriríamos el 99% de nuestro trabajo, no obstante ¡Estamos aquí para aprender y ser profesionales ¿No? Pues una de las cosas que nos queda por ver ¡Son las herencias en los objetos en PHP!

Antes de explicar qué es la herencia en PHP, quiero hacerte una pregunta, imagínate que la NASA tiene que programar dos robots, uno para la Luna y otro para Marte, estos robots serán diferentes (por el clima, etc.), no obstante compartirán el 80% del código ¿Cómo lo podrían programar?

Bien es cierto que podrían programar uno y luego copiar el código y reprogramar el otro ¡Pero esto estaría mal!

Una de las formas que se podría hacer es crear un objeto llamado «robot» en que programaremos todas las funciones y todos los atributos que se encuentren en ambos robots y después, simplemente crearemos dos objetos nuevos, uno por ejemplo «robot_luna» al que le diremos va a heredar todo el código de «robot» y luego otro llamado «robot_marte» que le diremos lo mismo ¡Así de fácil!

Gracias a esto, si mejoramos el código del objeto principal (robot), se mejorará en todas partes sin afectar al código, potente ¿Verdad?

¡Veamos la clase a ver cómo lo podemos programar:

Video: https://www.youtube.com/watch?v=BTJbHq7apfk

¡Genial! Como acabamos de ver, la herencia en los objetos es facilísima, realmente, lo que más nos puede costar es «comprender» cómo trabajar con objetos, no obstante, una vez entendido, es muy fácil trabajar con herencias.

Esto es algo que podremos utilizar en nuestro día a día, cuando trabajemos con librerías de terceros (por ejemplo, para generar un PDF, etc.).

Como digo siempre, de la teoría a la práctica hay mucho camino, te toca aplicar los conocimientos aprendidos en este curso creando tu propio programa ¡Adelante!
