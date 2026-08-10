---
layout: post
title: "Leer un ePub con PHP"
date: 2017-01-26 12:24:59 +0100
permalink: /leer-epub-php/
description: "Imagínate que tienes que desarrollar un software donde necesitas, con PHP, leer los capítulos de un libro con formato ePub. Esto podría parecer muy complicado y podríamos pensar que es totalmente..."
categories: ["Programación"]
---

Imagínate que tienes que desarrollar un software donde necesitas, con PHP, leer los capítulos de un libro con formato ePub. Esto podría parecer muy complicado y podríamos pensar que es totalmente imposible de hacer sin una librería externa (como sucede con PDF), no obstante, en este artículo veremos que leer un ePub con PHP puede ser muy sencillo.

## **Leer un ePub con PHP**

Antes de continuar, para los lectores que se encuentren más perdidos tenemos que indicar que el ePub es un formato de libro electrónico de formato abierto, además es uno de los más distribuidos, por lo que, si queremos leer (parsear) un libro con PHP, debemos de saber cómo podemos leer un ePub.

Pero ¿Sabéis la buena noticia? ¡Es fácil!

Que la extensión del fichero sea .epub no quiere decir que sea un documento como Word o PDF, de hecho, es mucho más fácil: Un fichero .epub no es más que un fichero .zip al que le han cambiado la extensión.

Esto de cambiar las extensiones a los ficheros .zip no es nuevo, Firefox y Chorme trabajan de una forma similar con sus extensiones.

Pero entonces, nos queda la gran duda ¿Qué hay dentro de ese fichero comprimido? ¡Ajá! Pues muy sencillo, ficheros XML, que además usan los estilos CSS y las extensiones suelen ser .XHTML, vamos, nada que no podamos manejar con facilidad ¡Puro HTML!

Así que, ahora que comprendemos como funciona más o menos el ePub, vamos a ver cómo podemos parsearlo con PHP.

## **Descomprimiendo el ePub con PHP**

Lo primero que tendremos que hacer será descomprimir el fichero ePub en una carpeta temporal, lo trataremos exactamente igual que si fuera un zip (no es necesario ni cambiarle la extensión).

Para ello se recomienda utilizar la clase nativa ZipArchive de PHP.

<?php
$zip = new ZipArchive;
$zip->open(‘leer\_epub\_con\_php.epub’)
$zip->extractTo(‘/carpeta/temporal/’);
$zip->close();
?>

## **Leyendo la estructura de un ePub con PHP**

![leer epub php](/assets/img/2017/leer-epub-php.jpg)

Perfecto, ya tenemos nuestro ePub descomprimido ¿Qué nos tocará hacer ahora?

Pues bien, ahora nos tocará abrir (parsear) un fichero llamado «content.opf» ¿Y qué es?

Pues en definitiva, el fichero **content.opf** es un fichero XML que contiene toda la información del libro, entre lo más destacable nos encontramos con:

- Título del libro
- Autor del libro
- Idioma del libro
- Personas que han contribuido en el libro
- Tipo de libro (divulgación, literatura, etc.)
- Descripción del libro
- Fecha de publicación
- Fecha de la última edición del libro
- Ruta (URI) de la imagen (.jpg) de la la portada

Pero no termina ahí, este fichero XML contiene un nodo (etiqueta) que contiene todos los capítulos ordenados, pensemos que cada capítulo es un fichero .XHTML, por lo que necesitaremos saber la ruta y nombre de cada fichero de cada capítulo. Estos datos nos los da también el ficho «content.opf».

## **¿Cómo leer un ePub con PHP?**

![leer epub php xhtml](/assets/img/2017/leer-epub-php-xhtml.jpg)

Bueno, una vez ya tenemos el fichero ePub descomprimido y una vez hemos guardado en un array (por ejemplo), los datos del fichero content.opf sólo nos queda parsear el libro capítulo a capítulo.

Esto ya dependerá qué es lo que quieras hacer con el ePub, veamos dos ejemplos:

### **Pasar un ePub a HTML con PHP**

Si esto es lo que buscas ¡Ya lo tienes todo hecho! Cada capítulo del epub tiene extensión .XHTML y está en formato HTML (incluyendo los CSS), así que podrás mostrarlo tal cual, no tendrás que preocuparte de mucho más.

### **Pasar un ePub a PDF con PHP**

Esto ya es un poco más complicado puesto que PDF es un formato cerrado, pero… ¡Tampoco hay de qué preocuparse!

En este caso podemos coger cualquier librería pasar [PDF a HTML con PHP](/crear-pdf-desde-html-php/) y, eso sí, antes de pasarlo a PDF necesitaremos juntar todos los ficheros en uno, para ello podemos hacer un foreach (y recorrer así todos los ficheros del array).

## **Resumen y conclusión**

Como podemos observar, leer un ePub con PHP puede resultar muy sencillo, tan solo tenemos que comprender que un .epub son ficheros XML y xHTML guardados en un ZIP.

Si tienes cualquier duda, recuerda que soy programador PHP y puedes contactar conmigo sin problemas.
