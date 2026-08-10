---
layout: post
title: "Configurar Firewall en Ubuntu"
date: 2017-01-16 13:23:23 +0100
permalink: /configurar-firewall-ubuntu/
description: "Pongámonos en situación, acabamos de contratar un servidor o un VPS y lo estamos configurando, pero eh ¡Nos falta la seguridad! Queremos implementar un Firewall para sentirnos más seguros, pero es..."
categories: ["Rendimiento y Aplicaciones"]
---

Pongámonos en situación, acabamos de contratar un servidor o un VPS y lo estamos configurando, pero eh ¡Nos falta la seguridad! Queremos implementar un Firewall para sentirnos más seguros, pero es un lío ¿Verdad? Pues bien, en este artículo analizaremos cómo podemos configurar nuestro Firewall de una forma fácil y sencilla.

## **¿Cómo funciona un Firewall?**

Lo primero que tenemos que preguntarnos es ¿Qué es un Firewall? ¿Cómo funciona? ¿Cómo se instala un Firewall en Ubuntu?

Pues bien, un Firewall (cortafuegos en castellano) es un elemento de seguridad que se encuentra entre nuestro servidor y una red (en la mayoría de casos, Internet).

La idea del firewall es interceptar todos los paquetes que provengan de dicha red (Internet) y procesarlos antes de encaminarlos a nuestro servidor, no obstante, también analiza todos los paquetes salientes.

Existen Firewall de dos tipos:

1. **Firewall Físicos:** Son dispositivos físicos que se encuentran conectados normalmente por cable entre el Firewall y la red (Internet), por lo que, gracias a que es una conexión física, es imposible atacar el servidor sin pasar por dicho Firewall.

2. **Firewall Virtuales:** En muchas ocasiones, por razones económicas, no se puede contar con un Firewall físico por lo que se puede optar por un firewall virtual, en este caso, el firewall se encontrará dentro del servidor/vps e interceptará y encaminará los paquetes. Aunque el ser virtual ya es una desventaja, hay que indicar que son mucho más efectivos de lo que mucha gente se podría imaginar.

Ahora que ya tenemos claro los tipos de datos que hay, vamos a ver cómo podemos configurar un Firewall Virtual en Ubuntu.

## **Configurar Firewall en Ubuntu**

Una vez tenemos los conocimientos básicos, tenemos que decidir que Firewall queremos utilizar en nuestro Ubuntu.

Lógicamente existen varios, algunos más completos que otros, unos más fáciles y otros más complicados.

Pero realmente, si nos fijamos en los principales Firewall todos funcionan exactamente igual, utilizando iptables, así que no importará mucho si cogemos uno bonito o una feo, pero veamos ¿Qué son las iptables?

Pues bien, la iptables, es una especie de software que viene con Linux que se encarga de interceptar las peticiones antes que nadie, así pueden procesarlas antes de que lleguen, por ejemplo, al Apache.

Dicho esto, y explicado que la mayoría de Firewalls utilizan este sistema, vamos a optar por el que viene preinstalado en Ubuntu y que podemos manejar de una forma visual gracias a Webmin.

## **Configurar el Firewall de Webmin**

En este caso vamos a ver cómo podemos configurar un Firewall utilizando Webmin (programa que nos permite gestionar nuestro VPS desde el navegador), si todavía no conoces Webmin te dejo un enlace para [instalar webmin](/instalar-webmin-ubuntu/).

Bien, una vez estamos dentro de Webmin, sólo tendremos que ir al apartador «Networking» y dentro de este apartado, al apartado «Linux Firewall», sencillo ¿No?

Una vez hecho eso, nos aparecerá la siguiente imagen que paso a explicar:

![firewall webmin](/assets/img/2017/firewall-webmin.png)

Como podéis observar se divide en tres apartados:

1. **Incoming packets (INPUT):** Se encargará de los paquetes que vengan de fuera (de Internet).
2. **Forwarded packets (FORWARD):** Se encargará de los paquetes que estén de paso (por ejemplo, si tu VPS es un proxy).
3. **Outgoing packets (OUTPUT):** Se encargará de los paquetes que salgan de tu VPS.

Cada uno de estos apartados funcionan igual y tienen dos conceptos que son importantes de conocer.

- **Acción por defecto:** Puedes seleccionar qué pasará con los paquetes por defecto, por ejemplo, puedes indicar que se acepten todos o que se denieguen todos.
- **Reglas:** Aquí está la guinda del pastel, puedes crear reglas ilimitadas y puedes indicar por ejemplo «Quiero que todas las conexiones que provengan de la IP 46.65.10.11 se rechacen». De nuevo, puedes crear tantas reglas como quieras.

Entonces ¿Qué pasa si en la regla se indica que los paquetes que provengan de una IP se rechazan, pero en la acción por defecto está que se les permite el acceso?

Muy sencillo, primero se ejecuta las reglas, si ninguna de las reglas afecta al paquete entonces es cuando se ejecuta la acción por defecto. Pero si en alguna regla afecta al paquete, entonces, hace caso omiso de la acción por defecto.

## **Resumen y conclusión**

Como podemos observar, una vez conocemos los conceptos básicos de un Firewall y conocemos cómo funciona, es muy sencillo configurar uno para denegar el acceso a un puerto o parar un ataque DOS.
