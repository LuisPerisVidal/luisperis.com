---
layout: post
title: "HTML .Next ¿Qué nos traerá HTML en un futuro?"
date: 2017-02-06 11:45:14 +0100
permalink: /html-next-nos-traera-html-futuro/
description: "HTML es un lenguaje de etiquetas que va cambiando, de hecho, oficialmente, va por la versión número 5, no obstante, ya se están probando algunas nuevas funciones que se podrían implementar en un..."
categories: ["Rendimiento y Aplicaciones"]
---

HTML es un lenguaje de etiquetas que va cambiando, de hecho, oficialmente, va por la versión número 5, no obstante, ya se están probando algunas nuevas funciones que se podrían implementar en un futuro.

## **¿Cómo funciona la evolución del HTML?**

Antes de ver alguna de estas nuevas funciones, es importante entender, cómo funciona la evolución del HTML, es decir, qué factores existen detrás de cada nueva versión.

Pues bien, hay dos elementos que tenemos que tener en cuenta, por una parte, está la W3C, que para decirlo en palabras llanas «es el consorcio de Internet» y serán los encargados de lanzar «oficialmente» las diferentes versiones de HTML.

Por otra parte, tenemos a los navegadores, que son realmente quienes innovan gracias a la competencia entre los principales (Firefox y Chrome), crean nuevas etiquetas, nuevas utilidades, etc. Y Cuando los programadores adoptamos esas ayudas, es cuando, pasado un tiempo, se implementan en la siguiente versión de HTML.

Es decir, los navegadores muchas veces van a su bola innovando y sólo cuando algo ha tenido buena acogida y además los otros navegadores lo han implementado, es cuando puede pasar a formar parte de la siguiente versión de HTML.

¡Pero ojo! ¡Pueden pasar muchos años!

De hecho, por ejemplo, HTML5 lleva desde 2012 dándose a conocer, incluso habían, academias online que te lo enseñaban, pues bien… HTML5 ¡No existía! No fue casi hasta comienzos del 2015 que se aprobó y se estandarizó.

## **HTML.Next ¿Qué nos traerá el HTML?**

Es importante indicar, que no se sabe cómo se llamará la siguiente versión de HTML ni qué novedades tendrá, las novedades que vamos a ver en este artículo, simplemente son un borrador de peticiones (que están en pruebas) y puede que se implementen, pero también puede, que muchas de las novedades no se implementen.

Antes de continuar, tengo que indicar, que, mientras la versión HTML5 estaba más pensada en que pudiéramos programar más rápido y que tuviéramos más opciones sin necesidad de usar el Flash (acceso al micrófono, cámara, etc.). Esta nueva versión estará más enfocada en aumentar la velocidad de las páginas web, de un modo nunca visto hasta ahora.

Así que ¡Vamos a ver que se está cocinando!

## **CSS por defecto**

Cada navegador tiene un CSS por defecto, por lo que si queremos crear nuestro CSS tendremos que hacer un CSS Reset, que, en definitiva, esto iguala el valor de las etiquetas de todos los navegadores, para que entonces, podamos comenzar a crear nuestro CSS.

Pues bien, una de las propuestas, es que existan unas «hojas de estilo por defecto» y esto estaría genial, ya que, imagínate que se añade el bootstrap, simplemente con una línea similar a la siguiente se nos cargaría:

<LINK href=»#bootstrap» rel=»stylesheet» type=»text/css»>

Pensemos en dos cosas, lo primero, que nos ahorraríamos parte de la transferencia al no tener que mandarle el fichero y por otra otra, al tener en local y no tener ni que hacer la petición HTTP, la página web se cargaría muchísimo antes.

## **Anchors junto a CSS**

Otra cosa interesante que nos puede traer la nueva versión de HTML son las anclas (anchors), esto es cuando pulsamos sobre un enlace que tiene una URL seguido de un #seccion ¿Te suena?

Pues hasta ahora, estábamos limitados puesto que teníamos que poner un ID en la parte de la página donde queríamos que se cargara, no obstante, es posible que en el futuro podamos indicarle «dónde tiene que ir» en la página web mediante un código pseudo-CSS.

Veamos cómo sería:

<a href=»luisperis.com/articulo.html$section>div>p»> Ir al artículo</a>

## **Descomprimir ZIP en el navegador**

Sin duda, esto es algo más que interesantes, aunque bien es cierto que ahora se puede hacer, actualmente requiere cagar una librería JavaScript y no es nativo del navegador, por lo que es más lento.

Lo que se propone ahora es crear una etiqueta HTML que descomprima en local el ZIP, ojo, que esto tiene mucho futuro, sobretodo porque podríamos mandarle desde el servidor un ZIP (comprimido, menos transferencia) y luego que se descomprima en local.

La etiqueta que se propone es similar a esta:

<decompress href=»https://luisperis.com/familia-feliz.zip»>

## **Tratamiento de imágenes en HTML**

Hasta ahora, si queríamos tratar una imagen en cliente (zoom, recortar, etc.), necesitábamos o plugins externos, o trabajar directamente con CANVAS y JavaScript.

No obstante, es posible que en la próxima versión de HTML tengamos etiquetas especiales para trabajar con imágenes.

Imagínate, que el usuario sube una foto y de una forma nativa, en el navegador, puede centrarla, editarla, recortarla y subirla ¡Sin Javascript! Si se implementa algo de este estilo, supondría una gran ayuda para los programadores, y de nuevo, haría Internet más rápido, ya que lo procesaría el navegador y no Javascript que siempre lo hará más lento al ser un lenguaje interpretado.

## **WYSIWVG en ti creemos**

![html next wysiwyg](/assets/img/2017/html-next-wysiwyg.jpg)

Y sin duda, lo mejor, para el final, una de las cosas que lleva unos cuantos años planteándose, es crear un WYSIWVG nativo ¿Y qué es esto?

Pues bien, son las siglas de «What You See Is What You Get», es decir, hace referencia a los editores online cómo el de WordPress (que tiene uno parecido al Word).

La verdad es que es todo un logro que existan estos editores, ya que se tienen que cargar muchos CSS, JavaScript e imágenes, además, el procesamiento que requiere es muy elevado. De hecho, si eres usuario de WordPress, cuando vas a la sección de nueva página, lo que más tarde en cargar (si no lo tienes cacheado) es justamente el editor.

Pues bien, ya hace unos años que se ha propuesto crear un editor nativo con la siguiente etiqueta:

<textarea type=»wysiwyg»>

Si se consigue implementar, tendría unas repercusiones en cuanto a la velocidad de los sitios bastante importantes, además de que muchos sitios web, utilizarían esta etiqueta, por ejemplo, en formularios de contactos, puesto que la única razón por la cual, ahora no la usan, es porque el esfuerzo que les supone programarla es mayor que los beneficios que puedan obtener (que únicamente sería estético).

## **Resumen y conclusión**

Como podemos observar, el futuro de la web tiene muy buena pinta, pero ojo, aunque podamos escuchar cantos de sirenas muy pronto y los navegadores empiecen a implementar estas opciones, no será, mínimo, hasta 2022 que podamos tener un nuevo estándar.
