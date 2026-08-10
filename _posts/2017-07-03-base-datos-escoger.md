---
layout: post
title: "¿Qué base de datos escoger?"
date: 2017-07-03 11:16:02 +0100
permalink: /base-datos-escoger/
description: "Hoy en día tenemos muchas bases de datos y lo es que es mejor, muchos tipos de bases de datos, en principio esto debería de ser algo positivo, pero el problema viene cuando alguien dice que una..."
categories: ["Programación"]
---

Hoy en día tenemos muchas bases de datos y lo es que es mejor, muchos tipos de bases de datos, en principio esto debería de ser algo positivo, pero el problema viene cuando alguien dice que una base de datos (por ejemplo MongoDB) es mejor que otra base de datos (por ejemplo MySQL).

En este punto, ya ha empezado una guerra llena de desinformación que no lleva a ningún lado y que sólo confunde a la gente, así pues, en este artículo voy a intentar explicar los tipos de bases de datos que existen y cuales son los motores de bases de datos más conocidos.

> Además de este artículo, he grabado un podcast donde explico todo esto pero con muchísimo más detalles, explicando incluso cómo lo hago yo para mis proyectos.
>
>

<div class="embed">
<iframe src="https://www.ivoox.com/player_ej_19591394_4_1.html?c1=4286f4" loading="lazy" frameborder="0" allowfullscreen title="Contenido incrustado"></iframe>
</div>

> Podcast **Consultor IT** en: [Ivoox](https://www.ivoox.com/s_p2_297808_1.html) | [iTunes](https://itunes.apple.com/es/podcast/podcast-luis-peris/id1134119223) | [RSS](http://www.ivoox.com/consultor-it_fg_f1297808_filtro_1.xml)

## Tipos de bases de datos

Cuando hablamos de bases de datos, lo primero que se nos viene a la cabeza es MySQL, pero realmente MySQL no es más que un gestor de bases de datos de tipo relacional basadas en SQL ¡Pero existen muchísimas más! ¡Y de tipos muy diferentes!

El problema viene a ¿Cómo las organizamos? Fijémonos que al definir MySQL he dicho que es de tipo relacional y basada en SQL, por lo que simplemente con eso podemos decir que existen los tipos “relacionales o no relaciones” o los tipos “basadas en SQL o las llamadas (NoSQL)”.

Además, existen bases de datos ultra rápidas que funcionan en memoria RAM, por lo que tendríamos otro “tipo de base de datos dependiendo donde se ejecute”. También tendríamos si soporta objetos o no.

Así pues, puesto que es muy complicado definir tipos, lo que vamos hacer es ver las principales bases de datos y con que tipos concuerdan.

### Base de datos MySQL

Sin duda una de las bases de datos más conocidos (ergo más importantes), lleva más de 10 años siendo el estándar y es prácticamente la única que se utiliza en los hostings.
Es de tipo relacional, está basada en SQL y no soporta objetos.

### Base de datos MariaDB

Es una base de datos que está cogiendo mucho peso, sobretodo desde que XAMPP decidió cambiar MySQL por MariaDB.
MariaDB es un fork de la última versión de MySQL antes de que fuera comprada por Oracle, por lo que prácticamente todo lo que funciona en MySQL funciona en MariaDB
Es de tipo relacional, está basada en SQL y no soporta objetos.

### Base de datos PostgreSQL

Es una gestor de bases de datos open-source y al igual que MariaDB, también está soportado por una comunidad. La gran diferencia con MariaDB es que no es una fork de MySQL y soporta objetos
Es de tipo relacional, está basada en SQL y tiene soporte para objetos.

### Base de datos Oracle

Oracle es uno de los mayores gestores de bases de datos, es privado y las licencias suelen ser bastante caras, se suele usar cuando hay que tratar millones de datos a una gran velocidad.
Es de tipo relacional, está basada en SQL y su punto fuerte es el gran soporte para objetos.

Vale, hasta aquí, hemos visto 4 tipos de bases de datos, que aunque son de tipos diferentes (algunas con objetos, otras no), todas tenían en común que eran relacionales y basadas en SQL, ahora veremos dos que no lo son:

### Base de datos MongoDB

Es una de las principales bases de datos llamadas NoSQL, que, como su nombre indica, no soporta SQL. Su función principal es guardar objetos no ordenados, por lo que cada objeto puede tener una estructura diferente.
NO es de tipo relacional, NO está basada en SQL y SÍ tiene soporte para objetos.

### Base de datos Redis

Redis es una base de datos de tipo clave-valor, lo que quiere decir que es como un array enorme ¿Su peculiaridad? Se guarda todo en la RAM ¡Imagínate la velocidad de procesamiento!
Es de tipo clave-valor, no está basado en SQL, no tiene soporte para objetos.

### ¿Qué base de datos escoger?

Quizás, al ir leyendo este artículo, te hayas dado cuenta de que no tiene sentido discutir qué base de datos es mejor, ya que, todo dependerá para qué la necesitemos.

De hecho, las grandes empresas no escogen una base de datos, sino que es normal ver por ejemplo tres tipos de base de datos con la siguiente estructura:

**MySQL**: Para tener una base de datos relacional ¡Siempre hace falta!
**MongoDB**: Para guardar objetos sin ordenar, por ejemplo logs.
**Redis**: Para cachear consultas o acceder a una información específica de forma muy rápida.

Fijémonos que esto no es la guerra ¡Todas se pueden complementar!

## Resumen

Como vemos, cada tipo de base de datos nos sirve para algo diferente, aunque si que es cierto, que dentro de las bases de datos relacionales nos puede costarnos ver las diferencias, por ello os emplazo a escuchar el podcast al que hago referencia al principio de este post donde explico con más detenimiento cada uno de los tipos de base de datos.
