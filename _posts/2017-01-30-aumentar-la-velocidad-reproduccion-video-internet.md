---
layout: post
title: "Aumentar la velocidad de reproducción en un vídeo en Internet"
date: 2017-01-30 11:57:22 +0100
permalink: /aumentar-la-velocidad-reproduccion-video-internet/
description: "Imagínate que estás viendo un documental o un curso en Vimeo (o en otra plataforma) y te gustaría aumentar la velocidad de reproducción del vídeo, no obstante, te encuentras con que ¡No tienes la..."
categories: ["Rendimiento y Aplicaciones"]
---

Imagínate que estás viendo un documental o un curso en Vimeo (o en otra plataforma) y te gustaría aumentar la velocidad de reproducción del vídeo, no obstante, te encuentras con que ¡No tienes la opción! Si te pasa esto, no pasa nada, en este artículo veremos cómo podemos construir un *hack* para hacer esto.

## **Aumentar velocidad de reproducción de Youtube**

![aumentar velocidad youtube](/assets/img/2017/aumentar-velocidad-youtube.jpg)

Youtube ya ha implementado un control para aumentar la velocidad de reproducción de sus vídeos, no obstante, nos encontramos con dos problemas:

- Sólo tiene tres posiciones fijas (1.25, 1.50, 2), es decir, que no podrías aumentar un 35% la velocidad, pasas del 25% al 50%.
- No permite aumentar la velocidad más del doble.

Pues bien, si buscas un hack que mejore estas pequeñas carencias de youtube, el hack que indicaré a continuación te permitirá configurar la velocidad de reproducción que quieras en youtube.

## **Aumentar velocidad de reproducción de Vimeo**

![aumentar velocidad vimeo](/assets/img/2017/aumentar-velocidad-vimeo.jpg)

Yo soy un fan de la plataforma de cursos boluda.com donde hay más de 1000 clases que puedes ver, lo que sucedía es que utiliza Vimeo (seguramente por su seguridad y prestaciones) y aunque Vimeo muestra los vídeos en gran calidad tiene una parte negativa: No puedes aumentar la velocidad de reproducción.

Y esto es horrible, sobre todo cuando estás acostumbrado a ver todo al doble de velocidad ¡Puedes aprender el doble en mitad de tiempo!

Así pues, puesto que no encontraba ningún *hack* que funcionara en Firefox decidí construir el mío propio.

## **Aumentar la velocidad de un vídeo en Internet**

Es importante entender que el *hack* que voy a publicar tiene unas ventanas muy interesantes:

- Sirve para cualquier plataforma (no únicamente Vimeo).
- Sirve para cualquier navegador (sí, incluso Internet Explorer).
- Te permite subir la velocidad de reproducción sin límites (a diferencia del nativo de youtube que sólo te permite hasta el doble).
- No es necesario instalar ningún complemento.

Dicho esto ¡Vamos a ello!

Antes de continuar, tenemos que recordar dos cosas que he comentado, la primera es que «no hace falta instalar ningún complemento» y la segunda es que «es compatible con todos los navegadores».

¿Y esto cómo puede ser? ¡Pues muy sencillo!

Tan sólo tendremos que incluir el siguiente código a nuestros Marcadores (o páginas guardadas) ¡Así de sencillo!

javascript:document.getElementsByTagName(«video»)[0].playbackRate%20=%20prompt(«%C2%BFQu%C3%A9%20velocidad?»);void(0);

También podéis arrastrar el siguiente enlace (Aumentar reproducción de vídeo) a vuestro marcador o con el botón secundario le dais a «añadir a marcadores» ¡Así de sencillo!

## **¿Cómo funciona?**

Como se puede observar únicamente es una sola línea, por lo que no tiene complicación. El *hack* simplemente detecta el primer vídeo que hay en la pestaña abierta y multiplica la velocidad normal (1) por el número que le hayas dicho ¡Así de simple!

Como vemos, el hack es muy simple y se podría mejorar de muchas formas (que afectara a todos los vídeos, a los iframes, que apareciera el mensaje de forma bonita, etc.), no obstante, lo importante es que función muy bien.

Deberemos de tener en cuenta lo siguiente:

- Si una página tiene los vídeos dentro de un iframe (como suele trabajar vimeo), tendremos que darle al botón secundario y la opción «ver iframe».
- Ciertos navegadores, si superas el triple de velocidad el sonido se escucha a saltos.

## **Un complemento para aumentar la velocidad**

Si queréis, pudo desarrollar un complemento para Firefox y Chrome que sea una versión mejorada de este hack y que permita muchas más opciones.

Si de verdad os interesa, podéis poneros en contacto conmigo, desarrollo el complemento y publico el código.
