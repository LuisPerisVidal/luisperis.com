---
layout: post
title: "¿Qué es la dirección MAC?"
date: 2020-11-13 09:45:18 +0000
permalink: /que-es/direccion-mac/
description: "Qué es la dirección MAC, cómo identifica a nivel de hardware a un dispositivo de red y en qué se diferencia de la IP."
categories: ["Programación"]
---

La dirección MAC es un conjunto de letras y números alfanuméricos a nivel de hardware que identifica a un dispositivo de red dentro de una red local.

Ejemplo de MAC: 00:2A:33:22:4C:D3

## ¿Qué es la dirección Mac?

Antes que nada tenemos que aclarar que absolutamente todos los dispositivos que se conecten o se puedan conectar a una red local, tienen una dirección Mac.

Esto quiere decir que, no sólo los ordenadores la tienen sino que también los relojes inteligentes, los móviles, los dispositivos inteligentes (IoT) como por ejemplo las cámaras de videovigilancia que van por wifi, etc.

También, es importante indicar que, a diferencia de la IP, que es una “dirección lógica”, es decir, que es virtual, por lo que podemos tener una hoy pero mañana otra (puesto que es el router quien nos dice cuál tenemos), las direcciones MAC son fijas (no pueden cambiarse), y se establece cuando se fabrica la tarjeta de red.

Algo importante a destacar es que, cada tarjeta de red tiene una MAC diferente pero, es cierto que los números son ‘finitos’. Además, el fabricante solamente puede usar 6 dígitos alfanuméricos (más adelante lo veremos). Esto quiere decir que, cada vez que un fabricante haga 16 millones de tarjetas de red, tendrá que volver a repetir los números. Esto, que podría llegar a ser muy problemático, no es tanto, ya que la dirección MAC se usa a nivel de red local, no de Internet y ¿cuántos ordenadores tenemos conectados en casa? ¿4-5 máximo? Además de diferentes fabricantes, por ello que se lleguen a repetir, no suele ser un problema.

## ¿Para qué sirve la dirección MAC?

Si pensamos en cuando nos conectamos a una red wifi, mucha gente cree que nuestro ordenador manda la contraseña a la red wifi y si es correcta, mediante el protocolo DHCP se nos asigna una IP local.

Y esto, en parte es correcto pero, ¿cómo sabe el router a quién tiene que asignar una nueva IP y darle acceso a Internet? Si solamente existiera un dispositivo se podría pero, si en casa tenemos cinco dispositivos ¿cómo diferencia el router a los cinco dispositivos? Con la dirección MAC.

De hecho, si accedemos a la configuración de nuestro router, veremos que podemos ‘prohibir y permitir’ direcciones MAC, lo que se conoce como listas blancas o listas negras.

Es decir, al estar la dirección escrita en la fábrica, es una forma más segura de verificar una tarjeta. Además de ser la única forma de poder “encontrar” un dispositivo antes de que se le asigne una dirección IP.

## El formato de la dirección MAC

Como hemos visto anteriormente, un ejemplo de dirección MAC es el siguiente:  
00:2A:33:22:4C:D3

Es decir, son 6 bloques de 8 bits (2 caracteres hexadecimales), separados por dos puntos. Lo que hace un total de 48 bits.

Pues bien, los tres primeros bloques (24 primeros bits) hacen referencia al fabricante y los siguientes 24 bits son datos únicos de la tarjeta de red.

Es decir, que cada ‘fabricante’ puede generar x tarjetas de red diferentes pero, ¿cuántas son?

Pues muy sencillo, puesto que son 24 bits (3 bloques de 2 letras hexadecimales), simplemente tenemos que elevar 16 a 6, lo que nos da un total de 16.777.216 posibles tarjetas de red por cada fabricante.

## ¿Cambiar la dirección MAC?

Una pregunta que se hace mucha gente es, si la dirección MAC la escribe el fabricante ¿se puede cambiar la dirección MAC?

Pues bien, la respuesta es “sí y no”, me explico:

Mientras que la dirección IP es una dirección lógica (virtual), y podemos poner la que queramos, de forma muy sencilla, la dirección MAC está escrita por el fabricante en una especie de memoria ROM (memoria de solo lectura). Es decir, nunca podremos cambiar la dirección MAC.

Ahora bien, si analizamos lo que sucede en el modelo OSI (modelo para conexiones de red), veremos que, realmente, es el sistema operativo quien se encarga de leer la MAC del hardware (dispositivo físico) y de mandárselo al router o a los dispositivos.

Sabiendo esto, entenderemos que podemos ‘falsificar’ nuestra MAC para poner la que queramos.
