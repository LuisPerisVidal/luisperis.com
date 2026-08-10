---
layout: post
title: "Seguridad de los VPS"
date: 2017-03-14 11:51:15 +0100
permalink: /seguridad-los-vps/
description: "Mucha gente que se inicia en el mundo de los VPS me escriben preocupados por el tema de la seguridad de los VPS, en este artículo veremos si tenemos que preocuparnos o no y qué podemos hacer para..."
categories: ["Rendimiento y Aplicaciones"]
tags: ["seguridad", "VPS"]
---

Mucha gente que se inicia en el mundo de los VPS me escriben preocupados por el tema de la seguridad de los VPS, en este artículo veremos si tenemos que preocuparnos o no y qué podemos hacer para estar más seguros.

## Seguridad: Hosting o VPS

La mayoría de la gente que contrata un VPS suele ser porque tienen bastantes hostings para sus páginas web y desean encontrar una solución más potente, rápida y barata, y los VPS dan justamente eso.

No obstante, hay dos puntos que tenemos que tener en cuenta que nos ofrecen los hostings antes de pasarnos a un VPS:

- Estamos limitados: En un hosting estamos limitados, no podemos «cargarnos» el sistema operativo por error. Y esto, que parece una tontería, es mucho más importante de lo que pensamos cuando hablamos de un VPS.
- Es seguro: En los hostings, el tema de la seguridad se ocupa la empresa a la que se lo contratas, tu, ni te tienes que enterar sobre que sistema operativo está funcionando, para ti es totalmente transparente.

Entonces, si con el hostings nos ahorramos problemas de seguridad ¿Por qué debería de contratar un VPS?

Esa es una muy buena pregunta, si no tienes muchos conocimientos de VPS y no quieres aprender y además, tienes pocas páginas web, yo suelo recomendar un hostings.

Dicho esto, ahora vamos a ver que tenemos que tener en cuenta referente a la seguridad, si eres como yo y quieres aprender a gestionar tu propio VPS.

## Cambia los puertos de tu VPS

Una de las primeras cosas que deberemos realizar será cambiar los puertos de nuestro VPS, pero ¿Qué son los puertos?

En resumen, existen muchas aplicaciones que reciben peticiones en el mismo dominio (apache con el protocolo http, proftpd con el protocolo FTP, etc.) ¿Cómo sabe el ordenador a qué programa mandar cada petición? ¡Con los puertos!

Los principales puertos por defecto son los siguientes:

- FTP (21)
- SSH (22)
- HTTP (80)
- webmin (10000)

Lo que deberemos de hacer es cambiar estos puertos (¡menos el 80!) ¿Y por qué cambiar los puertos del VPS?

Pues porque un ataque suele funcionar de la siguiente forma:

- Un bot tiene una lista con miles de IPs
- Comprueba que tenga todos los puertos por defecto
- Comprueba si tiene el FTP vulnerable, etc.
- Comprueba si usa alguna password débil
- Ataca

En cambio, si desde el principio ya cambiamos el puerto y no lo detecta, le resulta más rápido pasar a otra IP (al VPS de otra persona) que hacer una escaneo de puertos.

## Tener configurado nuestro Firewall

Algo importantísimo es tener un Firewall configurado, ojo, no hace falta que nos compliquemos la vida instalando uno, podemos utilizar las reglas de «ip tables» que nos traerá nuestro VPS ¡Así de fácil!

Existen una regla «de oro» que deberíais tener en cuenta: Bloquear todas las peticiones que no vayan a los puertos estrictamente necesarios.

De hecho, se podría bloquear incluso los puertos FTP, SSH y webmin y permitir únicamente que se acceda con una IP determinada, pero para ello deberías de tener contratado una IP estática con tu proveedor de Internet.

## Tener todo actualizado

Algo importantísimo en todo sistema informático, sea un VPS o un ordenador, es tener todo correctamente actualizado ¿Recuerdas las vulnerabilidades de Flash o Adobe? Si no los teníamos actualizados nos podían infectar nuestro ordenador.

Pues pasa lo mismo con nuestro VPS, pero no os preocupéis, porque tenemos herramientas como el webmin donde con un simple click se nos actualizará todas las aplicaciones de forma automática. Sencillo ¿Verdad?

Eso sí, no olvidemos realizar un backup de tu VPS antes de actualizar nada, no sea que falle y pierdas todos los datos.

## Tener WordPress actualizado

Hace poco me contactó un chico que estaba desilusionado con los VPS porque le habían hackedo un wordpress ¿La culpa fue del VPS? ¡Para nada!

Lo que pasó es que no actualizo nunca su WordPress y salió una vulnerabilidad nueva que aprovecharon para atacarle.

Por lo tanto, ya tengas WordPress o cualquier otro CMS ¡Actualízalo!

## Seguridad en un VPS

Como podemos observar, estos pocos pasos no resultan nada complicados de seguir ¿Verdad? En cambio nos proporcionarán una gran seguridad comparándolo con la configuración que viene por defecto en nuestro VPS.

Más adelante, en otro artículo, hablaré sobre seguridad avanzada para proteger todavía más nuestro VPS.
