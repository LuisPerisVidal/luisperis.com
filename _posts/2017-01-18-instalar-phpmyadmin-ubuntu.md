---
layout: post
title: "Instalar phpMyAdmin en Ubuntu"
date: 2017-01-18 12:04:56 +0100
permalink: /instalar-phpmyadmin-ubuntu/
description: "Es posible que necesitemos crear una base de datos o simplemente gestionar las que ya tenemos, y aunque con comandos es más que posible, nos vendría genial una aplicación web. Pues bien, esa..."
categories: ["Rendimiento y Aplicaciones"]
---

Es posible que necesitemos crear una base de datos o simplemente gestionar las que ya tenemos, y aunque con comandos es más que posible, nos vendría genial una aplicación web. Pues bien, esa aplicación web que nos va a permitir gestionar las bases de datos se llama phpMyAdmin y en este artículo vamos a ver cómo la podemos instalar en Ubuntu.

## **Instalar phpMyAdmin en Ubuntu**

Como veremos ahora mismo, la instalación de phpMyAdmin en Ubuntu es facilísima, solamente costa de un par de comandos.

Lo primero que tendremos que hacer será actualizar nuestros repositorios, esto nos asegurará de que instalamos la última versión de phpMyAdmin. Para actualizar los repositorios tan sólo necesitamos ejecutar el siguiente comando:

> apt-get update

Ya está, tardará unos 20 segundos en actualizarse todo y una vez termine, ya estará listo para instalar phpMyAdmin en Ubuntu con el siguiente comando.

> apt-get install phpmyadmin

¡Listo! Simplemente con ese comando ya podemos acceder a nuestro phpMyAdmin desde nuestro navegador de la siguiente forma:

> http://mi-dominio.com**/phpmyadmin**

## **Configurar phpMyAdmin en Ubuntu**

Como hemos podido observar, la instalación de phpMyAdmin ha sido muy sencilla, de hecho, es una instalación sencilla y potente, ya que en el 99% de los casos no necesitaremos configurar nada más.

No obstante, para los más curiosos, es interesante saber que phpMyAdmin guarda sus ficheros de configuración en la siguiente ruta

> /etc/phpmyadmin

Desde esos ficheros podemos hacer virguerías, desde denegar que se pueda loguear con un usuario (por ejemplo, root), hasta indicar que no muestre ciertas bases de datos importantes.

Por último, también podemos modificar el fichero llamado apache.conf, si accedemos a este fichero, veremos que en la primera línea encontramos el Alias /phpmyadmin, por lo que si cambiamos ese dato, a por ejemplo /mydb, al intentar acceder a nuestro dominio.com/phpmyadmin ya no nos funcionará.

Ahora deberíamos de acceder desde dominio.com/mydb

Estos cambios se suelen realizar por seguridad.

## Resumen y conclusión

Como podemos observar, tanto la instalación de phpMyadmin, como su configuración (si requiere) es especialmente sencilla, por lo que no deberíamos de tener ningún problema. No obstante, si te has encontrado con algún problema o quieres crear un módulo adicional a phpmyadmin, puesto que soy programador php, puedes contactar conmigo y te ayudo encantado.
