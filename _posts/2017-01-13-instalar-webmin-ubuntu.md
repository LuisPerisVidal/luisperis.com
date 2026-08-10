---
layout: post
title: "Instalar Webmin en Ubuntu"
date: 2017-01-13 13:35:55 +0100
permalink: /instalar-webmin-ubuntu/
description: "Webmin es una de los programas para administrar servidores gratuitos más utilizados, el problema es que, a diferencia de otras aplicaciones, la instalación de webmin puede complicarse un poco, no..."
categories: ["Rendimiento y Aplicaciones"]
---

Webmin es una de los [programas para administrar servidores](/software-administrar-servidores/) gratuitos más utilizados, el problema es que, a diferencia de otras aplicaciones, la instalación de webmin puede complicarse un poco, no obstante, no hay de qué preocuparse, en este tutorial, aprenderás cómo instalar webmin en menos de 5 minutos.

## **Configurar Ubuntu para Webmin**

Antes de instalar nada en nuestro servidor (o VPS), necesitamos comprender por qué a diferencia de otros programas como pueden ser el phpmyadmin o el apache, no podemos instalar con un simple comando el Webmin.

Bien, esto es porque webmin no se encuentra en los repositorios que vienen con Ubuntu, esto quiere decir que, si queremos instalarlo con un comando, con el famoso comando «apt-get install webmin» tendremos que añadir el repositorio oficial de webmin a nuestra máquina (y configurarlo).

No obstante, como Webmin es una aplicación que sólo se va a instalar una vez, para el 99% de los casos no tiene sentido instalar el repositorio en nuestro VPS.

Así que, vamos a proceder a instalar webmin.

## **Instalar Webmin en Ubuntu**

Antes que nada, te indicaré que existen diferentes formas de instalar webmin en Ubuntu, por lo que si buscas otros tutoriales quizás te encuentres con otras formas.

Yo he decidido explicar esta porque pienso que es la que más sencilla puede resultar y menos problemas puede dar.

Lo primero que tendremos que hacer (con permisos root), será instalar las dependencias. Las dependencias serán todos los programitas que necesitará webmin para funcionar sin problemas. Eso sí, antes que nada, os recomiendo que actualicéis los repositorios con el siguiente comando:

> apt-get update

Una vez ya hemos actualizado los repositorios, vamos a instalar las dependencias:

> apt-get install perl libnet-ssleay-perl openssl libauthen-pam-perl libpam-runtime libio-pty-perl apt-show-versions python

Perfecto ¡Ahora solo nos quedará bajar e instalar el webmin!

Para ello vamos a utilizar los siguientes dos comandos:

> wget http://www.webmin.com/download/deb/webmin-current.deb
>
> dpkg –install webmin-current.deb

## **Acceder a Webmin por el puerto 10000**

¡Ya lo tenemos todo instalado!

Ahora sólo nos quedará acceder, para ello simplemente tendremos que poner el protocolo HTTPS, seguido de nuestra IP seguido del puerto 10000, como en el siguiente ejemplo:

> https://13.25.46.85:10000

Una vez hecho esto, ya podremos acceder con nuestro usuario root y la contraseña que usábamos para conectarnos por SSH.

## **Resumen y conclusión**

Webmin es una potente herramienta que nos permitirá gestionar todo nuestro VPS desde una plataforma web. Instalar webmin en un servidor Ubuntu es muy sencillo si sabemos cómo, no obstante, aprender a usar Webmin puede ser un poco más complicado, si tienes dudas y quieres que hagamos un Skype para que te enseñe, puedes contactar conmigo.
