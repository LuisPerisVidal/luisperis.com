---
layout: post
title: "Instalar LAMP en Ubuntu en 5 minutos"
date: 2016-11-19 23:07:52 +0100
permalink: /instalar-lamp-ubuntu-5-minutos/
description: "Imagínate que has decidido contratar un servidor Linux puesto que los hostings se te quedaban pequeños, no obstante, nunca antes has instalado LAMP en un servidor Ubuntu. Pues no te preocupes por..."
categories: ["Programación", "Rendimiento y Aplicaciones"]
---

Imagínate que has decidido contratar un servidor Linux puesto que los hostings se te quedaban pequeños, no obstante, nunca antes has instalado LAMP en un servidor Ubuntu. Pues no te preocupes por nada, pues en este artículo veremos cómo podemos instalar LAMP en menos de 5 minutos de una forma muy sencilla.

## Actualizando nuestro servidor Ubuntu

Lo primero que tenemos que hacer una vez contratamos un VPS o un servidor Linux es actualizar los repositorios de Linux, ya que si instalamos algo con el comando «apt-get install» puede que o no lo encuentre o instale una versión anterior.

Así que, para actualizar nuestro s repositorios únicamente tendremos que poner el siguiente comando:

> apt-get update

¡Y ya está! Nuestro servidor se encargará de actualizar los repositorios.

## Instalando LAMP en Ubuntu 14.04

Una vez lo tenemos actualiza, nos tocará instalar LAMP, realmente existen muchos paquetes que nos instalarán Apache, MySQL y PHP, es decir, LAMP simplemente es una forma de llamar a los paquetes que incluyen todos los programas necesarios para tener una página web.

No obstante, aunque existen muchas maneras, a mi gusta utilizar el instalador que nos da tasksel, ya que no nos instalará módulos que no necesitemos.

Para ello, lo primero será asegurarnos de que tenemos instalado tasksel o sino, podemos instalarlo de la siguiente forma:

> apt-get install tasksel

Una vez ya lo tengamos instalado, tendremos que ejecutarlo de la siguiente forma:

> tasksel

Una vez ejecutado y si todo nos funciona bien, nos aparecerá la siguiente imagen:

![instalar lamp ubuntu](/assets/img/2016/instalar-lamp-ubuntu.jpg)

Ahora, para instalar LAMP, simplemente tendremos que seleccionar (con las flechas del teclado y el espacio) la opción que pone LAMP y presionar Enter ¡Así de sencillo!

Se nos instalará todo de forma automática, lo único que nos pedirá será la contraseña de la cuenta root de MySQL.

Una vez esté todo instalado (tarda 2 minutos como mucho), ya podéis acceder a la IP o al dominio para ver que aparece la página default de Apache.

## Instalando phpmyadmin en Ubuntu 14.04

Si además de tener LAMP instalado, también queremos instalar phpmyadmin podremos instalarlo también con un solo comando.

En este caso el comando es el siguiente:

> apt-get install phpmyadmin

¡Así de sencillo! El instalador empezará automáticamente y una vez termine, no necesitaremos ni reiniciar el servidor, podremos acceder de la siguiente forma:

http://mi-dominio.com/phpmyadmin

![instalar phpmyadmin ubuntu](/assets/img/2016/instalar-phpmyadmin-ubuntu.jpg)

## Resumen y conclusión

Como vemos, la instalación de LAMP y de phpmyadmin ha sido muy sencilla, con unos pocos comandos hemos podido dejar todo instalado.

Pero no nos confiemos, recordad que estamos hablando de un servidor por lo que es necesario pensar en la seguridad (cerrar puertos, añadir algún firewall, etc.), si tienes un servidor y necesitas que alguien te lo gestione, puedes [contactar conmigo](/contacto/) sin problemas.
