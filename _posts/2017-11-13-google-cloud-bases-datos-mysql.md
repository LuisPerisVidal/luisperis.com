---
layout: post
title: "Google Cloud y bases de datos MySQL"
date: 2017-11-13 08:00:59 +0100
permalink: /google-cloud-bases-datos-mysql/
description: "Como muchos ya sabréis, tengo varios proyectos (wailux, rankoogle, keinas…) que necesitan, no sólo base de datos potentes, sino también copias de seguridad diarias y externas, por ello he estado..."
categories: ["Podcast", "Programación", "Rendimiento y Aplicaciones"]
---

Como muchos ya sabréis, tengo varios proyectos (wailux, rankoogle, keinas…) que necesitan, no sólo base de datos potentes, sino también copias de seguridad diarias y externas, por ello he estado probando diferentes empresas Cloud (Google, Microsoft, etc.), la semana pasada ya comenté mi experiencia con Microsoft Azure para bases de datos MySQL.

No obstante, esta semana analizaré mi experiencia, contratando y usando Google Cloud para bases de datos MySQL.

## ¿Qué es Google Cloud?

Antes que nada, para quién no lo sepa, Google Cloud es la solución de cloud computing que Google ofrece a empresas.

Aunque Google es una gran empresa y sus servicios tienen la calidad de estar gestionados por Google, realmente dicha solución no es tan conocida como Microsoft Azure o el famoso Amazon Web Service.

Entre todas las soluciones que se enmarcan dentro de Google Cloud, hay una solución cloud que me interesaba tanto a mi, como a todos los que queríamos externalizar nuestra base de datos MySQL, así que le he dado una oportunidad y lo he estado probando.

## Registro en Google Cloud

Lo primero que vemos nada más registrarnos, es que nos regalan $300 para gastar durante los siguientes 12 meses ¡Eso está genial!

De hecho, me chocó mucho, ya que Microsoft Azure ofrecía “$300 durante los siguientes 30 días, sin gastos ocultos”. Por lo que supuse que no era más que una estrategia de Marketing.

Pues bien, para poder acceder y probar el servicio, te pedía una tarjeta de débito/crédito «sólo para verificarte». De hecho, no es nada raro, ya que es una forma de controlar que no te registren 100 veces para así llevarte 100 veces los $300 en sus productos.

Así pues, una vez registrados en Google Cloud, ya podemos adquirir nuestros primeros servicios.

## MySQL en Google Cloud

Google categoriza sus soluciones MySQL como «Primera Generación» (viejos, menos potentes) y «Segunda Generación», según ellos, más rápidos, potentes y baratos.

Pues bien, antes que nada, hay que indicar que Google parece no ofrecer bases de datos MySQL, sino que la única solución cloud que ofrece son servidores MySQL, es decir, pagas una cantidad al mes y puedes crear todas las bases de datos que quieras.

Así pues, me decidí a probar los servidores MySQL y aquí es donde empezaron los problemas.

Y es que el problema comienza cuando creas una instancia de Segunda Generación, ya que lo ponen todo muy bonito y si no despliegas las «opciones avanzadas», te estará creando una instancia MySQL de 50€/mes, con todos los complementos (que no son gratuitos), por lo que no sería raro que llegara a superar los 100€/mes, cuando en la home ofrecen sus bases de datos sobre 5€/mes.

El problema continua cuando seleccionas las opciones avanzadas, te salen desplegables con poca información y sin precios en ningún momento de lo que estás seleccionando.

Así, que para ver los precios, me iba a la home de Google Cloud e iba comparando lo que seleccionaba y el precio que tenía (en páginas separadas). Bien, pues al seleccionar los más barato, Google Cloud te indica «estos servidores son poco potente y están pensado para pruebas, por nuestra política, no puedes usarlos en producción».

Es decir, precios totalmente ocultos, servicios que no funcionan por ser «muy baratos» y una facturación que parece ser que hasta el mes siguiente no te aparece cuanto estás pagando.

## Resumen y podcast

Este tipo de servicios (cloud computing), es conocido por no saber cuanto acabas pagando, es normal en este sector, el camuflar ciertos precios, pero sin duda, una empresa como Google, que no suelen ocultar nada, tiene mucho que mejorar de otras empresas como Microsoft Azure.

Igualmente, no todo es malo en Google Cloud, por ello, para poder indicar las ventajas y desventajas he grabado un Podcast donde me explayo más y entro más en materia:

<div class="embed">
<iframe src="https://www.ivoox.com/player_ej_22016124_4_1.html?c1=4286f4" loading="lazy" frameborder="0" allowfullscreen title="Contenido incrustado"></iframe>
</div>

Podcast **Consultor IT** en: [Ivoox](https://www.ivoox.com/s_p2_297808_1.html) | [iTunes](https://itunes.apple.com/es/podcast/podcast-luis-peris/id1134119223) | [RSS](http://www.ivoox.com/consultor-it_fg_f1297808_filtro_1.xml)
