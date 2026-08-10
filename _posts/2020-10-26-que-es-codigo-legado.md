---
layout: post
title: "¿Qué es el código legado?"
date: 2020-10-26 08:08:42 +0000
permalink: /que-es/codigo-legado/
description: "Qué es el código legado, sus dos definiciones (estricta y social) y por qué aparece en casi todos los proyectos de software."
categories: ["Programación"]
---

Antes de seguir este artículo, tenemos que indicar que existen dos definiciones de “código legado”, una es la estricta y otra es “social”, ahora lo entenderemos.

## Definición estricta de código legado

La definición que podríamos encontrar en la RAE o en cualquier libro universitario sería que, el código legado es todo aquel código que ha sido desarrollado por otra entidad y que ahora debemos de continuar nosotros.

Por ejemplo, una empresa (A), pide a otra empresa (B), que le desarrolle un código. Cuando la empresa (A) no está contenta con el trabajo de la empresa (B), busca una tercera empresa ©, a la que pasarle el proyecto. Por lo tanto, la empresa (C) estaría recibiendo un código legado.

## Definición underground de código legado

Aunque la lógica nos indica que la definición anterior es la correcta, en la comunidad de programadores, muchas veces se hace hincapié en otra definición, que incluso aparece reflejada en libros de expertos.

*Nota: Como ya iremos viendo, los libros de externos en el área de la programación muchas veces difieren de lo que enseñan los libros universitarios. Yo soy partidario de estudiar ambos y quedarme con las ideas que más me gustan.*

La definición underground sería más bien: El código legado es todo aquel código (recibido) mal programado, sin documentación o sin test unitarios.

Aunque, estrictamente, un código legado es un código recibido y no importa tanto la calidad del código, sí que es cierto que, siempre que se habla (yo incluído) de código legado, suele ser de una forma negativa, por ejemplo: “Pfff… tenemos un código legado que no hay por dónde cogerlo”.

## ¿Por qué se hereda un código?

En la definición de código estricto ponemos un ejemplo de las razones por las que se obtiene un proyecto de código legado.

Pero, es muy interesante ahondar en todo lo que conlleva que una empresa decida quitarle el proyecto a un freelance o a otra empresa y te dé a ti (o a tu empresa). Principalmente, porque si la empresa trabaja bien, cumple plazos y presupuesto, ¿qué sentido tiene cambiar de proveedor?

Es por ello que, siempre que se cambia de proveedor y que se mueve un proyecto de una empresa a otra, es por descontentos en la calidad del software o en los tiempos de ejecución del proyecto. Es decir, de una forma o de otra, hay que preocuparse de la calidad del software.

Para que os hagáis una idea, yo, Luis Peris, tengo una consultora tecnológica, más del 50% de los clientes son clientes con código legado. Pues bien, en todos esos clientes, cero venían con el código documentado.

De ahí que la definición underground del código legado sea más peyorativa.

## ¿Qué tener en cuenta?

Imagínate que tienes un nuevo cliente y viene con código legado, ¿qué tienes que tener en cuenta?

Yo, principalmente me suelo fijar en tres cosas:

### Documentación

¿El código está documentado? Ojo, no hablo de comentarios en el código, sino de que esté documentado, por ejemplo, en formato wiki.

Si no es así, nosotros (mi empresa) no seguimos, le decimos al cliente el precio por documentar el proyecto, pero no seguimos viendo nada.

Si un proyecto no tiene documentación, no sabes por dónde te puede saltar.

### Frameworks

Otro punto a tener en cuenta es si está utilizando algún framework, ¿utiliza CodeIgniter? ¿Utiliza Laravel? ¿ReactJS? ¿VueJS?

Los frameworks, entre otras cosas, te obligan a organizar el código de una forma determinada. Justamente por si algún día, otra persona tiene que tocar el código.

En el caso de que no tenga framework, todo le saldrá más caro al cliente, por lo que es interesante recomendarle hacerlo bien desde cero.

### Es monolítico o microservicios

Por último, aunque esto no es tan importante, siempre hay que ver si se trata de un proyecto monolítico o es un microservicio.

La diferencia es que un sistema monolítico (todo el proyecto en una carpeta) es más difícil de escalar y, si está mal programado o no documentado, será más costoso.

En cambio, en un sistema basado en microservicios todo está separado, es independiente, por lo que es más fácil de trabajar con el código.

## ¿Vale la pena un código legado?

Si la empresa anterior no ha podido terminar el proyecto, entonces… ¿Vale la pena aceptar un código legado?

Esta es una pregunta que muchos programadores se hacen y, de hecho, algunos programadores directamente no aceptan código legado.

No obstante, personalmente, creo que es mucho más interesante darle siempre soluciones al cliente. Por ejemplo, ¿no está documentado? Se le indica: No te lo acepto si no pagas que me lo estudie y te lo documente.
