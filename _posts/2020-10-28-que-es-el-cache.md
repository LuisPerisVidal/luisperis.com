---
layout: post
title: "¿Qué es el caché?"
date: 2020-10-28 11:58:36 +0000
permalink: /que-es/el-cache/
description: "Qué es la caché, cómo funciona este sistema de software o hardware y por qué permite acceder a la información de forma más rápida."
categories: ["Programación"]
---

El caché es un sistema, ya sea software o hardware, por el cual se permite acceder a una información específica de una manera más rápida.

## ¿Qué es el caché?

Como bien hemos indicado anteriormente, el caché es un sistema que nos permite acceder a una información de manera más rápida que si no tuviéramos caché.

Principalmente, existen dos tipos de caché: una se encuentra en la CPU, que es el sistema operativo y el procesador el encargado de ‘cachear’ toda aquella información que cree que va a tener que volver a utilizar; y la otra, es la memoria RAM, más utilizada por las aplicaciones. Recordemos que la memoria RAM es mínimo 200 veces más rápida que el disco duro.

Por otra parte, aunque podemos complicar mucho la definición de caché, realmente se puede resumir en los dos siguientes usos:

### El caché, como duplicador de datos

Cuando estamos todo el rato accediendo a una misma información, por ejemplo, a un listado de pacientes que sale de una base de datos, podemos duplicar dicha información en la caché, ahorrándonos así la conexión a la base de datos, descargar los resultados y mostrarlos.

Este es un uso muy típico del caché, simplemente clona/duplica los datos, para que cuando queramos volver acceder, tengamos la información en microsegundos y no en segundos.

### El caché, para almacenar resultados

El segundo uso del caché (que muchas veces está relacionado con el primero), es cuándo queremos ‘cachear’, el resultado de unas operaciones.

Por ejemplo, imagínate que tienes una página web en wordpress y tienes 10,000 visitas a la hora. Por defecto, wordpress atenderá cada visita, hará unas 200 consultas a la base de datos por cada visita (2 millones cada hora), procesará dichas consultas con PHP, montará el HTML/CSS y lo devolverá.

No obstante, si la web está cacheada, simplemente en la primera visita procesará todo (200 consultas) y luego, antes de mostrar la web, ‘la guardará/cacheará’. Así, el resto de visitas simplemente devolverá el HTML/CSS que se devolvió la primera vez, pasando de 2 millones de consultas a la hora a 200. Además, ganando muchísimo tiempo de procesamiento y no saturando el servidor.

### El caché en el navegador

Cada vez que accedemos a una página web se nos descargan bastantes elementos, imágenes, ficheros javascript y css (diseño), fuentes, iconos, etc.

El problema es que cada vez que hacemos click en un enlace de la web, se nos volvería a descargar todos los elementos, ya que sigue necesitando de esos ficheros para que la web se vea bonita.

Es por ello que, el navegador, sin decirnos nada, cachea todos los ficheros estáticos, para así cargar la página web más rápido y ahorrarnos ancho de banda (al no tener que descargarlos de nuevo).
