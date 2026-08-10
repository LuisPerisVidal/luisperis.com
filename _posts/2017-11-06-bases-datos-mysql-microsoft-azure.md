---
layout: post
title: "Bases de datos MySQL en Microsoft Azure"
date: 2017-11-06 22:11:53 +0100
permalink: /bases-datos-mysql-microsoft-azure/
description: "Muchas veces, cuando tenemos un gran proyecto, nos preocupamos por las bases de datos, ya que normalmente, los datos que contienen es lo más valioso del proyecto, pero, aunque existen 10.000..."
categories: ["Podcast", "Programación", "Rendimiento y Aplicaciones"]
---

Muchas veces, cuando tenemos un gran proyecto, nos preocupamos por las bases de datos, ya que normalmente, los datos que contienen es lo más valioso del proyecto, pero, aunque existen 10.000 soluciones enfocadas hacia el “alojamiento/hosting”, existen pocas soluciones sencillas para externalizar las bases de datos, veamos una de ellas.

## Externalizar MySQL

Como he comentado en artículos anteriores, tengo varios proyectos creciendos y aunque el alojamiento en servidores o VPS no es un problema, si me ha preocupado mucho las bases de datos, ya que, los servidores no incorporan ningún sistema de backups y aunque te programes uno, el backup se guardará casi seguro en el mismo servidor donde está la base de datos, por lo que pierde “el sentido” y si el servidor se corrompe, lo pierdes todo.

Bien es cierto, que hay soluciones, como hacer backups en otros servidores, contratar alguna empresa que se encargue de ellos, etc.

Pero entonces surge otro problema, quizás el VPS o servidor sea suficiente potente para ejecutar PHP o Java sin problemas, pero quizás, si la base de datos es muy grande, se vuelva lenta ¿Vamos a cambiar el servidor sólo por la base de datos?

Aquí es donde entra la externalización y mis primeras pruebas con Microsoft Azure.

## MySQL en Microsoft Azure

Para quien no lo sepa, Azure es la solución cloud computing de Microsoft para empresas, según dicen, el 80% de las 500 empresas más grandes del mundo, lo utilizan.

Pues bien, tienen un par de servicios referente a MySQL muy interesantes y que veremos ahora mismo.

Antes de continuar quiero indicar que si te registras por primera vez, te dan 300$ para probar durante el primer mes, sin gastos ocultos, y que no se te renovará automáticamente a “de pago”.

Esto es un punto positivo ya que mi principal temor por mi experiencia pasada con la Cloud es que te intentaban cobrar por todo lo oculto y sin que te des cuenta, esto pasa bastante con Amazon Web Service y Google Cloud (que ya lo veremos en otro artículo).

Pues bien, en Microsoft Azure hay dos servicios relacionados con MySQL que nos pueden interesar ¡Veámoslos!

## Base de datos únicas MySQL en Azure

Las bases de datos únicas de Azure, es simplemente una base de datos, ya está, sólo una. Esto que parece algo “lógico”, no es así, ya que normalmente las empresas cloud ofrecen servidores MySQL (más caros), donde puedes crear todas las bases de datos que quieras.

Pero esta vez no, gracias a este tipo de bases de datos, podrás externalizar tu base de datos a Microsoft desde 3.50€ por 250Mb de espacio (recordemos que una base de datos de 100Mb es enorme, normalmente se usa menos de 30Mb para wordpress, por ejemplo).

Además, cuando necesitemos más potencia o espacio, con unos simples clicks podremos cambiar a una base de datos superior.

Lógicamente, tendremos backups automáticos de los últimos días fáciles de descargar.

Y si lo que quieres, es tener una base de dato en Azure, de forma gratuita ¡Estás de suerte! Azure te permite contratar por 0€, una base de datos de 20Mb.

## Servidores MySQL en Azure

Aunque las bases de datos que acabamos de ver, están genial, quizás te interese más contratar un servidor MySQL de Azure para que tengas bases de datos ilimitadas.
Ellos se ocupan de toda la gestión del servidor y tú, simplemente, tendrás que crear las bases de datos, usuarios, reglas de conexión, etc.

La principal ventaja está clara y es que podemos crear tantas bases de datos como queramos desde tan sólo 12€/mes el servidor.

Lógicamente, si necesitamos más espacio o potencial, siempre podremos hacer un upgrade con unos simples clicks.

Además tiene un panel de control enorme desde donde podrás realizar cientos de configuraciones que te permitirán controlar hasta el último parámetro.

No obstante, si tuviera que encontrarle alguna desventaje a este fantástico producto, sería que, aunque se realizan backups diarios de forma automática, no puedes restaurar o descargar una base de datos de hace unos días, sino que se genera otra instancia similar y tienes que acceder por phpmyadmin o cualquier otro programa a descargarla.

Es decir, en el tema del backup, al ser un servidor y no una base de datos, es (un poco) más engorroso.

## Podcast

Sin duda, las bases de datos MySQL en Microsoft Azure, el potencial que tienen, las ventajas y desventajas, es un tema más que da para más de un artículo, por ello, he realizado un podcast donde entro más en materia.

<div class="embed">
<iframe src="https://www.ivoox.com/player_ej_21908201_4_1.html?c1=4286f4" loading="lazy" frameborder="0" allowfullscreen title="Contenido incrustado"></iframe>
</div>

Podcast **Consultor IT** en: [Ivoox](https://www.ivoox.com/s_p2_297808_1.html) | [iTunes](https://itunes.apple.com/es/podcast/podcast-luis-peris/id1134119223) | [RSS](http://www.ivoox.com/consultor-it_fg_f1297808_filtro_1.xml)
