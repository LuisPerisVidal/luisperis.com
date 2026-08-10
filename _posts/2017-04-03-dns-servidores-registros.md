---
layout: post
title: "DNS: Servidores y registros"
date: 2017-04-03 07:26:17 +0100
permalink: /dns-servidores-registros/
description: "En muchas ocasiones, cuando contratamos nuestro primer dominio o nuestro primer VPS nos encontramos abrumados por todo lo que tenemos que aprender y por lo difícil que parece todo, justamente por..."
categories: ["Otros temas", "Rendimiento y Aplicaciones"]
---

En muchas ocasiones, cuando contratamos nuestro primer dominio o nuestro primer VPS nos encontramos abrumados por todo lo que tenemos que aprender y por lo difícil que parece todo, justamente por ello, en este artículo, vamos a despejar algunas dudas sobre los servidores DNS y los registros DNS, para mostrar, que realmente, no es tan complicado como pueda parecer.

## ¿Qué es un servidor DNS?

Para que nadie se pierda y para que realmente se entienda bien y podáis comprender lo fácil que es todo, empecemos por el principio y hagámonos la siguiente pregunta ¿Qué es un DNS?

Pues bien, las letras DNS vienen del inglés Domain Name Server, es decir «Servidor de nombre de dominio», vale, seamos realistas, esto no nos dice un carajo, entonces ¿Qué es un DNS?

Pues bien, para entender que es un DNS, tenemos que saber algo muy básico y es ¿Qué es una IP? Si has contratado un dominio o un hosting, sabrás lo que es una IP, la podríamos definir como «Una matrícula única que tienen los ordenadores para actuar por Internet y así, estar identificados y poder interactuar con otros ordenadores/servidores», es decir, es como un número de teléfono, si no lo sabemos, no podemos contactar con esa persona. Fácil ¿No?

Así que ahora que ya sabemos la importancia de las IPs, que tienen un formato tipo «52.32.102.12», podemos hacernos otra pregunta.

Si las IPs indican una dirección ¿Cómo al acceder a un dominio nos carga la web sin saber la IP? ¡Wola!

Esa es la pregunta del millón y la respuesta es simple: Gracias a los DNS.

En definitiva, los DNS, son bases de datos, que contienen el dominio y sus registros (IPs, para entendernos) o los dominios y los DNS a los que les tenemos que preguntar (es raro que un DNS tenga todos los dominios del mundo, pero sí que nos puede indicar que DNS tiene la información de ese dominio).

Así, cuando accedemos a luisperis.com por primera vez, nuestro ordenador preguntará a un DNS a qué IP corresponde ese dominio y una vez el DNS haya respondido, el navegador podrá mandar la petición al servidor de la web luisperis.com para que cargue dicha web.

## Los dominios y los servidores DNS

Perfecto, más o menos, a nivel usuario los DNS están claro, no obstante, cuando contratamos un dominio, nos obligan a que como mínimo le asignemos dos servidores DNS.

Y aquí la gente se pregunta, pero si tengo un dominio… ¿No debería indicarle la IP de mi servidor/hosting y ya está? ¡Pues no!

Realmente, podría haber sido así, pero… ¿Y si queremos subdominios en otros servidores? ¿Y si queremos que el email (que está asociado a nuestro dominio) lo gestione otro servidor o Gmail for Business? Ahhhh… no es tan fácil como parece.

Justamente, por este motivo, un dominio tiene que tener dos DNS de forma obligatoria (por si el primero falla) y serán en estos DNS donde ya configuraremos las IPs a donde tienen que apuntar (mediante los conocidos como registros).

## Conectar un dominio con un VPS

Normalmente, cuando contratamos un hosting, no hay problemas, ya que el proveedor está obligado a indicarnos los dos servidores DNS, por lo que sólo tendremos que ir a nuestro dominio e indicarlos.

Pero ¿Qué pasa si hemos contratado un VPS o un servidor? Pues bien, al contratar un producto más «para expertos», el proveedor nunca suele ofrecer los DNS, por lo tanto ¿Qué configuramos en el dominio para apuntar a la IP del servidor?

Pues fácil, hay dos posibles soluciones:

### DNS del dominio

Normalmente, en la mayoría de proveedores serios (todos los que he usado), cuando contratas un dominio, te regalan los servidores DNS, por lo que habría que dejarlos por defecto y acceder al panel del dominio para modificar los registros DNS.

### DNS gratuitos para un VPS o un servidor

Si el proveedor donde has comprado el dominio, no te incluye los DNS, personalmente, te recomendarías que estudiaras las posibilidad de cambiarte de proveedor (hablamos de que un dominio cuesta 10€ al año).

No obstante, si te gusta el proveedor y quieres encontrar una solución, puedes usar las [DNS gratuitas](https://dinahosting.com/configurar/dns-gratis) que ofrece el proveedor DinaHosting.

Fácil ¿Verdad?

## Los registros DNS

Perfecto, imaginemos que hemos adquirido el dominio por una parte y el VPS o servidor por otra y que hemos configurado correctamente los servidores DNS, todavía nos queda indicarle la IP de nuestro servidor ¿Cómo hacemos esto? ¡Mediante los registros!

Puesto que un dominio nos puede servir para muchas cosas (y puede responder a IPs diferentes), tenemos diferentes registros.

Para entender esto, pensemos que tenemos el dominio «luisperis.com», si accedemos mediante el navegador, querremos que el DNS le indique una IP determinada (la de nuestro servidor), en cambio, es posible que si nos mandan un email a ese dominio, no queramos que lo manden a ese servidor, sino a otro (quizás lo tenemos contratado con Google), pero, si es el mismo dominio ¿Cómo podemos hacer para que nos responda una IP diferente si es una visita a la web o un email? De nuevo ¡Con los registros!

Existen, muchos registros, pero en este caso veremos los dos principales:

### Registro DNS tipo A

Este es el registro DNS principal, aquí únicamente le tenemos que indicar la IP de nuestro servidor, es decir, donde tendremos la web.

### Registro DNS tipo MX

Este es el registro que se encargará de los emails, aquí le tendremos que indicar la IP (o dominios) de los servidores de los emails.

Como vemos, una vez entendemos todo, no es para nada difícil 🙂

## Podcast

Te dejo un episodio de mi podcast hablando sobre los servidores DNS y los registros DNS. Si te interesa este tema, te recomiendo escucharlo, ya que además de todo lo que has leído, hablo sobre cómo funcionaba Internet antes de los DNS, además de otros tipos de registros DNS que existen.
