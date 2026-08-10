---
layout: post
title: "OpenStack ¿Qué es?"
date: 2016-08-11 16:29:02 +0100
permalink: /openstack/
description: "No es la primera vez que hemos hablado sobre OpenStack en este blog, de hecho, la última vez lo hicimos en el artículo Object Storage en OVH. Pero ¿Qué es realmente OpenStack? ¿Y qué tiene que ver..."
categories: ["Negocios Online", "Programación", "Rendimiento y Aplicaciones"]
tags: ["openstack"]
---

No es la primera vez que hemos hablado sobre OpenStack en este blog, de hecho, la última vez lo hicimos en el artículo [Object Storage en OVH](/object-storage-ovh/). Pero ¿Qué es realmente OpenStack? ¿Y qué tiene que ver con el cloud computing?

## Cloud Computing

Bien, antes de explicar que es OpenSack deberemos de entender que el cloud computing no es simplemente un servidor virtual al que le puedes configurarle la RAM y los procesadores que necesites, no.

Para entender OpenStack debemos de entender que el cloud computing es un conjunto de servicios informáticos junto con una capa de abstracción, es decir, es un conjunto de servicios informáticos en los que no debemos de preocuparnos donde se ejecutan, cuál es su estructura, como realiza las conexiones.

Así pues, aunque lanzar un servidor con 30 GB de RAM podría ser cloud computing, también podría serlo muchos otros servicios, vamos a ver los principales:

**Crear una instancia**

Es decir, crear una máquina virtual con el disco duro, la RAM y los procesadores que necesitemos, además solamente durante el tiempo que necesitemos.

Por lo tanto, para nosotros será totalmente transparente como se ejecutará y como lo organizará nuestro proveedor.

**Bases de datos SQL**

También podemos contratar una base de datos SQL (o de cualquier tipo) y utilizarla en nuestros servidores o hosting. Para nosotros será totalmente transparente en que servidores se están ejecutando o como realizan las copias de seguridad. Lo único que tendremos que tener claro es que siempre nos funcionará.

[**Object Storage**](/object-storage-ovh/)

El Object Storage para quien lo sepa es un servicio que nos permite subir ficheros a Internet sin tener alojamiento ni dominio. Se suele utilizar para cuando queremos subir algo que va a ser muy descargado y podría sobrecargar nuestro servidor. En cambio, con el Object Storage, no nos tenemos que preocupar de eso, no nos importa la infraestructura que tenga detrás, lo único que nos importa es que, aunque tenga un millón de descargas simultaneas, seguiría funcionando sin problemas.

Y así con muchísimos servicios más.

Vale, ya sabemos que es el cloud computing, entonces ¿Qué es openStack?

## OpenStack

![openstack](/assets/img/2016/openstack.jpg)

Perfecto, una vez entendemos realmente que es el cloud computing podemos entender la importancia del OpenStack.

Y es que, si el cloud computing simplemente es una capa de abstracción y no un estándar, quiere decir que cada proveedor hará la implementación que le dé la gana y cada vez que queramos contratar un servicio tendremos que estudiar cómo trabaja ese proveedor con ese servicio.

Ahí es justamente donde entra OpenStack, un proyecto OpenSource.

Para que lo podamos entender, OpenStack intenta ser una capa mayor de abstracción, para que todos los proveedores la utilicen y así se convierta en un estándar. Y gracias a esto nos sea igual de fácil trabajar con un proveedor que con otro.

De hecho, cada vez son más las plataformas que utilizan OpenStack, ya sea para gestionar ellos sus propios servicios (por ejemplo, la NASA, NSA, Paypal, Yahoo, etc.) o para ofrecerlo a sus clientes como es el caso de OVH.

Bien, ya conocemos la descripción de OpenStack, pero ¿Cómo se organiza?

Pues resulta que OpenStack es modular lo que le puede permitir ir añadiendo módulos sin tener que modificar la base y sin que la gente tenga que reprogramar nada.

Ahora, vamos hacer un pequeño repaso de los principales y vamos a conocer sus nombres:

### Horizon: Panel de control

Este es el módulo donde desde una forma visual y sencilla podremos gestionar nuestros servicios contratados (y el resto de módulos).

### Nova: Cloud Computing

Es el módulo encargado de gestionar todos los recursos y de la estructura del cloud computing. Para que nos entendamos, cuando lanzamos una instancia, este es el módulo encargado de procesar los recursos.

### Swift: Object Storage

Como su nombre indica, este módulo se encarga de almacenar los objetos (ficheros). Si te interesa tengo un artículo hablando sobre los [Object Storage](/object-storage-ovh/).

![cloud sync ovh](/assets/img/2016/cloud-sync-ovh.jpg)

### Grace: Imágenes, OS

Este módulo es el encargado de gestionar las imágenes de los sistemas operativos que se instalarán en las instancias (como si fueran los ISO), además también es capaz de gestionar las copias de seguridad de tipo snapshot para así clonar instancias (o recuperarla después).

### Trove: Bases de datos

Este módulo es el encargado de gestionar todo lo relacionado con las bases de datos.

## El futuro de OpenStack

Realmente OpenStack es una plataforma que cubre una necesidad, tanto por parte del usuario que tiene que ir aprendiendo como funciona cada plataforma. Cómo por parte del proveedor que se tiene que gastar millones de dólares al año en formación gratuita por todo el planeta (como es el caso de Amazon Web Service).

El proyecto es muy joven ¡No tiene ni 4 años! Y ha empezado con muy buen pie, ya lo están usando grandes organizaciones (NSA, NASA…), así como grandes empresas (Paypal, Yahoo, BBVA…) ¿El problema?

El mayor problema es que es un producto muy joven para que los grandes proveedores (Amazon, Google, Microsoft) se fíen.

Es comprensible, no es lo mismo implementarlo uno mismo para organizar su empresa (Paypal) que implementarlo para que otros organicen su empresa (los proveedores).

No obstante, el panorama es muy bueno, además de ser una necesidad real, así que sólo queda esperar a ver qué sucede en los próximos años.

## Resumen sobre OpenStack

OpenStack quiere reinventar la forma de pensar la nube, ha creado una serie de estándares (open source) para que todos los proveedores de Cloud Computing puedan ofrecer sus servicios bajo un estándar y que los usuarios no tengan que aprender cada vez cómo funciona la plataforma.
