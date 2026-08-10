---
layout: post
title: "La terminal MySQL"
date: 2017-03-30 10:00:50 +0100
permalink: /la-terminal-mysql/
description: "Cuando empezamos en el mundo de la programación y más, cuando tratamos la programación web, es imposible que no acabemos utilizando phpMyAdmin o alguna herramienta similar, que nos permita..."
categories: ["Programación"]
---

Cuando empezamos en el mundo de la programación y más, cuando tratamos la programación web, es imposible que no acabemos utilizando phpMyAdmin o alguna herramienta similar, que nos permita gestionar nuestras bases de datos a golpe de click. No obstante, en algunos casos, es posible que no podamos usar phpMyAdmin o que simplemente no sea suficientemente potente.

Por ello, vamos a ver cuál sería una de las vías más profesionales: La terminal MySQL.

## La terminal MySQL

La terminal de MySQL o consola MySQL es una consola de comandos tipo terminal de Linux (o tipo MS-DOS) desde donde la que podemos hacer absolutamente todo. Y cuando digo todo, es todo.

Podemos acceder a nuestras bases de datos, revisar los datos, modificarlos, eliminarlos, crearlos, etc.

Pero no sólo se trata de una terminal donde mandar comandos SQL básicos, sino que también podemos realizar todas las operaciones que SQL permita, por ejemplo:

- Crear nuevos usuarios (y asignarles una contraseña).
- Limitar los permisos de los usuarios (quizás que sólo puedan hacer SELECT a una tabla de una base de datos y no al resto).
- Limitar cuantas queries al día puede hacer un usuario en concreto.
- Hacer copias de seguridad de una base de datos.

Como podemos observar, utilizar la terminal MySQL es la forma más rápida y eficaz de configurar todo lo que necesitemos en MySQL.

## Accediendo a la terminal MySQL

Una de las ventajas que tiene la terminal MySQL es que los comandos, son exactamente igual en todos los sistemas operativos, no obstante, sí que es cierto que puede cambiar la forma de acceder a la terminal.

Veamos dos casos:

### Acceder a la terminal MySQL con Windows

En este caso, lo primero que tendremos que hacer será acceder a la consola de comandos de Windows, para ello podremos presionar la tecla de Windows + la letra «R» y escribir «cmd» en la caja de texto que nos aparecerá, por último presionamos enter.

Perfecto, una vez ya estemos en la consola de windows, tendremos que ejecutar el fichero mysql.exe, para ello sólo tendremos que movernos hasta la carpeta donde hayas instalado MySQL (o XAMPP), una vez estemos en dicha carpeta, sólo tendremos que escribir el comando:

> mysql.exe -u *usuario* -p

### Acceder a la terminal MySQL con Linux

En este caso es muchísimo más sencillo, sólo tendremos que abrir la terminal de Linux y escribir el siguiente comando:

> mysql -u *usuario* -p

¡Perfecto!

No obstante, fijémonos que he puesto «*usuario*«, lógicamente, esta palabra la tendremos que cambiar por nuestro usuario MySQL, aunque, si queremos utilizar algún comando especial (crear usuarios nuevos, dar permisos), deberemos de utilizar el usuario «root», puesto que es un usuario administrador.

Por último, el argumento «-p» le indica que la cuenta tiene contraseña, por lo que una vez que ejecutemos el comando, nos pedirá la contraseña (por seguridad, los caracteres no se mostrarán por pantalla).

## Comandos para la terminal MySQL

Aunque el 100% de los comandos SQL funcionan perfectamente en dicha terminal, sí que es cierto, que si nunca la hemos usado, nos faltará conocer algunos comandos que nos harán la vida más fácil.

Pero ojo, antes tengo que advertir de algo, en la terminal de MySQL, los comandos **siempre** deben de terminar en punto y coma (;), sino, no se ejecutará el comando.

Dicho esto, vamos a ver tres comandos básicos que debemos de conocer:

### Mostrar todas las bases de datos

Si queremos recuperar una lista con todas las bases de datos que tenemos, simplemente tendremos que ejecutar el comando:

> SHOW DATABASES;

### Acceder a una base de datos

Si queremos «acceder» o cambiar a otra base de datos (para ejecutar código SQL sobre ella), podremos seleccionarla con el comando:

> USE *nombre\_base\_de\_datos*;

### Mostrar todas las tablas de una base de datos

Una vez estemos dentro de una base de datos, si queremos mostrar todas las tablas, podremos hacerlo con el siguiente comando:

> SHOW TABLES;

¡Perfecto! ¡Ya está! ¿A que no es tan complicado?

Con estos tres comandos ya podréis empezar a indagar en la terminal de MySQL, lógicamente, una vez estéis dentro de una base de datos (con el comando USE), podréis empezar a ejecutar el comando SQL que queráis, por ejemplo un SELECT.

## Resumen y conclusión

Aprender a utilizar la terminal MySQL es fundamental para considerarse un buen programado, imagínate ¿Qué sucede si no funciona phpMyAdmin? ¿Cómo podrías seguir trabajando?

Como siempre, si tienes cualquier pregunta, no dudes en contactar conmigo.
