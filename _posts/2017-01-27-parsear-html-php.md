---
layout: post
title: "Parsear HTML con PHP"
date: 2017-01-27 12:33:57 +0100
permalink: /parsear-html-php/
description: "En muchas ocasiones necesitaremos acceder a la información que guarda un HTML (tu título, los valores de una tabla, etc. No obstante, nos encontramos frente a un problema ¿Cómo podemos parsear..."
categories: ["Otros temas"]
---

En muchas ocasiones necesitaremos acceder a la información que guarda un HTML (tu título, los valores de una tabla, etc. No obstante, nos encontramos frente a un problema ¿Cómo podemos parsear HTML con PHP?

## **Parsear HTML con PHP**

Para que no quepa duda, cuando hablamos de Parsear HTML con PHP, nos referimos a coger HTML y poder acceder a la información que guarda todas sus etiquetas con PHP. Gracias a esto, podremos conseguir el título de la página (y guardarlo en una variable PHP), podremos coger información de las tablas, de DIVS, etc.

¿Y para que se utiliza esto? Pues se utiliza para muchísimas cosas, por ejemplo, podrás crear un robot que reviste una web que contenga más de 100.000 letras de canciones y que el robot se dedique a parsear la web y crear una base de datos en tu servidor con dichas canciones ¿Te imaginas lo que te costaría hacerlo manualmente?

Lógicamente, con PHP (al igual que con cualquier otro lenguaje de programación) podremos parsear una web, ya que el HTML, en definitiva, es XML, no obstante, en vez de crear nuestro propio programa, suele ser mucho más rápido utilizar alguna librería de PHP que haga esto, por ejemplo «PHP Simple HTML DOM Parser».

## **PHP Simple HTML DOM Parser**

Esta librería no está formada únicamente por un fichero .php que nos permitirá de manera extremadamente sencilla parsear código HTML con PHP.

Es importante indicar que esta librería es totalmente gratuita y open-source por lo que no tendrás que pagar absolutamente nada.

Al estar formado únicamente por un fichero, sólo tendremos que incluirlo en nuestro proyecto, además de ser fácilmente configurable para frameworks PHP como pueden ser CodeIgniter, Laravel, etc.

## **¿Cómo utilizar PHP Simple HTML DOM Parser?**

Esta librería está creada con objetos (si no sabes lo que son, recomiendo la lectura [¿Cómo aprender PHP?](/como-aprender-php/)) ¿Esto qué quiere decir?

Muy simple, que sólo tendrás que hacer dos cosas cuando quieras utilizar esta librería, la primera será incluirla en tu proyecto y la segunda será instanciar el objeto, no obstante, esta librería sí que tiene una peculiaridad y es que los objetos no se instancia mediante el famoso «new objeto();», sino que se instancian mediante una función que devuelve un objeto.

Veamos un ejemplo:

<?php

include\_once(«simple\_html\_dom.php»);

// Devuelve un objeto a $html
$html = file\_get\_html(‘http://luisperis.com’);

?>

¡Así de sencillo! Ya tendríamos inicializado un objeto, listo para empezar a pasear la web.

## **Ejemplos de PHP Simple HTML DOM Parser**

Perfecto, ahora que ya sabemos cómo utilizar PHP Simple HTML DOM Parser, vamos a ver las tres formas en las que lo podemos cargar contenido HTML:

- Cargando un string con el HTML
- Cargando un fichero .html desde nuestro servidor
- Cargando una URL

Veamos cómo quedaría el código:

<?php

// Creamos el objeto a partir de un STRING
$html = str\_get\_html(‘<html><body>¡Hola mundo!</body></html>’);

// Creamos el objeto a partir de una URL
$html = file\_get\_html(‘http:// luisperis.com/’);

// Creamos el objeto a partir de un fichero
$html = file\_get\_html(‘miweb.htm’);

?>

 ¡Perfecto! Ya tenemos inicializado el objeto correspondiente con el contenido HTML ¿Qué podemos hacer ahora?

Pues veamos algunos ejemplos de lo que podemos hacer con el objeto que tenemos en la variable $html:

<?php

// Recuperaremos en un array todos los enlaces que encuentre
$ret = $html->find(‘a’);

// Recuperaremos el div con ID «texto\_principal»
$ret = $html->find(‘div[id= texto\_principal]’);

// Recupera un array con todos los párrafos de texto.
echo $html->find(‘p’);

?>

## **Resumen y conclusión**

Como podemos observar, parsear código HTML con PHP no es nada complicado si conoces las herramientas que nos puedan ayudar a dicha tarea.

No obstante, si tienes cualquier pregunta, no dudes en ponerte en contacto conmigo.
