---
layout: post
title: "Rastrear a cualquier persona físicamente"
date: 2018-12-12 12:29:39 +0100
permalink: /rastrear-a-cualquier-persona-fisicamente/
description: "Imagínate que entras en un local por primera vez, un local de una franquicia que nunca antes habías visitado (ergo no has compartido datos ni visitado la web). Y aún así, al entrar, pueden saber..."
categories: ["Otros temas"]
---

<div class="embed">
<iframe src="https://www.ivoox.com/player_ej_33520897_4_1.html?c1=4286f4" loading="lazy" frameborder="0" allowfullscreen title="Contenido incrustado"></iframe>
</div>

Podcast **Consultor IT** en: [Ivoox](https://www.ivoox.com/s_p2_297808_1.html) | [iTunes](https://itunes.apple.com/es/podcast/podcast-luis-peris/id1134119223) | [RSS](http://www.ivoox.com/consultor-it_fg_f1297808_filtro_1.xml)

---

Imagínate que entras en un local por primera vez, un local de una franquicia que nunca antes habías visitado (ergo no has compartido datos ni visitado la web). Y aún así, al entrar, pueden saber la dirección de tu casa, en qué hoteles has estado, etc.

Pues bien, en este artículo voy a intentar explicar cómo todo esto es posible, es importante también indicar que todos estos conocimientos han salido de una investigación que hemos realizado en la consultora tecnológica en la que trabajo ([kaira.es](https://kaira.es) – Kaira 4 Startups S.L.).

## Rastrear a cualquier persona físicamente

Todo esto vino por una pequeña investigación .Nosotros sabíamos que muchas empresas utilizan el bluetooth para identificar a los visitantes que entran en su local, no obstante, para esto el bluetooth del móvil debería de estar encendido (poca gente lo tiene).

Nosotros teníamos otro punto de vista, sabíamos que la mayoría de gente deja el «modo wifi» conectado, para cuando esté en casa que se conecte automáticamente. Además, sabíamos que los móviles hacen peticiones a los routers cada x segundos, para saber si «existe alguna red conocida».

Con todo esto, nos hicimos una pregunta muy simple ¿es posible detectar ese chip wifi con un identificador único (la MAC address)? Si esto era «posible y estable», habríamos conseguido varias cosas, entre otras:

## Saber cuántas veces regresa un cliente.

Saber cuánto tiempo (exacto) pasa un cliente en la tienda de media.
Por ‘la potencia de la señal’, saber si existe relación entre el tiempo que pasa y el ticket de compra.
Poder rastrear por dentro del local (con varias señales), cómo se mueve el usuario y hacer algoritmos con la compra final.

Todo esto lo conseguimos, no obstante, de algo bastante más importante.

## ¿A qué datos podemos acceder?

El problema que nos encontramos, es que no únicamente podíamos acceder a la MAC WIFI (identificador único) de todos los móviles que entran en un local, aunque no estuvieran conectados a ninguna red wifi.

Sino que, podíamos acceder a la información de a qué redes wifi (MAC y nombre) se habían conectado, es decir, que si alguna persona se había conectado a «Hoteles Barceló Madrid Central» o, como en el caso real de un trabajador, «Spa Arenas Valencia», podríamos saber hasta qué Spa había ido la persona.

Esto que, en principio parecería una tontería, y que únicamente nos podría servir para sacar más información de nuestros amigos, esconde un gran peligro oculto, sobre todo, si pensamos en Google.

## El problema de Google

Para entender los datos que tiene Google y por qué «es un problema», os voy a lanzar una pregunta, o una observación. Si ahora accedemos con nuestro ordenador a google maps o a wallapop, o a cualquier página web que nos pida geolocalización, nos encontrará en el punto exacto donde estamos. Ojo, los ordenadores no tiene chip GPS ¿cómo pueden saber dónde estamos?

Pues bien, tras la incorporación del método geolocation en HTML5, se creó una base de datos (poseedora de google entre otras), con todas las direcciones MAC de los routers, así con la dirección GPS exacta. Por lo que, cuando estamos en un portátil y accedemos a una web, lo que hace el navegador es «mandar todas las MAC/nombre de las redes wifi» al servidor de Google, y este nos devuelve nuestro punto GPS.

Ahora que sabemos todo esto, podemos comprender el peligro, si al entrar en un local, pueden saber la MAC (y nombre de la red wifi) de nuestra casa, y la comparan con una base de datos, podrán saber exactamente dónde vivimos.

No únicamente eso, sino que Google ha reconocido que comparte datos de los usuarios con otros players, entre otros con «mastercard», que está presente en muchos comercios.

## RESUMEN

Como vemos, esto sólo ha sido una investigación realizada en [Kaira 4 Startups](https://kaira.es), para poder ofrecer datos estadísticos a nuestros clientes. No obstante, nos hemos encontrado con algo un poco preocupante.

También es importante indicar que, según la legislación española, sería ilegal guardar cualquier dato que «identifique» a la persona. Por lo que, dentro de la legalidad, sólo serviría para temas de Marketing y estadísticas.
