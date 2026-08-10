---
layout: post
title: "¿Qué es una instancia en Cloud?"
date: 2017-01-25 12:19:48 +0100
permalink: /una-instancia-cloud/
description: "Es posible que hayas intentando profundizar en el mundo del Cloud Computing, pero te hayas visto sobrepasado por los confusos términos ¿Instancias? ¿Imágenes de Instancias? Pero no te preocupes..."
categories: ["Otros temas"]
---

Es posible que hayas intentando profundizar en el mundo del Cloud Computing, pero te hayas visto sobrepasado por los confusos términos ¿Instancias? ¿Imágenes de Instancias? Pero no te preocupes por nada, en este artículo analizaremos todos estos términos para que les podamos perder el miedo.

## **¿Qué es una instancia en Cloud?**

Las instancias en Cloud son un nuevo paradigma en cuanto al alojamiento, por lo tanto, como nuevo paradigma tenemos que abrir la mente y no dar nada por supuesto.

Por ello y para que se entienda mejor, vamos hacer una pequeña comparación entre un servidor y una instancia en Cloud.

Los servidores son máquinas físicas que pagas mensualmente para poder acceder a ella y tienen unos recursos (físicos) establecidos, por ejemplo, 8GB de RAM y 500GB de disco duro. Es decir, son ordenadores que puedes tocar y que alquilas mensualmente.

Una vez comprendemos esto, podemos compararlo con una instancia en Cloud, no obstante, antes debemos de conocer algo: El Cloud Computing no es físico, no puedes tocar un ordenador, el Cloud Computing está compuesto por decenas (o centenares) de ordenadores que juntan todos sus discos duros, todo su procesamiento, toda su memoria RAM y una vez está todo junto, ya deciden cómo repartirlo.

Una vez tenemos estos conceptos claros, nos toca preguntarnos (de nuevo) ¿Qué es una instancia en Cloud?

Pues bien, una instancia en Cloud se podría definir como un servidor virtual (que no es físico), el cual podemos alquilarlo sólo unas horas (no es necesario un mes entero) y al no ser un ordenador físico (sino que está virtualizado) podemos pasar de tener 10GB de RAM a tener 1250 GB de RAM con una simple click del ratón.

Para entender mejor qué es una instancia, vamos a ver sus características principales:

## **Características de las instancias en Cloud**

- Está totalmente virtualizado, no es físico, por lo que podemos subir los recursos de 10GB a 200GB de RAM ¡O bajarlos para pagar menos si no los necesitamos!
- A diferencia de los servidores y de los VPS, las instancias suelen funcionar por horas, es decir, puedes tener un ordenador con Ubuntu con 200GB de RAM y 50 procesadores y pagar sólo dos horas de uso.
- Al no ser físico, no tenemos que preocuparnos de si se rompe un disco duro (cómo puede ocurrir en los servidores físicos), ya que nuestros datos están duplicados en varios discos duros.
- Al estar virtualizado podemos hacer un backup de todo nuestro sistema, esto se conoce como «imagen».

Una vez conocemos las principales características, vamos a centrarnos en la última que hemos visto, la imagen de una instancia.

## **¿Qué es una imagen de una instancia?**

Las imágenes se pueden categorizar como backups, no obstante, hay una gran diferencia entre un backup y una imagen.

Los backups lo solemos hacer únicamente de los datos importantes (bases de datos, ficheros de una web, etc.), es decir, sólo guardamos lo esencial.

Mientras que las imágenes son copias «de todo el sistema», es decir, sería exactamente igual que si clonamos un disco duro. Se hace una copia de todos los ficheros, incluso de los ficheros del sistema operativo.

![imagen instancia cloud](/assets/img/2017/imagen-instancia-cloud.jpg)

Esto nos haces preguntarnos, si una instancia es una copia del sistema entero ¿La mera existencia de dicha imagen no tendría que copiarse dentro de la imagen (si hacemos dos backups) y ocasionar un bucle?

Así pues, para entender cómo funciona vamos a ver las características de las imágenes:

- Lo más importante es comprender que a diferencia de muchos backups, las imágenes no se guardan en la instancia, sino que se encarga de gestionarlo la empresa proveedora.
- Puesto que no se guarda en la instancia, no tendrás que duplicar el espacio (disco duro virtual) de nuestra instancia.
- Por otra parte, puesto que una imagen ocupa espacio (aunque no procesamiento), tendrás que pagar por cada imagen que crees, tranquilo, estamos hablando de 0.10€/mes aproximadamente.
- Una vez creada la imagen, podrías dar de baja la instancia (dejar de pagar) y seguir donde lo dejaste, al cabo de un año, gracias a la imagen.

Así pues, vamos a ver, cómo podemos recuperar una instancia a partir de una imagen.

## **Crear una instancia a partir de una imagen**

Pongámonos en situación, hemos creado una instancia, la hemos estado utilizando durante unos meses para un proyecto de nuestra empresa, pero dicha empresa ha decidido parar temporalmente el proyecto, así que decidimos hacer una imagen (Backup) de esa instancia y damos de baja la instancia (para no seguir pagando).

Bien, ahora imagínate que ha pasado un año desde entonces y la empresa ha decidido proseguir con el proyecto.

Pues bien, en ese caso podríamos hacer lo que se conoce como «lanzar una instancia a partir de una imagen», esto quiere decir que cogeríamos la imagen que habíamos creado hace un año y crearemos una instancia a partir de esa imagen.

¿El resultado? Pues que tendríamos, exactamente, la misma instancia que teníamos justo hace un año, antes de parar el proyecto, por lo que podríamos seguir dicho proyecto, sin perder tiempo.

Lógicamente las instancias no sólo se realizan cuando paras un proyecto durante un año, también puedes realizarlo antes de actualizar el sistema o actualizar la web, para que, si algo no funciona bien, puedas regresar a un punto anterior.

## **Resumen y conclusión**

Sin ninguna duda, las instancias son el futuro del hospedaje y si queremos estar dentro del mercado y no quedarnos obsoletos, debemos de conocer su funcionamiento.

Si te interesa que te forme por Skype sobre este mundo, puedes ponerte en contacto conmigo.
