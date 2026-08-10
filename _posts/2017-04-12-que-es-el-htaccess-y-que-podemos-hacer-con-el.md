---
layout: post
title: "¿Qué es el .htaccess y qué podemos hacer con el?"
date: 2017-04-12 07:54:18 +0100
permalink: /que-es-el-htaccess-y-que-podemos-hacer-con-el/
description: "Cuando nos metemos de lleno en el desarrollo web, descubrimos que existe un fichero llamado «.htaccess» y que tiene unas propiedades para los alojamientos, cuanto menos, curiosas. Así que en este..."
categories: ["Rendimiento y Aplicaciones"]
---

Cuando nos metemos de lleno en el desarrollo web, descubrimos que existe un fichero llamado «.htaccess» y que tiene unas propiedades para los alojamientos, cuanto menos, curiosas. Así que en este artículo, vamos a ver en profundidad, qué es, cómo funciona y lo más importante: Qué es todo lo que podemos hacer con un fichero .htaccess

## ¿Qué es el fichero .htaccess?

Muchas personas saben que el fichero .htaccess hace que WordPress pueda tener URLs amigables o que hace funcionar algunos programitas, pero realmente, un porcentaje pequeño de las personas que utilizan .htaccess saben lo que realmente es.

Pues bien, .htaccess es un fichero que interpretar el servidor web Apache y sirve para cambiar la configuración y el funcionamiento del servidor web, es decir, no es para cambiar como funciona o que se muestra en una página web, sino lo que hace es cambiar la configuración de nuestro servidor web y cuando alguien nos visita, el servidor interpreta el .htaccess y procesa la petición HTTP con la nueva configuración.

Y ahora la pregunta del millón ¿Y por qué existe? ¿No sería mejor tenerlo bien configurado?

Pues la verdad es que sí y sería más rápido para el procesador, pero hay dos motivos por los que tiene que existir:

- Los hostings, por motivos de estabilidad y seguridad, no permiten que modifiques la configuración de Apache directamente.
- Por otra parte, es una cuestión de comodidad, así, cuando te migras de un servidor o hosting a otro, copiando ese ficherito, ya lo tienes todo listo y no tienes que modificar el fichero central o los virtualhost.

Ahora que hemos visto que es exactamente el .htaccess, vamos a ver qué podemos hacer con este fichero.

## .htaccess y las URL amigables

Sin ninguna duda, una de las razones por las que las personas utilizan el .htaccess es para tener una web con URLs «bonitas», sobretodo para wordpress (puesto que actualmente se usa en más del 50% de las webs).

Lo que hace realmente el .htaccess es modificar el servidor web Apache para que cuando alguien visita nuestra web, mediante nuestro dominio, se redirija todas las peticiones de manera interna, al fichero index.php y ya, este fichero, mediante el lenguaje de programación PHP, interpreta a que página quería ir el usuario y le procesa y muestra la información.

No obstante, no únicamente WordPress utiliza esta forma de trabajar (que de hecho, ni siquiera la crearon ellos), muchos frameworks, como por ejemplo CodeIgniter permite tener URLs amigables en tus proyectos gracias al fichero .htaccess

## Proteger una web con contraseña gracias a .htaccess

Otra de las funciones del fichero .htaccess (esta más desconocida), es que nos permite proteger una carpeta o página web mediante un usuario y una contraseña.

Esto es extremadamente beneficios, ya que, gracias a un simple fichero (de hecho, son dos), te permite tener una web cerrada al público que tenga la contraseña, este fichero lo puedes generar en unos segundos y es mucho más rápido hacer esto que tenerte que crear una base de datos y programar absolutamente todo.

Además que si no ponen el usuario/contraseña correctamente, ni si quiera se ejecutaría el index.php por lo que por motivos de seguridad, es una de las formas más recomendables.

## Declarando variables con .htaccess

Otra de la gran ventaja de utilizar .htaccess es que puedes declarar variables que luego se puedan leer desde cualquier fichero PHP.

Esto se utiliza para muchísimas cosas, por ejemplo, para indicar si el entorno donde se está ejecutando dicha aplicación es «desarrollo» o en cambio es «producción» y esto es sólo uno de los muchos usos que le podemos dar.

Otro uso sería por ejemplo, para poner los tokens de las APIs a las que nos conectemos (Facebook, Twitter, etc.), esto sería muy beneficios, ya que así, si nos roban el código fuente, nunca tendrían acceso a esa información.

## Redirecciones web mediante .htaccess

Los ficheros .htaccess también nos permite tratar el tema de las redirecciones.

Imagina que tienes una página web con un dominio, por ejemplo «dominio.es» y te das cuenta que al ser el dominio, «.es» te limita mucho, por lo que decides cambiartelo a «dominio.com», pero claro, ya tienes todo posicionado para el dominio .es ¿Cómo cambias esto? ¿Cómo puedes redirigir las visitas?

Pues bien, esto es muy sencillo de realizar con .htaccess, simplemente le indicas que cuando reciba una visita al «dominio.es» la redirija a «dominio.com» ¡Y ya está!

## Podcast

Lo que he contado en este artículo, es sólo la punta del icerber, el fichero .htaccess es muchísimo más potente, por ello, para no aburriros leyendo páginas y páginas de información, os he subido un podcast donde cuento todo esto y mucho más.
