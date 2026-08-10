---
layout: post
title: "Organizar el desarrollo de un Software"
date: 2017-06-19 08:00:41 +0100
permalink: /organizar-desarrollo-software/
description: "Muchas personas piensan que un buen programador es aquel que desarrolla un software lo más rápido posible, pero esto no es cierto, un factor importante para convertirnos en buenos desarrolladores..."
categories: ["Emprendedores", "Negocios Online"]
---

Muchas personas piensan que un buen programador es aquel que desarrolla un software lo más rápido posible, pero esto no es cierto, un factor importante para convertirnos en buenos desarrolladores pasa obligatoriamente por saber organizar el desarrollo de un software.

## Organizar el desarrollo de un software

Sin duda la organización del desarrollo de un proyecto software es una disciplina excesivamente amplia, sobretodo si lo enfocamos como proyecto y dependiendo si trabajamos para una empresa, una consultora o para una startup deberemos de seguir unas técnicas u otras.

No obstante, veamos los principales puntos que debemos resolver antes de empezar cualquier proyecto que emprendamos en una startup o en solitario (para aprender por ejemplo).

1. Diagramas de la aplicación
2. RoadMap con fechas orientativas.
3. Elección de la tecnología a utilizar.

Tengo que advertir que estos puntos son los más básicos y que todo cambiará dependiendo el ambiente (no es lo mismo un proyecto personal que si trabajas para una consultora) en el que estemos trabajando. No obstante, es una buena base para desarrollar toda la idea del software.

Veamos uno por uno, estos tres puntos.

## Diagramas de la aplicación

Antes de empezar a programar, deberemos de tener muy claro cómo será el programa y cuál será el flujo de la información de dicho de programa. No obstante, también sería conveniente conocer de antemano las clases (pensad en OOP) que vamos a crear antes de empezar a programarlas ¿Por qué?

Muy sencillo, algo que sucede mucho, cuando no se planifica bien un software es que al final varias clases (objetos) que desarrollamos acaban realizando las mismas acciones (métodos duplicados) o tenemos que hacer parches cutres para conseguir comunicarlas, para que esto no pase, es mejor organizarlo todo bien.

Veamos ahora el flujo de datos y el diagrama de clases.

### Diagrama de flujo de datos

El diagrama de flujo de datos, por decirlo de alguna forma es la representación gráfica de un proceso (cómo va a moverse la información de principio a fin, y las opciones que tiene).

Ojo, el flujo de datos suele ser una representación simplificada de lo que luego desarrollaremos en nuestro código, es decir, que en el diagrama aparezca un “if” no quiere decir que tengamos que tener un if simple, sino que nuestro programa sólo podrá hacer alguna de las dos opciones.

![Diagrama de flujo](/assets/img/2017/diagrama-de-flujo.jpg)

### Diagrama de clases

Perfecto, imagínate que vas a empezar a desarrollar un programa ¿Por dónde empiezas? ¿Cómo lo divides? ¿Será escalable?

Para resolver todas esas dudas solemos usar el paradigma objetos, para así tener un código un poquito más modular y escalable, no obstante ¿Por dónde empezar?

Para tener bien claro que hay que hacer, lo mejor es crearse un diagrama de clases donde indiquemos las clases o módulos que necesitamos para nuestro programa, ojo, las clases que usemos en el diagrama de clases luego no tienen porque ser exactamente las mismas que usamos cuando programemos, pero si nos servirá de guía.

![Diagrama de clases](/assets/img/2017/diagrama-clases.jpg)

## Elección de la tecnología

Bien, una vez tenemos los diagramas anteriores, nos toca escoger la tecnología o lenguaje de programación que vamos a tener que utilizar, para ello hay que tener cuidado con diferentes puntos:

### 1. El lenguaje de programación

A pensar de lo que mucha gente pueda creer, el lenguaje de programación, en términos generales es una de las cosas menos importantes, lo que importante es que lances el producto, en cuanto a eficiencia, pocos lenguajes de programación superar a programar en ensamblador, pero tardaríamos décadas para hacer un programa.

O incluso dentro de los lenguajes de programación, el lenguaje C es uno de los más rápidos, pero la gente utiliza como mínimo C# o C++ o Objetive-C para poder programar con objetos.

Todo esto viene a resumen, que el mejor lenguaje de programación no es el más rápido, sino el que nos permite llegar a nuestro objetivo y que luego el programa sea escalable.

Si estamos haciendo una aplicación web, yo recomiendo utilizar PHP, ya que si queréis ampliar el equipo, los programadores PHP son más baratos de contratar que por ejemplo los de NodeJS, además un hosting va a ser más rápido y barato de configurar que un servidor personalizado.

Es decir, no penséis únicamente en “qué es más rápido”.

### 2. Que sea escalable

Importantísimo, no importa que lenguaje de programación uséis, siempre tenéis que hacer el código escalable y que se pueda trabajar en equipo.

Para ello lo mejor es desarrollar con una metodología similar al MVC (modelo-vista-controlador), indiferentemente de en qué lenguaje estás programando.

## RoadMap con fechas orientativas

Imagínate que te estás montando un proyecto o una startups, puede haber semanas que estemos 30 horas al día programando, pero luego pueden pasar semanas sin que toquemos nada de código porque estemos enfrascados en reuniones o simplemente “tengamos la cabeza colapsada como para programar”.

Al final, muchos programadores tienen la sensación de que “no avanzan” o de que “no saben a dónde van”, justamente por eso existen los roadmaps.

Un roadmap o timeline no es más que una línea temporal a futuro donde dividimos el desarrollo del software en hitos, por ejemplo “Semana 1: Base de datos preparada. Semana 4: Los controladores terminados.”

Esto nos permite tres cosas:

1. Tener organizado paso a paso nuestro proyecto.
2. Tener fechas de finalización de proyecto (ya que sino programamos y vamos añadiendo funcionalidad hasta el infinito).
3. Al superar cada reto nos da fuerza y ánimo para terminar el siguiente en el tiempo establecido.

## Saber más

Como podemos observar, este artículo toca la base lo que sería el principio del desarrollo de un proyecto, si te interesa saber cómo se desarrolla un software desde cero, te invito a que sigas mi podcast Consultor IT, desde el episodio 80 comento todos los los lunes cómo voy desarrollando Keinas, un CRM que estoy realizando con Joan Boluda.

<div class="embed">
<iframe src="https://www.ivoox.com/player_ej_19307309_4_1.html?c1=4286f4" loading="lazy" frameborder="0" allowfullscreen title="Contenido incrustado"></iframe>
</div>

Podcast **Consultor IT** en: [Ivoox](https://www.ivoox.com/s_p2_297808_1.html) | [iTunes](https://itunes.apple.com/es/podcast/podcast-luis-peris/id1134119223) | [RSS](http://www.ivoox.com/consultor-it_fg_f1297808_filtro_1.xml)
