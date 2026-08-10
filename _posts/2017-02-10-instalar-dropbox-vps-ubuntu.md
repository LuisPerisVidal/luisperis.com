---
layout: post
title: "Instalar Dropbox en un VPS Ubuntu"
date: 2017-02-10 12:19:46 +0100
permalink: /instalar-dropbox-vps-ubuntu/
description: "Cuando migramos nuestra web de un hosting a un VPS nos damos cuenta rápidamente que tenemos que contratar un backup por si algo falla, el problema es que los backups en los VPS pueden ser más..."
categories: ["Rendimiento y Aplicaciones"]
---

Cuando migramos nuestra web de un hosting a un VPS nos damos cuenta rápidamente que tenemos que contratar un backup por si algo falla, el problema es que los backups en los VPS pueden ser más caros y difíciles de configurar que los propios VPS, así que tenemos que buscar una solución para hacer nuestros backups.

Una de estas soluciones es Dropbox y en este artículo veremos cómo podemos configurar nuestro VPS para poder hacer los backups en Dropbox.

## **Instalar Dropbox en un VPS Ubuntu**

Para quien no lo sepa, Dropbox es un servicio que guarda tus ficheros en la nube, además, permite sincronizar las carpetas de tu ordenador con la nube, para que, si actualizas algo, se suba a la nube de forma automática.

Por lo que, si conseguimos sincronizar una carpeta de nuestro VPS con Dropbox, conseguiremos que todo lo que haya en esa carpeta, se clone en los servidores de Dropbox, teniendo así un backup seguro.

Para instalar Dropbox en nuestro VPS (Ubuntu) deberemos de seguir los siguientes pasos:

### **1. Primero, descargar Dropbox de la web oficial**

Si estamos usando un servidor de 32 bits necesitaremos descargar esta versión:

> wget «https://www.dropbox.com/download?plat=lnx.x86» -O dropbox.tar

En cambio, si tenemos un servidor de 64 bits, necesitaremos descargar, esta otra versión:

> wget «https://www.dropbox.com/download?plat=lnx.x86\_64» -O dropbox.tar

Fácil ¿Verdad?

![instalar dropbox ubuntu](/assets/img/2017/instalar-dropbox-ubuntu.jpg)

### **2. Desempaquetar el tar y acceder a la carpeta**

Una vez lo tenemos descargado, desempaquetaremos el fichero dropbox.tar con el siguiente comando:

> tar -zxf dropbox.tar

Y podremos acceder a la carpeta de la siguiente manera:

> ls ~/.dropbox-dist

### **3. Descargando el gestor para Dropbox**

Perfecto, ya tenemos Dropbox instalado, no obstante, lo que hemos descargado no es más que el core (por decirlo de alguna forma) y necesitamos algún gestor bonito para gestionar Dropbox sin volvernos locos y lo podemos descargar e instalar con los siguientes comandos:

*Descargamos el gestor*

> wget «https://www.dropbox.com/download?dl=packages/dropbox.py» -O Dropbox

*Le damos permisos de ejecución*

> chmod +x dropbox

*Lo movemos a alguna carpeta para que no moleste*

> mv dropbox /usr/local/bin

¡Ya lo tenemos todo instalado!

### **4. Nos logueamos en nuestra cuenta**

Ahora queda lo más sencillo, que es vincular nuestro servidor a nuestra cuenta, para ello debemos de ejecutar el siguiente comando:

> ~/.dropbox-dist/dropboxd

Al ejecutar este comando se nos mostrará un enlace aleatorio, pues bien, tenemos que copiarlo en el navegador y acceder a la web de Dropbox con nuestra cuenta, así, le estaremos dando permisos.

![instalar dropbox ubuntu vps](/assets/img/2017/instalar-dropbox-ubuntu-vps.jpg)

Una vez hecho esto, podemos iniciar Dropbox con el siguiente comando:

> dropbox start

¡Y ya tendremos nuestra carpeta sincronizada!

![sincronizar dropbox vps](/assets/img/2017/sincronizar-dropbox-vps.jpg)

### **5. Utilizar el gestor de Dropbox**

Si queremos hacer algo especial, desincronizar una carpeta, configurar un parámetro, etc., sólo tendremos que ejecutar el siguiente comando y nos aparecerá el gestor que hemos instalado:

> dropbox

![dropbox comandos ubuntu](/assets/img/2017/dropbox-comandos-ubuntu.jpg)

## **Usar Dropbox como backup en un VPS**

Una de las cosas para las que podemos utilizar Dropbox es para realizar backups puntuales (o automáticos).

Es decir, podemos configurar nuestro VPS para que todas las noches se realice un backup de nuestra base de datos en la carpeta del Dropbox, así a los pocos minutos ya estará sincronizada con la nube y ante un problema, podríamos recuperar la base de datos sin problemas.

Ojo, no sólo podemos guardar bases de datos, también podríamos guardar ficheros, páginas web, etc.

Sin duda, Dropbox es una solución económica al problema de los backups.

## **Usar Dropbox como FTP con una web**

Siguiendo con la temática anterior (de los backups), otra cosa que podríamos hacer es configurar una web o la carpeta donde se suben los ficheros de wordpress para que se sincronice con tu cuenta de Dropbox.

Así, si quieres subir una imagen a tu página web (o wordpress), tan sólo tendrás que sincronizar una carpeta de tu ordenador con Dropbox y mover la imagen a esa carpeta.

De este modo, dicha carpeta te hará de FTP, es decir, primero se sincronizará tu ordenador con el servidor de Dropbox y a los pocos segundos tu VPS detectará la nueva imagen y se sincronizará.

Gracias a esto, tendrás una especie de FTP mucho más rápido y cómodo a la vez que tu web estará replicada y protegida ante fallos.

## **Resumen y conclusión**

Como podemos observar, la vinculación de una cuenta de Dropbox a un VPS (o un servidor) es algo muy útil, tanto para solventar el problema de los backups, como para sincronizar en tiempo real la información.
