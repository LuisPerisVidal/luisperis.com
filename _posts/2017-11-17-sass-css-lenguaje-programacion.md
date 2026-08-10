---
layout: post
title: "SASS: CSS como lenguaje de programación"
date: 2017-11-17 23:53:09 +0100
permalink: /sass-css-lenguaje-programacion/
description: "Para quien no lo haya utilizado nunca, el CSS está genial, es un lenguaje de estilos (que no de programación) que nos permite hacer las páginas web más bonitas. Nos permite indicar colores,..."
categories: ["Programación"]
---

Para quien no lo haya utilizado nunca, el CSS está genial, es un lenguaje de estilos (que no de programación) que nos permite hacer las páginas web más bonitas. Nos permite indicar colores, anchura, altura, imágenes, posiciones, tamaños de letras ¡Todo lo que tenga que ver con el diseño!

De hecho, CSS ha evolucionado muchísimo, sobretodo para tener sólo 20 años de edad (que es relativamente poco), pero la verdad es que al ser un lenguaje de estilos y no un lenguaje de programación, cuando hacemos proyectos más o menos grandes, se nos puede quedar pequeño.

Por ello, en este artículo vamos a ver CSS como lenguaje de programación.

## Problemas que tiene CSS

Como comentaba en la introducción, CSS está genial como lenguaje de estilos, podemos hacer realmente virguerías, incluso tenemos las media-queries para que, dependiendo si se visualiza en un móvil o en un ordenador, se apliquen diferentes estilos.

Lo que sucede es que esto está perfecto cuando tenemos un CSS con 200 líneas de código, pero si tenemos más de 1000, empieza a complicarse la cosa ¿No? ¿Cómo podemos ordenar el código?

Pues bueno, ahora imagínate grandes plataformas como Amazon, eBay, Facebook, hablamos de cientos de miles de líneas de código CSS ¡Tenemos que ordenarlo de alguna forma!

Y no sólo es que CSS no permite ordenar de una forma “potente” el código, sino que además ¡No tenemos variables! Y esto es muy importante.

Imagínate por un segundo que Facebook, que tiene un color azul, por estudios que realiza, se da cuenta que si pone un azul un poco más oscuro, la gente se siente más cómoda y se queda más tiempo en la web (puro marketing). ¿Qué tendría que hacer? ¿Revisar 250.000 líneas de código y cambiarlos todo? ¡Mejor sería tener una variable con el color hexadecimal y simplemente cambiar ese valor y que se cambie en todas partes!

Justo, para todo esto, tenemos SASS ¡Veamos qué es!

## SASS: CSS como lenguaje de programación

Para los que no sepan lo que es SASS, empezaré diciendo que es una especie de CSS dopado. Es como si juntáramos todo CSS y un poco de los lenguajes de programación.

Es importante que entendamos algo, los navegadores no pueden ejecutar SASS, sólo pueden ejecutar CSS.

Por lo que, tendremos que diseñar nuestra web con SASS y luego, con alguno de los muchos programas que existen, nos «traducirá» SASS a CSS, y ya, ese fichero es el que podemos utilizar en el navegador.

Así que ¡Veamos que podemos hacer realmente con SASS!

## Las ventajas de utilizar SASS

Sin duda, utilizar SASS tiene muchísimas ventajas, pero para no hacer un artículo, kilométrico, veamos las principales y las que yo utilizo con mayor frecuencia:

### Variables en CSS

Sin duda, una de las ventajas por la que cada vez más empresas utilizan SASS en vez de CSS, es por la posibilidad de utilizar variables ¡Imagínate el poder!

Puedes declarar todas las variables que quieras (colores, tipo de letra, etc.) y luego utilizarlas en el código, en el momento que quieras, así, si algún día quieres cambiar el tipo de letra o el color, no tendrás que revisar miles de líneas, sino, simplemente cambiar ese valor.

Veamos un ejemplo:

**$font-stack:** Helvetica, sans-serif
 **$primary-color:** #333

body

font: 100% **$font-stack**
 color: **$primary-color**

Tenemos que pensar que esas variables las podremos utilizar siempre que queramos, no una sola vez ¿Os dais cuenta del potencial?

### Estructura anidada

Una de las cosas que más rabia me da CSS es que no siga el patrón de las herencias como en HTML, es decir, en HTML, si quiero un <h1> dentro de un <div> simplemente tendría que meterlo dentro, por ejemplo:

<div class=»inicio»>

<h1>Soy un título</h1>

</div>

No obstante, en CSS, como ya sabemos, no podemos meter selectores dentro de selectores, si no que tendríamos que hacer lo siguiente

.inicio{

background: red;

}

.inicio h1{

color: blue;

}

Pues bien, con SASS ¡Eso se acabó! Podemos hacerlo de la siguiente forma

.inicio

background: red

h1

color: blue

Aunque es un poco incómodo que no tenga los corchetes como delimitadores { }, sin duda es mucho más potente, ya que nos permite agrupar un contenido de forma muy sencilla.

Recordemos que cuando hacemos una página web importante y con muchas páginas/secciones, si no anidamos todo correctamente, se nos ejecutará código CSS donde no queremos ¡Gracias a SASS nos ahorramos este problema!

## Importar ficheros

Otra gran ventaja que incorpora SASS es que nos permite juntar varios ficheros en uno solo.

Es decir, es posible que para ordenar todo el código, hayamos creado diferentes ficheros (para diferentes páginas de nuestra web), pues bien, gracias a SASS, podemos hacer, que una vez esté todo el código listo, se genere un único fichero CSS con todo el código de todos los ficheros.

Gracias a esto te ahorrarás que al visitar tu web la gente haga diferente peticiones a diferente ficheros CSS, es decir, conseguirás que tu web, vaya un poco más rápida.

## SCSS: Otro formato para utilizar SASS

SASS está genial, de verdad, está muy bien, pero a mucha gente (yo incluido) hay algo que nos chirriaba y no nos gustaba y es que no respetara la sintaxis de CSS, es decir, no soportara las llaves { }, ni el punto y coma tan característico ;

Así que lo que hicieron des, fue crear dentro de SASS, una nueva estructura de código llamada SCSS (Súper CSS), que aunque parezca difícil de entender, lo podemos resumir en que podemos usar la sintaxis de CSS para SASS.

Por ejemplo, este código SASS:

.inicio

background: red

h1

color: blue

Pasaría a ser el siguiente en SCSS:

.inicio{

background: red;

h1{

color: blue;

}

}

Y al compilarlo en CSS quedaría así:

.inicio{ background: red; }
.inicio h1{ color: blue; }

¿Increíble verdad?

## Resumen y curso

Como podemos ver, SASS/SCSS es muy potente, y crea un antes y un después a la hora de diseñar páginas web con CSS, por ello mismo, por si deseas aprender a utilizarlo he publicado un curso donde podrás aprender todo lo que hemos visto en este artículo y muchísimas cosas más.

**Conseguir videotutorial SASS/SCSS**
