---
layout: post
title: "Plataformas web: PHP vs NodeJS"
date: 2019-03-10 08:00:42 +0100
permalink: /plataformas-web-php-vs-nodejs/
description: "En el mundo de la programación (como en otros sectores) hay muchos gurús, gente que sin vacilar es capaz de decir que PHP es mejor siempre que NodeJS o al revés, que NodeJS es mejor que PHP. No..."
categories: ["Podcast", "Programación", "Rendimiento y Aplicaciones"]
---

<div class="embed">
<iframe src="https://www.ivoox.com/player_ej_33340901_4_1.html?c1=4286f4" loading="lazy" frameborder="0" allowfullscreen title="Contenido incrustado"></iframe>
</div>

Podcast **Consultor IT** en: [Ivoox](https://www.ivoox.com/s_p2_297808_1.html) | [iTunes](https://itunes.apple.com/es/podcast/podcast-luis-peris/id1134119223) | [RSS](http://www.ivoox.com/consultor-it_fg_f1297808_filtro_1.xml)

---

En el mundo de la programación (como en otros sectores) hay muchos gurús, gente que sin vacilar es capaz de decir que PHP es mejor siempre que NodeJS o al revés, que NodeJS es mejor que PHP.

No obstante, la realidad es un poco más complicada, ningún lenguaje de programación es mejor que otro ¡Ninguno! Todo dependerá de mil cosas, el uso que le queramos dar, si va a tener actualizaciones y si es así, si son anuales o son mensuales, las visitas que tengamos, etc.

Por ello, antes de empezar este artículo dónde podremos comparar PHP y NodeJS quiero dejar claro que “no hay un vencedor”, veremos y entenderemos cada lenguaje, veremos las ventajas que tiene un lenguaje frente a otro y veremos los inconvenientes que tienen.

También veremos dichos lenguajes desde el lado “económico”, que un lenguaje sea más rápido que otro, no quiere decir que haya que elegirlo si nos cuesta diez veces más mantenerlo, no necesitamos tanta velocidad y menos si la empresa no puede asumir un desarrollo (de por ejemplo) 200.000€.

Así pues ¡Empecemos!

## PHP en el desarrollo web

Lo primero que debemos de entender es ¿Qué es PHP? ¿Cómo funciona PHP?

Pues bien, PHP es un lenguaje de programación interpretado, es decir, “cada vez que se ejecuta se compila”, esto hace que sea un poco más lento que otros lenguajes (como C++).

No obstante, PHP es es único lenguaje en el TOP 15 creado desde sus inicios para el desarrollo de páginas web y de plataformas webs, esto es importante, esto quiere decir, que tiene muchas funciones nativas que nos facilitan realizar ciertas acciones, como mandar un email, hacer peticiones a una URL con una sola línea de código, etc.

Por otra parte, es el único lenguaje de programación en el TOP 15 (de los más usados, sin contar con C puro) que no es orientado a objeto, esto es lo que ha hecho principalmente que mucha gente “odie PHP”, ya que sin estar orientado a objetos, el código se encuentra “más desordenado”. Como solución actual, se usan frameworks (CodeIgniter, Laravel, etc), así como frameworks visuales (WordPress, Drupal, etc), todos ellos desarrollados en PHP.

Sobre dónde alojar un desarrollo en PHP, es sencillo y es que el 99% de los hostings tienen soporte para proyectos en PHP (a diferencia de otros lenguajes, que es mucho más complicado).

Por último, tenemos que comprender, que PHP es un lenguaje de programación, no es un framework, no es un entorno de trabajo (como .NET), lo que quiere decir que “per se”, una web no te funcionará cuando accedas con el navegador, ya que, de alguna forma, tienes que “enlazar el dominio a la carpeta dónde se encuentra el proyecto escrito en PHP”, a esto se le llama “servidor web” y para PHP normalmente se suele utilizar servidor web llamado Apache.

Ahora que ya hemos visto PHP, veamos qué es NodeJS.

## NodeJS en el desarrollo web

Lo primero que tenemos que entender de NodeJS, es que NodeJS no es un lenguaje de programación, NodeJS se parece más a un “framework de trabajo” (que no de programación).

El lenguaje de programación de NodeJS es JavaScript (ni más ni menos), entonces ¿Por qué se llama NodeJS? ¿En qué se diferencia de JavaScript?

Pues bien, si recordamos lo que hemos leído antes, para desarrollar un proyecto web en PHP, necesitábamos como mínimo dos aplicaciones, por una parte teníamos PHP (que ejecutaba nuestro programa escrito en el lenguaje de programación PHP) y por otra parte teníamos el servidor web (apache) que redirige las peticiones de nuestro dominio al PHP.

Pues bien, NodeJS “lo incorpora todo”, con un pequeño detalles: NodeJS no está especializado para el desarrollo web, el servidor web que puedes programar en NodeJS te puede servir tanto para páginas web, como para cualquier otra cosa, al igual que el lenguaje de programación (JavaScript), aunque puedes hacer todo, no está pensando “nativamente” para hacer desarrollos webs. Es por ello, que cuando se usa NodeJS, se suelen acabar realizando APIs y toda “la lógica” se hace en el navegador (parte del cliente). Es decir: NodeJS no está creado para el desarrollo web (aunque sí tiene soporte).

Que NodeJS sea en si mismo un servidor web, dificulta mucho que los hostings tal y como los conocemos, nos permitan de una forma fácil y sencilla subir nuestro código, ya que en NodeJS a diferencia de PHP, “no subiríamos el código”, sino que se subiría el código más el servidor web que luego tendríamos que “arrancar”, en resumen, casi no existen hostings que te permitan subir tu página web realizada en NodeJS.

Por último indicar, que a diferencia de PHP, NodeJS, al utilizar JavaScript, sí que está orientado a objetos desde el inicio.

## PHP vs NodeJS

Bien, ya hemos visto las características, tanto de PHP como de NodeJS, pero ahora bien, a la hora de un desarrollo web ¿Cuál es mejor?

Para resolver esta duda, veamos las ventajas y desventajas de cada uno de ellos.

### Ventajas de usar PHP frente a NodeJS

- Entre las principales ventajas de utilizar PHP frente a NodeJS nos encontraríamos:
- El coste/hora de un programador es más barato.
- El desarrollo es más rápido en PHP.
- El 99% de los hostings tienen soporte para PHP.

### Ventajas de usar NodeJS frente a PHP

Por otra parte, si vemos la ventaja de utilizar NodeJS nos encontramos principalmente con dos:

- ¡Velocidad! NodeJS soporta hasta tres veces más peticiones que PHP.
- Un solo lenguaje de programación, en PHP necesitaremos programar en PHP en el backend y JavaScript en el frontend (tendremos que aprender dos lenguajes de programación), en cambio con NodeJS, tanto en el frontend como en el backend sólo necesitaremos programar en un lenguaje de programación.

### PHP vs NodeJS desde la empresa

Muchos programadores piensan que NodeJS es mejor para todo, es más rápido, sólo hay que usar un lenguaje de programación y además nos ahorramos el servidor web (apache), no obstante, si nos paramos a pensar desde el lado de la empresa, veremos que quizás PHP es mejor solución para “depende qué proyectos”.

Por ejemplo ¿La empresa tiene a alguien que sepa manejar servidores? ¿O lo tiene que subcontratar? Pensemos que la mayoría de las instalaciones de NodeJS van sobre un servidor virtualizado, por lo que hay que aplicar costes de mantenimiento, seguridad, etc. Costes que con un hosting nos ahorraríamos.

Por otra parte, el precio hora de un desarrollador de NodeJS es más caro que el de un programador PHP, sin contar que PHP tiene más frameworks de desarrollo “maduros”, donde está el código bien organizado y estandarizado, para que programadores que nunca antes han tocado un proyecto en concreto puedan empezar a desarrollar a las pocas horas.

## Resumen

En definitiva, como podemos observar, ningún lenguaje de programación “es mejor” que otro, todos depende, para qué lo vamos a utilizar, no es lo mismo que hagamos un desarrollo propio y nosotros lo vayamos a mantener, que lo hagamos para una empresa.
