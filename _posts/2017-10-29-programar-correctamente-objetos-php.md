---
layout: post
title: "Programar correctamente con objetos en PHP"
date: 2017-10-29 18:51:37 +0100
permalink: /programar-correctamente-objetos-php/
description: "Como muchos ya sabréis, además de ser emprendedor y programador freelance, también soy formador especializado en programación de aplicaciones web. Gracias a todo esto, veo mucho código, de muchas..."
categories: ["Programación"]
---

Como muchos ya sabréis, además de ser emprendedor y programador freelance, también soy formador especializado en programación de aplicaciones web. Gracias a todo esto, veo mucho código, de muchas personas, por lo que puedo ver los principales errores que se cometen una vez se empieza a programar objetos en PHP.

Así pues, este artículo, está destinado a todos los programadores junior que ya están programando con objetos en PHP (aunque algunos consejos podrían servir para otros lenguajes).

## ¿Qué es la programación orientada a objetos en PHP?

Para poder ser buenos programadores, tenemos que hacer una cosa antes de tocar nada, y es, entender correctamente qué es la programación orientada a objetos en PHP.

Sí, sí, puede parecer una locura, pero… Que levante la mano quien sepa la diferencia entre la programación orientada a objetos y la programación funcional o que es un lenguaje de programación multiparadigma.

Para que nos hagamos una idea de que son los objetos, a mi me gusta decir que los objetos son mini-programitas inteligentes e independientes.

Ojo a la definición “inteligentes e independientes”. Esto es algo que deberemos de recordar, ya que sino, los objetos acaban siendo “tontos y dependientes”.

## Programar correctamente con objetos en PHP

Sin duda hay decenas de consejos que podría dar para mejorar la programación con objetos en PHP, no obstante, en esta ocasión nos basaremos en los tres errores más comunes y que no respetan “mi definición” de “programas independientes e inteligentes”.

¡Vamos a verlos!

### Los métodos/funciones en PHP siempre tienen que devolver algo

El primer error que me encuentro mucho (pero mucho), es que muchos programadores crean métodos en los objetos que no devuelven nada.

Esto es posible, porque quizás el método guarda algo en la base de datos y no se espera ningún resultado o simplemente porque utiliza un “echo”, pero esto, sea como sea, es un error. Los métodos y las funciones siempre deberían de devolver algo.

Si por ejemplo, guardamos algo en la base de datos, podríamos hacer que devolviera un “true” si todo ha ido correctamente o un “false” si ha ocurrido algún error.

### Los métodos o funciones en PHP nunca deberían de mostrar nada

Otro error, relacionado con el primero, es que los métodos o funciones en PHP nunca deberían de mostrar nada, es decir, está terminantemente prohibido utilizar un “echo” o un “print” o cualquier otra función que muestre algo por pantalla.

¿La razón?

Pues que dejará de ser “independiente”, tenemos que ver los objetos como si fueran programas inteligentes e independientes, que podamos coger de un proyecto y llevarlo a otro, sin tocar nada de código.

Si le metemos un “echo”, entonces, si queremos usar ese método para mostrar otra cosa ya no nos dejará.

Entonces ¿Cómo lo debemos de hacer? Fácil ¡Con un return!

### Nunca recoger datos POST/GET en un objeto en PHP

Otro error que cometemos mucho los programadores, es que recogemos los datos de tipo POST/GET (es decir, de formularios normalmente) dentro del objeto y esto es erróneo.

Pero ¿Por qué no debe de hacer? Vale, pongamos un ejemplo:

Si recogemos un formulario de tipo POST, deberíamos de saber cuál es el nombre de las variables, pongamos que son $\_POST[“name”] y $\_POST[“apellido”].

Perfecto, cuando lo programemos funcionará ¿Pero qué sucederá si modificamos la interfaz? ¿Y si nos llevamos el objeto a otro proyecto?

Tarde o temprano tendremos errores. Entonces ¿Qué opciones tengo?

Pues muy fácil, simplemente tendremos que pasar las variables como argumentos de la función ¡Así de fácil!

## Repasemos conceptos

Como comprendo que un artículo puede ser mucho más complicado de entender que un vídeo, he grabado y subido un vídeo a youtube donde os explico con ejemplo estos tres errores y sus soluciones:

<div class="embed">
<iframe src="https://www.youtube.com/embed/IAxLZPpM7Dc?feature=oembed" loading="lazy" frameborder="0" allowfullscreen title="Contenido incrustado"></iframe>
</div>
