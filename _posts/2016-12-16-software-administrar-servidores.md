---
layout: post
title: "Software para administrar servidores"
date: 2016-12-16 19:33:24 +0100
permalink: /software-administrar-servidores/
description: "Imagínate que tienes un servidor (o un VPS), no obstante, no quieres estar todo el rato conectándote por consola, entonces te lo preguntas ¿Existe algún programa para administrar servidores? ¿Y..."
categories: ["Otros temas"]
---

Imagínate que tienes un servidor (o un VPS), no obstante, no quieres estar todo el rato conectándote por consola, entonces te lo preguntas ¿Existe algún programa para administrar servidores? ¿Y que sea desde el navegador? ¡Pues sí! ¡Existen muchos! Y en este artículo analizaremos los principales.

# Software para administrar servidores

Para que nadie se pierda, nos tendremos que preguntar ¿Qué son exactamente y qué nos van a permitir?

A la primera pregunta (¿Qué son?), se podría decir que el **software para administrar servidores**, es todo aquel programa que nos facilita la gestión y administración de nuestros servidores para que no tengamos que ejecutar todo el rato comandos por la terminal. La finalidad es crear una capa de abstracción, donde de manera sencilla y con cuatro clicks podamos configurar nuestro servidor.

En cuanto a que nos permite, dependerá que software instalemos, no obstante, una gran mayoría de estos programas están enfocados al mundo web, es decir, que nos permitirán configurar Apache, PHP, bases de datos, etc. No obstante, también nos permitirá crear nuevos usuarios, hacer copias de seguridad, etc.

Para que podamos comprender mejor las opciones de estos programas, podríamos (generalizando) crear la siguiente lista:

### **Gestión desde el navegador**

Muchos de estos programas están pensando para que no tengamos que volvernos a conectar a la terminal mediante SSH.

Por ello nos permitirán gestionar nuestro servidor con cuatro clicks, desde un navegador.

### **Gestión de los programas**

Un buen software para administrar servidores nos debe de permitir gestionar los programas que tenemos instalado en nuestro sistema operativo, además de poder instalar otros programas de manera sencilla.

### **Gestión de ficheros**

Estos programas, también nos deberían de permitir acceder y modificar los ficheros de nuestro servidor de una forma sencilla.

### **Gestión de Backups**

Los backups son importantes, por ello estos programas deberán de tener un módulo para realizar diferentes tipos de backups, ya sean para bases de datos, para carpetas, etc.

### **Configuración web**

En muchas ocasiones usaremos nuestro servidor para tener páginas web, por ello, estos programas nos deben de permitir modificar la configuración de PHP mediante el fichero php.ini y de Apache mediante el fichero httpd.conf

### **Acceso al log**

Nuestros servidores no deberían de tener problemas, no obstante, es mejor tener acceso al log de errores de una manera sencilla. Estos programas nos la deberían de facilitar.

### **Programar tareas (cron job)**

En algunas ocasiones necesitaremos programar tareas, por ejemplo, que algo se ejecute a una hora determinada, esto lo podremos hacer de manera sencilla si nuestro software de gestión de servidores trae un apartado para los «cron jobs».

### **Firewall**

La seguridad es importantísima, por ello el programa que escojamos para gestionar nuestros servidor debería de incluir un módulo para configurar un Firewall. Bien es cierto que muchas veces, no tendrán un módulo propio sino que podrás añadir uno externo, por ejemplo ConfigServer Services.

Veamos los principales programas que hay.

## **Gestor de servidores: cPanel**

![administrar servidores cpanel](/assets/img/2016/administrar-servidores-cpanel.png)

cPanel es uno de los programas de pago mas famosos que hay, está presente en la mayoría de hostings de todo el planeta y sin duda tiene una gran potencia.

Sus principales características son:

1. Muy enfocado al mundo hosting (incluso a la venta).
2. Totalmente enfocado a la creación de webs.
3. De los más completos para hostins.
4. Está programado en PHP y Perl.
5. Es modular, puedes añadir módulos o crear el tuyo propio.

Sin duda, si lo que buscamos es un software para montar un hosting, cPanel es una de las soluciones más famosas.

No obstante, tiene dos desventajas, la primera es que al ser tan grande, es necesario muchos recursos, por ejemplo, ellos recomiendan 1GB de Ram y 40GB de HDD, cuando muchos VPS tienen unicamente 10GB de HDD.

Por otra parte, está el precio, cierto es que es famoso y potente, pero las licencias pueden costarnos más que el servidor si unicamente lo vamos a utilizar para uso personal.

## **Gestor de servidores: DirectAdmin**

![administrar servidores directadmin](/assets/img/2016/administrar-servidores-directadmin.png)

Sin duda uno mis programas de pago preferido es DirectAdmin. Está también muy enfocado al mundo web (creación de cuentas, etc.), veamos sus características:

1. Escrito unicamente en PHP.
2. Es muy rápido, no requiere de muchos recursos.
3. No se ejecuta en oculto (cuando no estas haciendo nada).
4. Es extremadamente fácil y sencillo de utilizar.
5. La licencia te permite tener dominios ilimitados.

De todos los utilizados, tengo que reconocer que DirectAdmin es muy poco potente y en ocasiones puede que acabes instalando otro para las opciones que DirectAdmin no tenga.

No obstante, aunque está muy enfocado a la web y poco al servidor, hay que reconocer que es tan sencillo que a diferencia del cPanel, no te puede dar errores, se centra en una cosa (creación de cuentas, webs, base de datos, FTP, etc.) y lo hace más que bien, por lo que, si no buscas tener un gran control de tu VPS y quieres enfocarlo más a la web de una manera simple, este software puede ser perfecto para ti.

Por otra parte, a diferencia del cPanel, todas las licencias de webmin incluyen dominios ilimitados, es decir, que podrás añadir 1000 páginas web a tu servidor sin problemas de licencia.

## Gestor de servidores: Webmin

![administrar servidores webmin](/assets/img/2016/administrar-servidores-webmin.jpg)

Sin duda es mi preferido (y el que más utilizo), es totalmente gratuito y es por mucho, el más potente de todos. Eso sí, webmin no está enfocado al mundo web aunque te permitirá crear tantas webs como quieras.

Para empezar, veamos sus ventajas:

1. Es uno de los más potentes (miles de posibilidades).
2. Te permite gestionar todo tu VPS, cada parte, cada opción.
3. Liviano, es muy rápido.
4. Te avis si hay actualizaciones de cualquier programa instalado.
5. Es modular, puedes instalar o crear tus propios programas.
6. Casi no tiene capa de abstracción. Cuando haces un click se ejecuta directamente en la terminal.
7. Es totalmente gratuito.

Y ahora veamos algunas de sus desventajas:

1. Es poco intuitivo y tiene una interfaz muy de los años 90.
2. Puede ser muy técnico para algunas personas.

En definitiva, el webmin es uno de esos programas que los amas, o los odias, pero que no te dejan indiferente.

## Gestor de servidores: VirtualMin

![administrar servidores virtualmin](/assets/img/2016/administrar-servidores-virtualmin.jpg)

Virtualmin es gratuito, pero en si mismo no es un programa, sino un módulo enorme para webmin, este módulo está muy pensado para gestionar páginas web y te da las principales opciones que tienes con cPanel o DirectAdmin.

Veamos algunas de sus características:

1. Basado para el mundo web.
2. Totalmente gratuito.
3. Al instalarlo se te instala todo lo necesario (te ahorras problemas).
4. Muy intuitivo.
5. Quizás, dependiendo la RAM, un poco lento.

Este módulo es genial si queremos algo más sencillo para administrar nuestras web que el panel webmin.
