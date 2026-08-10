---
layout: post
title: "Preparar un VPS desde cero"
date: 2017-04-05 08:38:59 +0100
permalink: /preparar-vps-desde-cero/
description: "Muchas veces, cuando contratamos nuestro primer VPS y tenemos que configurarlo para que sea lo más estable posible, pues vamos a poner la web de un cliente o nuestra propia web, nos preguntamos..."
categories: ["Rendimiento y Aplicaciones"]
---

Muchas veces, cuando contratamos nuestro primer VPS y tenemos que configurarlo para que sea lo más estable posible, pues vamos a poner la web de un cliente o nuestra propia web, nos preguntamos ¿Por dónde empezar? ¿Cómo prepararlo?

Justamente por ello, este artículo intenta dar respuesta a las principales dudas que surgen al contratar el primer VPS o servidor.

## ¿Cómo preparar un VPS?

Antes de empezar a preparar nada, deberíamos de plantearnos ¿Qué queremos? ¿Qué necesitamos?

Estas preguntas que pueden parecer “absurdas” son realmente importantes ya que nos permitirá configurar el servidor de una forma o de otra.

Por ejemplo, si queremos que nuestros clientes tengan acceso a un panel de control para que se puedan crear emails, cuentas FTP, etc. No será lo mismo, ni tendremos que instalar lo mismo que si únicamente lo vamos a manejar nosotros.

Y tampoco es que podamos decir “Oh, pues lo instalamos todo”, ya que, para entendernos, tener instalado el cPanel (gestor de cuentas tipo hosting) consume más, que tener 30 páginas web configuradas con comandos.

Así pues, para entender las principales opciones que tenemos vamos a ver algunos ejemplos.

## ¿Qué panel escoger para mi VPS?

Como comentábamos en el párrafo anterior, existen muchas opciones a la hora de configurar un VPS, no obstante, yo siempre suelo resumirlas en tres principales, que son las siguientes.

### Configurar mi VPS con comandos

Sin duda, a nivel de procesador, no hay nada como instalarte y configurarte todo el VPS con comandos, es decir, crear las cuentas FTP con comandos, añadir los nuevos dominios al servidor web editando ficheros desde la consola, etc.

Puede parecer que esta opción no es viable, pero muchísimas empresas es la que utilizan y una vez aprendes, no es para nada complicado.

Las ventajas de hacerlo así, es que es lo más directo para el sistema operativo, por lo que te iría todo mucho más rápido, además puedes controlar absolutamente todo y configurarlo como quieras.

En cuanto a la principal desventaja, simplemente es que hace falta tener un poco de conocimientos avanzados para hacer una buena instalación.

### Configurar mi VPS con Webmin

Webmin es un panel de control que te permite controlar todo el VPS o servidor desde el navegador, es una especie de cPanel, por decirlo de alguna forma, pero sin la parte del hosting.

Una de las principales ventajas de Webmin es que las pocas veces que instala o actualiza algo, lo hace de forma bastante limpia, es decir, cuando instala un paquete (programa) es porque tu se lo has dicho, además te muestra el comando que ha ejecutado.

Por otra parte, Webmin no te abstrae del código, cuando quieres configurar un nuevo dominio en Apache o modificar los parámetros de FTP, Webmin sólo te muestra el fichero de texto de configuración de Apache y tu tienes que modificarlo y guardarlo. Es decir, al final actúa como un editor de texto.

Otra ventaja de Webmin, es que no actúa en segundo plano, por lo que podrías tener 100 webs funcionando en el VPS que mientras no uses Webmin, no te robará recursos de procesador o de memoria RAM.

La principal desventaja, por decirlo de alguna forma, es que necesitas conocimientos medios para poder editar las cosas.

### Elegir un panel tipo Virtualmin o cPanel

En ocasiones, queremos un panel que nos lo instale todo y nos lo configure todo, es decir, que si queremos añadir un nuevo dominio o necesitamos una nueva cuenta de FTP, con un click que nos lo configure.

En este caso podremos elegir entre opciones de pago, como el conocido cPanel u otras opciones openSource como Virtualmin o VestaCP, he hablado sobre cada una de ellas en mi artículo [programas para administrar servidores](/software-administrar-servidores/).

La ventaja está clarísima ¡Nos lo hace absolutamente todo!

Pero tiene un par de desventajas, para empezar es que algunos paneles como cPanel consumen muchísimos recursos, por lo que necesitaremos un servidor mayor y esto puede ser un problema, ya que si lo configuramos todo con comandos, un servidor básico de 2.99€ podría soportar 30 webs sin problema, en cambio, si instalamos cPanel, nos quedaremos sin recursos rápidamente.

Por otra parte, algunos programas tipo cPanel, son tan potentes que nos abstrae totalmente de todo lo que instala y configura y si fallan ¿Cómo sabremos dónde está el fallo?

Como vemos, no hay una opción correcta, todo dependerá de lo que necesitemos en cada caso.

## ¿Como instalar LAMP?

En el caso de que queramos instalar LAMP (Linux+Apache+MySQL+PHP) nos pasa exactamente igual que antes, tenemos varias opciones, principalmente tres, puesto que no tiene mucho sentido instalar programa a programa en el 99% de los casos, vamos a ver las dos más utilizadas.

### Instalar LAMP directamente en un VPS

Una de las formas más eficientes, es instalar alguna de las muchas aplicaciones que se denominan LAMP, donde te instalan, no solamente Apache, MySQL, PHP, sino también sus dependencias (programitas necesarios para que funcionen bien) y además te configuran, por ejemplo, la conexión entre PHP y MySQL.

La parte positiva de instalar LAMP de esta forma es que es muy eficiente (no se suelen instalar tonterías) y puedes tener LAMP instalado y funcionando en 5 minutos, te dejo el artículo [Instalar LAMP en Ubuntu](/instalar-lamp-ubuntu-5-minutos/) para más información.

### Que se encargue el software par administrar servidores

Otra forma de tener todo instalado es que se encargue el gestor que hayas instalado, es decir, al instalar cPanel o Webmin, puedes configurarlos para que de forma automática no sólo se te instale LAMP, sino también que se te configure para dicho administrador.

La parte positiva es que se te integrará correctamente con cPanel o con el software que hayas elegido, mientras que la parte negativa será que puede que no sea tan eficiente como si lo instalas sin más.

## El correo electrónico en el VPS

Este es un tema que daría para otro artículo (y seguramente lo haré), no obstante sólo hay tres vías posibles, que son las siguientes.

### Configurar el correo electrónico en un VPS

Quien piense que configurar un servidor de correo electrónico es fácil, es que nunca lo ha hecho bajo comando, es muy complicado, a diferencia del LAMP, que son aplicaciones muy definidas (Apache, PHP, MySQL), el email, realmente es más bien un concepto, no existe una aplicación llamada “email”, por lo que tienes que instalar una parte que te gestione ficheros de texto (para entendernos) que serán los emails, luego instalar por separados los protocolos y luego si quieres algún servidor web para los emails.

Y eso no termina ahí, sino que ¿Cómo creas los emails? Como verás, es mucho más complicado instalar un servidor de email por comandos que todo el pack de Apache+PHP+MySQL.

### Configurar el email mediante algún software

Si lo deseas, puedes utilizar algún software tipo Virtualmin o cPanel para crear el correo electrónico, estas aplicaciones tienen la ventaja que actúan como una capa de abstracción, haciendo que te olvides de todo, simplemente el email y la contraseña y lo crea.

No obstante, ni aún así te librarás del problema de tener un servidor de emails en tu propio servidor, y es que, muchas veces, tus emails acabarán en la carpeta de SPAM, no porque hayas configurado algo mal, sino porque los proveedores tipo gmail/hotmail consideran que esa IP y ese dominio son nuevos y son más “peligrosos”, por lo que hasta que pase un tiempo, puedes tener problemas.

### Usar un servidor externo

Esta es mi opción preferida y me ahorra muchísimos dolores de cabeza, pensemos que un VPS puede tener 10GB de disco duro y muchas veces, sólo para una cuenta de email, necesitamos más espacio.

Por ello, para que quitarnos problemas de encima y ahorrar en servidores, yo recomiendo externalizar el correo electrónico a Google por ejemplo, que te permite tener tu emails con tu dominio por muy poco dinero. O también lo puedes externalizar a otras empresas gratuitas.

Como vemos, el tema del email es todo un mundo.

## Podcast

Si quieres aprender más sobre preparar un VPS desde cero, puedes escuchar el episodio de mi Podcast en el que hablo sobre todo lo que he escrito en este artículo, pero entrando más en profundidad, por ejemplo:

- Viendo que nos aporta cada sistema tipo cPanel, Webmin, etc.
- Cómo configurar nuestro dominio con un sistema de email gratuito.
- Temas de seguridad en el VPS
