---
layout: post
title: "Object Storage en OVH: Problemas y soluciones"
date: 2016-08-03 23:28:49 +0100
permalink: /object-storage-ovh/
description: "Antes que nada, explicar ¿Qué es esto de Object Storage en OVH? Pues bien, para quienes no lo sepan, Object Storage es un concepto que se encuentra en el mundillo del cloud computing y lo ofrecen..."
categories: ["Rendimiento y Aplicaciones"]
tags: ["object storage", "OVH"]
---

Antes que nada, explicar ¿Qué es esto de **Object Storage** en OVH?

Pues bien, para quienes no lo sepan, Object Storage es un concepto que se encuentra en el mundillo del cloud computing y lo ofrecen muchísimas empresas que se dedican a este sector, ya sea OVH, Amazon, Google o Microsoft con su plataforma Azure.

Por decirlo de alguna forma entendible, son como carpetas (llamadas “contenedores”) donde podemos guardar todos los ficheros que queramos sin preocuparnos de la transferencia o el espacio.

En el caso de OVH, cada “contenedor” puede almacenar miles y miles de Gigas, además podrá soportar transferencia ilimitada, es decir, que si todo el planeta se descargara a la vez un fichero que has subido, tú, ni te enterarías, ningún servidor se caería ni dejaría de funcionar, esta es “la magia de Object Storage”, que si por ejemplo, eres cantante y tienes canciones subidas a tu web, podrías tener un hosting normal y guardar todas las canciones en un “contenedor”, así todo la transferencia de la música de la música, se encargaría OVH y para ti sería transparente.

Además, lo mejor de todo esto son los precios, sólo tendrás que pagar por dos cosas:

– El tráfico saliente (cuando alguien descargue tus ficheros), que, para enterarnos, el precio es de 0.01€ cada GB. Es decir, que, si alguien descarga una imagen de 1MB, estarías pagando 0.00001€

– Los ficheros que tengas, el precio también es a 0.01€ cada GB, por lo que si tienes los ficheros estáticos de una web, es decir imágenes, css y js (que de media pueden ser 30MB), pagarías al mes unos 0.0003€.

Vamos, como podemos observar es baratísimo.

![object storage ovh](/assets/img/2016/object-storage-ovh.jpg)

En la imagen de arriba podéis observar la friolera factura que tengo que pagar por tener mi podcast subido ahí y con mis primeras cientos de descargas ¡5 céntimos!

Ah, recuerdo que hice un artículo hablando de [hosting para podcast](/hosting-para-podcast/).

## Object Storage en OVH y [OpenStack](/openstack/)

Vale, ya sabemos más o menos que son los Object Storage de OVH y los contenedores, pero ¿Por qué es el [OpenStack](/openstack/)?

Pues bien, si lo pensamos, la nube es algo muy complicado de explicar ¿Verdad?

Es decir, cada empresa como puede ser Amazon, Google, Microsoft o OVH tienen sus servicios en la nube que ofrecen a otras empresas. Entre estos servicios se encuentran:

– Procesamiento en cloud: Tú eliges cuanto espacio, cuanta RAM y cuánto tiempo quieres usar la máquina.

– Bases de datos: Simplemente seleccionas el espacio y la empresa te gestiona absolutamente todo, sólo te tendrás que conectar con los datos que te proporcione.

– Object Storage: Te creas contenedores y guardas ficheros sin pensar en qué sistema operativo está montado detrás, etc.

Esto está genial, pero ¿Qué pasaba?

Pues que cada empresa lo montó como quería y pasar los servicios de Amazon a Microsoft era imposible, además, aunque los pasaras manualmente ¡Tenías que aprender cómo funcionaba el nuevo sistema!

Y aquí es cuando nace OpenStack, un resumen muy rápido sería decir que OpenStack es una capa de abstracción que te facilitará muchísimo pasar de una empresa a otra (siempre que las dos usen OpenStack).

Y no sólo es que será fácil pasar de una empresa a otra, sino que gracias a que por fin hay un estándar, hay muchas aplicaciones que nos permiten conectarnos de forma muy sencilla a nuestros servicios.

![openstack ovh](/assets/img/2016/openstack-ovh.jpg)

En la imagen anterior podemos ver el panel OpenStack (llamado Horizon) de OVH.

## ¿Para qué usar Object Storage?

Genial, genial, cada vez suena más interesante Object Storage ¿Verdad?

Pero, realmente ¿Qué usos le podemos dar?

Pues bien, vamos a ver unos cuantos usos:

### Object Storage como backup

Imagínate que tienes un hosting o un VPS con datos importantes, como es lógico tienes que hacer copias de seguridad, pero como es normal, no puedes guardar las copias de seguridad en el mismo lugar donde tienes los ficheros ¡Si se te estropeo o te lo hackean las has perdido!

Por lo tanto, tenemos que hacerlo en un sitio externo a nuestro alojamiento ¿Qué mejor que usar aquí el Object Storage?

Además ¿Cuánto puede ocupar la base de datos de un wordpress? (por ejemplo) ¿10MB como mucho?

Pues podrías tener una copia de seguridad de cada uno de los días del último mes y sólo estarías pagando 0,003 ¡No llegaría ni a un céntimo!

### Object Storage para sincronizar

Esto cada vez se pone más interesante. Otra función que le podemos dar a los objetos o a los contenedores es para sincronizar ficheros (algo muy similar a Dropbox).

Y de hecho de aquí nos salen dos variantes:

La primera opción, si tenemos una web con millones de visitas y tenemos 5 servidores iguales para balancear el tráfico. Podríamos crear una carpeta y sincronizarla con Object Storage. Así, cuando queramos actualizar un fichero de nuestro servidor, con tal de modificarlo en un sitio, el resto se modificarían también ¡Sin tener que hacerlo manualmente!

La segunda opción, si queremos tener nuestro propio Dropbox donde guardemos cosas realmente importantes y que no queramos que nos puedan “hackear dropbox”. Sería muy fácil de hacer, sincronizando una carpeta de nuestro ordenador con el servidor Object Storage donde estará a salvo de hackers y podremos llevar nuestras propias reglas de seguridad.

![cloud sync ovh](/assets/img/2016/cloud-sync-ovh.jpg)

En esta imagen podemos observar un software usado para sincronizar un almacenamiento en la nube con un ordenador o un servidor.

### Object Storage como CDN o ficheros estáticos

Esta no es que sea más o menos interesante que el resto de opciones, esta es simplemente la opción que más se usa de todas las que hemos visto.

Y es, para tener todos nuestros ficheros estáticos, es decir que no cambian, de nuestra web (imágenes, JavaScript, CSS…) en Object Storage y usar nuestro servidor o hosting únicamente para procesar las peticiones y devolver HTML.

¿Por qué? Bueno, realmente porque las imágenes ocupan hasta 1000 veces más que el simple HTML que devuelve la página, por lo que si tenemos 5 o 6 imágenes, nuestro servidor tendrá que mandar hasta 6000 veces más datos de los que realmente ha procesado (ya que las imágenes no las procesa).

Entonces ¿No sería mejor “liberar nuestro hosting” de esta carga? Si usamos los Object Storage, conseguiremos una página muchísimo más rápida, ya que los Object Storage ya están optimizados para la transferencia, además que sería totalmente transparente para nuestro alojamiento.

Además, los chicos de OVH lo han hecho muy bien y cada vez que subes un fichero, te lo triplican en tres datacenters diferentes (2 en Europa y 1 en América), así, tus usuarios podrán acceder a los datos más rápido.

![cyberduck ovh](/assets/img/2016/cyberduck-ovh.jpg)

Esta imagen muestra una aplicaciones llamada Cyberduck, donde puedes configurar tu Object Storage como si de un FTP se tratara.

## Resumen y conclusión

Los Object Storage son una solución muy potente para muchos problemas que nos podemos encontrar los desarrolladores.

Es importantísimo aprender a usarlos, para así poder implementarlo en los proyectos que realmente necesitemos.
