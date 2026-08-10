---
layout: post
title: "Mi opinión sobre clouding.io"
date: 2020-01-27 11:59:05 +0100
permalink: /mi-opinion-sobre-clouding/
description: "No suelo hablar mucho sobre proveedores de hostings y… hoy no voy a empezar. Ya que vamos a ver un curioso proveedor, que no ofrece ni hostings, ni servicio de email, ni servidores físicos. Es un..."
categories: ["Negocios Online"]
---

No suelo hablar mucho sobre proveedores de hostings y… hoy no voy a empezar. Ya que vamos a ver un curioso proveedor, que no ofrece ni hostings, ni servicio de email, ni servidores físicos.

Es un proveedor español que única y exclusivamente ofrece una cosa: Instancias Cloud. Ni más, ni menos ¡Veamos que tiene de especial!

![](/assets/img/2020/clouding.png)

## Mi opinión sobre clouding

Tengo que reconocer que cuando conocí [clouding.io](https://clouding.io) y vi que era un proveedor español, no me fié mucho, ya que los proveedores españoles suelen hacer dos cosas:
Montar unos racks en las oficinas (sin sistemas de seguridad físicos, ni protección contra cortes de energía, etc)
Contratar servidores en OVH, virtualizarlos y vender este espacio.

No obstante, tras investigar, me di cuenta de dos cosas que me calmaron bastante, lo primero es que es una empresa que lleva 6 años y lo segundo y más importante: Usan el datacenter de [British Telecom](https://www.globalservices.bt.com/es/es/products/bt_compute) (lo publican en su web) con más de 2000 trabajadores.

Otra cosa que me dió confianza es que normalmente los proveedores te piden que pagues y ya si eso luego te defraudan, en cambio aquí, te dan 5€ de saldo para que pruebes sus servicios de forma gratuita. Además dejan pagar con paypal, por lo que si tienes algún problema, paypal tiene un seguro de reclamación.

## ¿Qué no ofrece clouding?

Esta es una de las cosas que más me ha gustado de clouding y es que apenas ofrece nada, y aunque esto pueda parecer algo malo, es todo lo contrario. En toda su plataforma utilizan la filosofía KISS (keep it simple stupid).

Es decir, en vez de ofrecer un millón de cosas para vender más, sólo ofrecen una cosa de pago que son las instancias. Esto hace que sean muy buenos a la hora de gestionar instancias, ya que no tienen que lidiar con problemas de estafas de dominios, problemas de mailings, servidores físicos, etc.

Una lista de las cosas que no ofrecen: Hosting, Dominios, Emails, servidores físicos.

## Instancias en clouding

Ahora que ya tenemos una idea más clara de qué es clouding ¡Hablemos de las instancias!

Para empezar indicar que el precio base es muy similar a otros proveedores tipo OVH, es decir, la configuración más básica es desde 3€.

![clouding configuración básica](/assets/img/2020/clouding-configuracion-basica.png)

Como se puede observar en la imagen, tiene un configurador ultra sencillo que te permite indicar cuanto disco duro / CPU quieres y te va indicando el precio (hasta aquí todo normal).

Dónde se empieza a volver más interesante, por ejemplo es en el tema de backups, ya que de forma muy sencilla te permite realizar Backups desde 0,20€ al mes ¡Ojo! Pensemos que muchos proveedores no te permiten automatizar los backups de instancias. Por ejemplo, OVH te permite automatizar (mucho más caro) únicamente los VPS, pero las instancias cloud, a día de hoy no te permite automatizarlas.

Por otra parte, están “las imágenes”, es decir ¿Qué sistema operativo se nos instala? ¿Y que versión? Pues bien, en esto no tendremos ningún problema, ya que están los principales sistemas operativos con sus diferentes versiones. Incluso, nos permite instalar un OS con Docker o un OS con wordpress preparado. No obstante, lo que más me llama la atención es que tiene versiones de escritorio (para conectarnos remotamente), tanto de Linux como de Windows, puesto que ocupan más espacio, el precio mínimo para el linux será de 3,5€ y el de windows de 7,5€.

Una vez elegido el sistema operativo, así como las demás opciones, le podemos dar a crear ¡Y ya está! En menos de cinco minutos recibiremos un email como este:

![clouding email](/assets/img/2020/clouding-email.png)

## Redimensionar imagen en Clouding

Una de las cosas que me ha enamorado de este proveedor es una tontería (ya que todos los proveedores deberían de tenerlo), pero apenas existen proveedores que lo tengan tan fácil, estoy hablando del redimensionamiento.

Imaginad, que vuestra web crece y necesitáis más disco duro (o RAM), pues bien, en clouding, simplemente arrastrando una barra y dándole a Enviar se cambiará automáticamente.

Esto que parece algo simple, muchos proveedores no lo tienen, por ejemplo, en el caso de las instancias de OVH, te obligan a realizar una backup de seguridad, crear una nueva instancia con el nuevo tamaño, borrar la anterior y redirigir la IP (si es IP failover) a la nueva instancia. Por otra parte, en el caso de grandes como Microsoft Azure, simplemente te dan a elegir entre diferentes configuraciones predefinidas, pero no te dejan elegir mucho disco duro y poca RAM (por ejemplo). En cambio, en clouding es súper sencillo.

Por ejemplo, aquí empiezo con una instancia de 5GB:
![clouding 5gb](/assets/img/2020/clouding-5gb.png)

Simplemente la redimensiono:
![clouding redimensionar](/assets/img/2020/clouding-redimensionar.png)

Y tras reiniciarse el servidor (lo hace automáticamente), vuelvo a comprobar el espacio y nos aparece que tenemos 10GB:
![clouding 10gb](/assets/img/2020/clouding-10gb.png)

## Sistema autogestionado

Otra cosa a tener en cuenta como punto positivo es que tienen un servicio de soporte, es decir, dejas la instancia lista a tu cliente y no paga absolutamente nada hasta que tienes un problema. Además los precios del soporte van desde los 24€.

Esto viene genial para meter los proyectos de tus clientes en estas instancias y que si tiene algún problema con la instancia, no te moleste con el mantenimiento o los problemas (lo delegas a ellos).

Ya que muchas veces, los programadores no nos sale rentable ofrecer este servicio, ya que ganamos mucho más, haciendo lo nuestro: programar.

## Resumen

Es un proveedor muy limitado a las instancias (esto es bueno), que además nos da un soporte gratuito por teléfono y correo electrónico en castellano. Es una opción a tener en cuenta, tanto si estamos empezando, como si queremos tener nuestras instancias como la de nuestros clientes. ¿Qué os parece?
