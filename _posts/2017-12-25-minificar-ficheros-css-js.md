---
layout: post
title: "¿Qué es y cómo minificar ficheros CSS y JS?"
date: 2017-12-25 14:15:44 +0100
permalink: /minificar-ficheros-css-js/
description: "Es posible hayas podido escuchar la palabra minificar (minify en inglés) y quizás incluso sepas que es muy positivo para el posicionamiento ¡Incluso Google lo indica! Pero ¿Qué es? ¿Cómo de..."
categories: ["Programación", "Rendimiento y Aplicaciones"]
---

Es posible hayas podido escuchar la palabra minificar (minify en inglés) y quizás incluso sepas que es muy positivo para el posicionamiento ¡Incluso Google lo indica! Pero ¿Qué es? ¿Cómo de importante es? ¿Qué ventajas tiene minificar? Y lo más importante ¿Cómo podemos minificar nuestros ficheros CSS?

Pues bien, en esta guía intentaré solventar todas vuestras dudas.

## ¿Qué es minificar un fichero CSS?

Antes que nada, empecemos por el principio ¿Qué es minificar un fichero CSS?

Pues bueno, la respuesta «oficial» podría ser algo así como «minificar es la técnica por la cuál un fichero CSS o JavaScript se comprimen lo máximo posible sin perder funcionalidades».

Pero bueno, esto puede ser algo complejo ¿Comprimir? ¿En zip? Para que no haya dudas, os voy a incluir mi definición «de pueblo», que no es tan bonita, pero se entiende mejor: «Minificar, es reducir el tamaño de un fichero, eliminando todos los espacios, saltos de línea, tabulaciones y comentarios, creando un fichero (en la mayoría de casos) de una sola línea».

Ajá, es decir, sigue teniendo extensión «.css», lo que pasa es que se elimina todo lo que introducimos los humanos pero los ordenadores no necesitan, por ejemplo, los comentarios, las tabulaciones, algunos espacios y los saltos de línea (enter), nada de esto lo necesita el navegador para procesar CSS, simplemente lo ponemos porque somos humanos y necesitamos hacerlo de una forma ordenada 🙂

Ahora bien ¿Qué ventajas tiene minificar CSS? ¡Vamos a verlas!

## Ventajas de minificar CSS

Muchos piensan que la principal ventaja es que se reduce el tamaño del fichero (sobre un 20%), pero aunque esto es totalmente cierto, no es ni de lejos la principal ventaja, veamos cuales son.

### Minificar CSS para mejorar el posicionamiento (SEO)

Sin duda, hay muchas personas que no le importa que el fichero ocupe unos kbs de más o que sea unas milésimas de segundos la web un poco más lenta, sin duda, para muchos, lo más importante ¡Es el SEO, que la gente conozca la web!

Pues bien, incluso el propio Google no sólo recomienda minificar los ficheros CSS, sino que además deja bien claro que es algo que tiene en cuenta a la hora de posicionar la página web.

Lógicamente no es lo más importante, no nos engañemos, pero es algo que ayudará a que tu página web esté un poquito mejor posicionada.

### Carga de la web más rápida

Otro punto a tener en cuenta, ya no a nivel de SEO, sino de la experiencia del usuario es la velocidad de carga de la página web.

Pues bien, como es lógico, cuanto menos ocupa el CSS, más rápido se transferirá y más rápida será la página web, mejorando así la experiencia del usuario.

### Seguridad ante robos

Una de las razones por las que recomiendo minificar es porque así harás que robar tu código CSS (o JavaScript) sea más complicado.

Ya que, sí, podrá descargarlo, no obstante luego al abirlo, ya no estarán los comentarios (indicando como está organizado), además de que será ilegible para humanos, ya le tendrás que forzar a que haga un minificado inverso.

## ¿Cómo minificar ficheros CSS?

Bueno, ya estamos convencidos de que hay que minificar los ficheros CSS, no obstante, ahora nos encontramos con un problema ¿Como podemos minificarlos?

Pues bien, no hay de que preocuparse, hay muchisimas formas de hacerlo, incluso google tiene su propia herramienta.

¡Veamos las principales opciones!

### Minificar CSS online

Una de las opciones más rápidas (aunque quizás menos profesionales) es hacerlo desde cualquier página web que de esta opción. Por ejemplo la web [cssminifier](https://cssminifier.com/) es genial para esto.

Simplemente, copias el código CSS en la columna de la izquierda de la web ¡Y listo! Te aparecerá el código minificado en la parte de la derecha.

Personalmente no me gusta esta opción ya que si luego cambias algo en el CSS general, tendrás que volver a la página web, introducir el código otra vez. Para para cosas rápidas, está genial.

### Configurar hosting/CDN para minificar CSS

Otra opción pasaría por configurar el hosting donde tengamos alojada la web para que cada vez que detecte una petición CSS, le mande una versión del fichero CSS minificado (ojo, no todos los hostings tienen esta opción).

También, si eres un usuario avanzado y has configurado un CDN (como un servidor que está entre el cliente y el servidor), muchas veces, empresas como cloudflare tienen la opción de servir a los visitantes de tu web los ficheros minificados (sin cambiar los del servidor).

### Minificar CSS profesionalmente con un programa

Sin duda, una de mis opciones preferida para minificar ficheros es utilizar algún programa para windows/Mac, como por ejemplo, Koala.

Gracias a estos programas no sólo puedo minificar, sino que además detecta cuando has actualizado el CSS original y te crea/actualiza un fichero minificado. Así podrás probar tu fichero normal y luego simplemente añadir a tu web el fichero minificado.

Además de todo esto, te permite muchas más opciones, como por ejemplo juntar todos los ficheros CSS en uno sólo minificado.

Igualmente, recordad que en el curso de SASS aprenderemos a utilizar el Koala de forma profesional.
