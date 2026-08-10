---
layout: post
title: "¿Qué es la programación orientada a objetos?"
date: 2020-11-03 12:09:02 +0000
permalink: /que-es/programacion-orientada-a-objetos/
description: "Qué es la programación orientada a objetos, sus características principales y cómo lenguajes como C o PHP se relacionan con este paradigma."
categories: ["Programación"]
---

La programación orientada a objetos es un nuevo paradigma que intenta imitar la programación con el mundo real, intentando imitar los objetos/entidades reales (coche, cliente…) con los objetos/entidades de la programación

## ¿Qué es la programación orientada a objetos?

Realmente, una vez hemos visto la descripción “de libro”, podríamos definir la programación orientada a objetos como una programación que se basa en desarrollar diferentes mini-programas inteligentes e independientes.

Es decir, un proyecto bien desarrollado con esta metodología que se empezó a popularizar en los 90, contará con objetos que sean:

- Independientes
- Inteligentes

Aunque, existe la programación no orientada a objetos, es importante recordar que cerca del 100% de los lenguajes de programación actuales, están orientados a objetos. Siendo C el lenguaje de programación más importante sin objetos.

## Principales características de la programación orientada a objetos

Los lenguajes de programación orientada a objetos tienen diferentes características, siendo dos, las que permiten entender mejor el lenguaje.

### Objetos independientes

Como hemos indicado anteriormente, un proyecto bien desarrollado en un lenguaje orientado a objetos, es un proyecto que contará con diferentes objetos.

Pues bien, estos objetos son independientes, esto quiere decir varias cosas: para empezar, que no deberían de tener relación un objeto con otro y, que únicamente estarán conectados desde un controlador/objeto superior.

Gracias a esto, podemos encontrar otra característica de los objetos, y es que, al ser independientes, podemos exportarlos y usarlos tal cual en otro proyecto.

Por ejemplo, podemos crear un objeto llamado “cliente” y usarlo en otros proyectos, reutilizando así código y no teniéndolo que volver a programar.

### Objetos inteligentes

Me gusta definir los objetos cómo mini-programas inteligentes. Esto quiere decir que los objetos son inteligentes, a diferencia de las librerías basadas en funciones.  
Por ejemplo, si tenemos un objeto “coche” y ejecutamos el método “arrancar”, cuando usemos el método “acelerar”, podremos saber si el coche está arrancado, cuántos metros lleva recorridos, si no está arrancado, pedirle que lo arranque, etc.  
Todo esto, además, de forma independiente con el resto de objetos del proyecto y sin necesidad de usar bases de datos o variables externas al objeto.

## C y la programación orientados en objetos

Como comentamos a principio de este artículo, la mayoría de lenguajes de programación más usados ya son orientados a objetos. Puesto que, elegir entre un lenguaje que puedes reutilizar y ordenar el código por módulos y, uno que no, al final, por coherencia, acabamos usando los lenguajes de programación orientados a objetos.

No obstante, pasó algo, cuanto menos ‘curioso’, y es que uno de los lenguajes de programación más usados siempre había sido C. Hasta tal punto que, los motores de otros lenguajes como JavaScript o PHP, están escritos en este lenguaje.

Pero había un problema, C se lanzó en 1972 y la mera idea de la programación orientada a objetos empezó a surgir dos décadas después. Razón por la cual, C, no tiene objetos ¡Nació 20 años antes de que se popularizaran!

No obstante, se crearon tres lenguajes, basados en C, pero con objetos:

### C++

Se considera el heredero verdadero de C, ya que es el único que no hay una ‘empresa’ detrás, es libre y gratuito.

### C#

La propuesta de Microsoft basada en C e influido por C++. Actualmente lo acompañan con un entorno de desarrollo llamado .NET

### Objetive-C

Creado y mantenido por Apple, está pensado para desarrollar software para Apple (MacOS, iPhone, Tablets, etc). Actualmente lo están dejando morir a favor de Swift.

## ¿Realmente PHP es un lenguaje orientado a objetos?

Con PHP pasó algo realmente curioso, es uno de los lenguajes de programación más utilizados en el mundo (top-10), y es el principal para desarrollar páginas web.

Al igual que C, fue un lenguaje que inicialmente no estaba orientado a objetos (salió en 1995). No olvidemos que fue creado por un joven de 25 años para hacer un curriculum vitae más interactivo, por lo que, nunca pensó que llegaría a ser un lenguaje de programación usado mundialmente.

No obstante, en 2004 decidieron sacar la versión PHP 5, con un mejor soporte a la programación orientada a objetos. Sin embargo, para conseguir la mejor compatibilidad con el código ya creado, no hicieron un lenguaje totalmente basado en objetos, sino que lo hicieron “compatible con objetos”.

Así pues, es un lenguaje fuertemente procedimientos (basado en funciones). No obstante, soporta clases y objetos. Esto quiere decir que, una variable en PHP es únicamente una variable y no un objeto (como pasa en el resto de lenguajes de programación orientada a objetos).
