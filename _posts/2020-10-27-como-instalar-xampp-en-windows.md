---
layout: post
title: "¿Cómo instalar XAMPP en Windows?"
date: 2020-10-27 07:21:10 +0000
permalink: /tutorial/como-instalar-xampp-en-windows/
description: "Tutorial paso a paso para instalar y configurar XAMPP en Windows, entendiendo qué instala realmente y cómo probar tu primer 'Hola mundo'."
categories: ["Programación"]
---

XAMPP es un conjunto de programas para montar nuestro servidor web, es totalmente gratuito y open-source.

Pero antes de instalar XAMPP en windows, es importante que tengamos en cuenta una serie de cosas, por ejemplo ¿Qué se instalará realmente con el paquete XAMPP? ¿Cuál es la web oficial y quién está detrás?

## ¿Qué es XAMPP para Windows?

Para empezar, tenemos que comprender que XAMPP es un acrónimo que quiere decir lo siguiente:

**X**  
La X de XAMPP significa “cualquier sistema operativo”, esto quiere decir que se puede instalar en cualquier ordenador, indiferentemente, de si es Windows, Mac o Linux.

**A**  
La A de XAMPP hace referencia al servidor web, con el paquete XAMPP el servidor web que se utiliza es Apache, uno totalmente gratuito.

**M**  
La M de XAMPP es importante indicar que no es de MySQL, desde hace varios años, XAMPP utiliza MariaDB como motor de bases de datos. Aunque es idéntico, si precisas utilizar MySQL y no MariaDB, es recomendable que no instales XAMPP.

**P**  
La primera P de XAMPP, hace referencia a PHP, el principal lenguaje de programación en el entorno del servidor (en cuanto a % de páginas web publicadas).

**P**  
La segunda P de XAMPP, hace referencia a Perl, un lenguaje de programación que usan algunos módulos de PHP, por lo que es recomendable instalarlo.

Ahora que comprendemos que se instalará (Apache, MariaDB, PHP y Perl), tenemos que entender que XAMPP es un conjunto de programas que primeros nos instala estos cuatro programas, y al terminar, nos instalará un quinto programa, este programa, nos permitirá con unos simples clicks, iniciar o cerrar la base de datos, y el servidor web, es como una capa de abstracción y es a lo que mucha gente llama “XAMPP”.

*Nota: Realmente instalará subprogramas necesarios para el buen funcionamiento, según la propia página web, instalará todo esto: Apache 2.4.46, MariaDB 10.4.14, PHP 7.4.11, phpMyAdmin 5.0.3, OpenSSL 1.1.1, XAMPP Control Panel 3.2.4, Webalizer 2.23-04, Mercury Mail Transport System 4.63, FileZilla FTP Server 0.9.41, Tomcat 7.0.106 (with mod_proxy_ajp as connector), Strawberry Perl 5.32.0.1 Portable*

## Requisitos

Realmente, el único requisito importante de XAMPP para windows, es que tengas 200Mb de espacio libre.

Ninguno de los programas que instala realmente llega a consumir mucha memoria RAM y de hecho, podría funcionar sin problemas en un ordenador de hace 20 años.

## XAMPP en entorno de pruebas

Es importante indicar, que normalmente los servidores web no suelen funcionar bajo windows y las pocas veces que funcionan bajo windows es con otro servidor web (IIS).

Esto no quiere decir que no se pueda utilizar, de hecho XAMPP en Windows es muy famoso y es de los más utilizados, pero siempre se suele utilizar para desarrollar una plataforma o una web, y cuando está terminada, se pasa a un hosting o a un servidor (que normalmente será linux).

## Instalar XAMPP

Instalar XAMPP es realmente sencillo. Tan solo tienes que hacer los siguientes pasos:

### 1. Acceder a la página web

Lo primero que tenemos que hacer, es ir a la página web oficial del proyecto XAMPP, gracias a esto, nos ahorraremos descargar alguna otra versión modificada, que pueda traer publicidad o incluir algún virus.

La web oficial en castellano es: https://www.apachefriends.org/es/

### 2. Descargar el fichero correcto

Lo segundo que tienes que hacer, es darle al botón de descargar “XAMPP en windows” que encontrarás en la home. Esto hará directamente que se descargue un fichero .exe (el instalador).

Si queremos instalar alguna versión en especial, simplemente tendremos que ir al menú y presionar en “Descargar”, entonces se nos abrirá una página web con todas las versiones para descargar.

Una vez escogida la versión que queremos, simplemente le damos a “Descargar” y se descargará nuestro fichero .exe (el instalador).

### 3. Instalar en la carpeta correspondiente

Una vez tenemos descargado nuestro fichero .exe, solamente tendremos que hacer doble click y seguir las instrucciones del instalador. Una vez haya terminado de instalarse todo, reiniciar el ordenador.

Así de sencillo, tendremos XAMPP instalado.

## Inicializar XAMPP

Una vez instalado XAMPP y reiniciado el ordenador tocará inicializarlo.

Esto es algo que tendremos que hacer cada vez que apaguemos el ordenador, o que queramos usar XAMPP.

Simplemente tendremos que abrir el programa XAMPP (el icono es naranja) y una vez abierto, tenemos que seleccionar “MySQL Database” y darle a “Start”, lo mismo tendremos que hacer con la opción “Apache web server”.

Al final nos tendría que salir algo similar a esta captura:

![XAMPP windows](https://luisperis.com/wp-content/uploads/2020/10/001-xampp-windows.png)

No es necesario activar el ProFTPD.

## Hola mundo en XAMPP

Una vez, ya lo tenemos todo activado, simplemente nos tendríamos que abrir nuestro navegador predeterminado y acceder a: http://127.0.0.1

Al acceder veremos una web que nos indica que XAMPP se ha instalado correctamente ¡Ya está todo instalado y funcionando!

Para modificar dicha web, solamente tendrás que ir a la ruta donde has instalado XAMPP, que por defecto es:  
http://xampp/htdocs/
