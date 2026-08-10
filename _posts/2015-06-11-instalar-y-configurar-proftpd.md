---
layout: post
title: "Instalar y configurar proFTPd"
date: 2015-06-11 16:57:50 +0100
permalink: /instalar-y-configurar-proftpd/
description: "Uno de los problemas tenemos cuando instalamos por primera vez un servidor es el FTP y su configuración, sobre todo a la hora de la seguridad y de las limitaciones, así que voy a intentar arrojar..."
categories: ["Rendimiento y Aplicaciones"]
---

Uno de los problemas tenemos cuando instalamos por primera vez un servidor es el FTP y su configuración, sobre todo a la hora de la seguridad y de las limitaciones, así que voy a intentar arrojar un poco de luz sobre el asunto.

Para seguir esta guía tendremos que loguearnos con la cuenta root mediante SSH (ya sea con putty o desde Linux). Yo estoy trabajando con Ubuntu, no obstante, la configuración es básicamente igual en todas las distribuciones.

## Instalar proFTPd en Ubuntu

Instalar el proFTPd es lo más fácil del mundo. Lo primero que tendremos que hacer, simplemente por rutina, será actualizar el apt-get con el siguiente comando:

`apt-get update`

Una vez actualizado, pasaremos a instalar nuestro gestor FTP con el siguiente comando:

`apt-get install proftpd`

Una vez ejecutado el comando, nos preguntará si de verdad queremos instalarlo, por lo que le daremos a Y para confirmar.

Por último es muy probable que nos salga una pantalla donde nos de a elegir el tipo de configuración, en esa pantalla nosotros elegiremos “standalone”.

Pues ya está, así de simple, ya tenemos instalado ProFTPd en nuestro servidor, ahora sólo queda lo más complicado, que es configurarlo.

## Creando un usuario nuevo

Una vez tenemos instalado nuestro FTP, tendremos que crear una cuenta de usuario nueva (o varias), lo normal es crear una por página web si las vamos a usar para subir webs, principalmente por si algún día tienes que compartir alguna cuenta que no puedan acceder a todas.

Para crear un nuevo usuario, tenemos que ejecutar (con permiso root) el siguiente comando:

`adduser tecnozone`

Siendo, tecnozone el nombre de usuario que queremos crear. Una vez ejecutemos el comando nos pedirá una serie de datos como la contraseña, le damos los datos, confirmamos y ya tendremos el usuario creado.

Ahora nos tocará configurar el usuario, así que tendremos que editar el fichero **/etc/passwd**, nosotros usaremos el siguiente comando para editarlo con nano:

`nano /etc/passwd`

Vamos a la última línea y encontraremos algo así:

`tecnozone:x:1001:1001:,,,:/home/tecnozone:/bin/bash`

En esta línea lo más importante será editar “/home/tecnozone” que es la carpeta principal del usuario y la que nos aparecerá cuando nos conectemos por FTP. Aquí añadiremos la carpeta de nuestra página web o el lugar donde queremos que este usuario tenga acceso, en mi casos será /var/www/tecnologiazone. Por último tendremos que cambiar el bin/bash por el bin/false.

Nos quedará algo así.

`tecnozone:x:1001:1001:,,,:/var/www/tecnologiazone:/bin/false`

Ahora, para asegurarnos de que no hay ningún fallo, editaremos el fichero /etc/shells con el comando:

`nano /etc/shells`

Y vemos si existe /bin/false y si no existe, lo añadimos al final.

## Dando permiso a la carpeta

Dependiendo que tipo de usuario hayamos creado, necesitaremos dar permiso de escritura a nuestra carpeta, esto se hace de manera muy sencilla con el comando:

`chown -R tecnozone /var/www/tecnologiazone`

Lógicamente tendréis que cambiar el nombre del usuario y la carpeta.

¡Perfecto! Ya tenemos el usuario configurado, ahora vamos a configurar el ProFTPd.

## Configurando ProFTPd

Esta ya es la última parte y la más divertida, ya que ProFTPd te da un montón de posibilidades para configurar. Pero lo primero que tenemos que hacer para acceder a la configuración es acceder a su fichero de configuración con el siguiente comando.

`nano /etc/proftpd/proftpd.conf`

Aquí nos dará un montón de opciones muy fáciles de editar, no obstante, para simplificar todo, yo explicaré un par.

**Editando el puerto**

Por seguridad siempre se recomienda cambiar el puerto, el 21 por defecto. Para ello nos tendremos que mover hasta a la línea que pone:
`# Port 21 is the standard FTP port.
Port 21`

Y cambiamos el 21 por el puerto que queramos, por ejemplo por el 2121.

**Creando un Jail en ProFTPd**
Hay muchas personas que quieren limitar la carpeta a la que el usuario accede, por defecto ProFTPd da acceso a todo el disco duro si no se limita, para limitar a la carpeta que queremos que el usuario acceda, tendremos que descomentar la línea que pone:

`# Default Root ~`

Es decir, la tenemos que dejar sin la almohadilla:
`Default Root ~`

Esto lo que hace es que el usuario solamente puede acceder a la carpeta que le hemos indicado antes en el fichero /etc/passwd

## Vídeo-tutorial Instalar y configurar ProFTPd

Si quieres aprender realmente a instalar y configurar ProFTPd he preparado un vídeo-tutorial donde vemos paso a paso:

- Cómo instalar proFTPd tanto desde la consola como desde webmin.
- Cómo crear diferentes usuarios que apunten a diferentes carpetas.
- Cómo configurar las jaulas de ProFTPd
- Cómo asegurar nuestras cuentas FTP (además de una demostración de cómo se puede vulnerar un VPS y acceder a la terminal con una simple cuenta FTP sin configurar).
- Os explicaré y os mostraré cómo podemos dar permisos a las carpetas.

El vídeo-tutorial es muy intuitivo y está pensando para que puedas parar el vídeo y repetir los pasos. Además, ante cualquier duda podéis contactar conmigo sin problemas.
