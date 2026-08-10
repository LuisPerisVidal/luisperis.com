---
layout: post
title: "¿Qué es la dirección IP?"
date: 2020-11-16 12:56:01 +0000
permalink: /que-es/direccion-ip/
description: "Qué es una dirección IP, la diferencia entre IP pública y local, y por qué surgió el nuevo formato IPv6."
categories: ["Programación"]
---

Una dirección IP es un identificador lógico (virtual) que permite identificar un dispositivo dentro de una red.

*Un ejemplo de IP: 95.159.126.42*

## ¿Qué es la dirección IP?

Antes de volvernos un poco técnicos, hagámonos unas preguntas:

Cuando estamos navegando por internet y accedemos a una web (esta por ejemplo), ¿cómo sabe el servidor de la web a qué parte del mundo tiene que mandar la información que se le ha solicitado? Justo hasta llegar a tu casa…

Es por ello que cuando hacemos una petición a una página web, realmente le estamos mandando nuestra IP, que sería cómo la dirección de nuestra casa.

De hecho, las IPs se pueden geolocalizar e indicar uno de los nodos más cercanos a nuestra casa. En mi caso (que vivo en Terrassa), se encuentra aquí:

![¿Qué es la IP?](https://luisperis.com/wp-content/uploads/2020/11/que-es-ip.png)

Pero, la IP no únicamente sirve cómo ‘dirección’, esto es algo secundario. Lo importante que tenemos que entender es que la IP es como un DNI, es decir, identifica de forma clara e inequívoca un dispositivo que tiene acceso a una red (ya sea red local o red de redes como es internet).

## IP local e IP pública

Algo que deberíamos de tener en cuenta es la diferencia entre una IP pública y una IP local.

Por regla general, nuestros dispositivos que tengan acceso a Internet van a tener dos IPs, una que será ‘la que identifique nuestra casa’ y que salga a Internet (llamada IP pública), y otra que será para dentro de nuestra casa (IP local).

Esto tiene sentido por varias cosas: la primera, si queremos mandar un fichero entre ordenadores de nuestra casa, ¿qué sentido tiene que tenga que pasar por el servidor de nuestra compañía telefónica y volver a nuestra casa? ¿No sería mejor mandarlo directamente dentro de la casa? Pues bien, esto se hace automáticamente con la IP local que nos ha asignado el router.

Otra razón por la cual existen las IPs locales, es porque cuando contratamos Internet, solamente nos dan una IP pública. Es decir, una IP que pueda navegar por Internet. Si no existieran las redes locales (obligándonos a que todo pase por el router), solamente podríamos tener un ordenador conectado a Internet (que es algo que pasaba en los años 90, con los famosos modems).

## ¿Cómo se estructura una red local y cómo sale a Internet?

Realmente, es muy sencillo. Imagínate que te compras un ordenador nuevo y lo conectas a la red wifi de tu casa. Aquí, lo que estarías haciendo realmente es añadirte a la red local de tu casa (nada de Internet).

Así que el router te daría una IP local (que solamente puedes usar con dispositivos de tu casa), sería muy similar a esta: 192.168.1.30

Es decir, si tuvieras dos ordenadores y un móvil conectados a la red local de tu casa, podrían tener perfectamente, estas IPs:

- 192.168.1.30
- 192.168.1.31
- 192.168.1.32

Ahora bien, ¿recuerdas cuando dije que en los años 90 solamente se podía tener un dispositivo conectado a Internet? Pues bien, realmente no ha cambiado nada, en el siglo XXI seguimos igual. Lo que pasa es que “nos la hemos ingeniado”.

Y lo que hacemos es decir “vale, si solamente podemos tener un dispositivo conectado a Internet, este será el router”. Al final el router, no es más que un ordenador pequeñito, que “enruta” y ordena todas las conexiones de los dispositivos de la casa para que puedan salir a Internet.

Es decir, cuando navegamos, absolutamente todo pasa por el router. Y, por lo tanto, cuando recibimos un email en el ordenador, es el router el que de una forma inteligente manda la información al ordenador correcto dentro de la red local que es nuestra casa.

## IPv4 y los límites

Como hemos visto anteriormente, las IPs (de tipo IPv4, las más usadas actualmente), tienen un formato de números separados por puntos. No obstante, las IPs encuentran sus límites al traducirlo a binario, ya que solamente soporta 32 bits (8 bits por bloque). Esto quiere decir que la IP máxima será (en binario), la siguiente:

11111111.11111111.11111111.11111111

Que traducido a decimal, nos da: 255.255.255.255. Por lo tanto, podemos decir que todas las IPs se encuentran entre las IPs 0.0.0.0 y 255.255.255.255.

Si elevamos 2 (por ser binario) a la 32 (los números/bits que tiene como máximo), nos damos cuenta que como máximo podemos tener 4.294.967.296 de IPs. Es decir, casi 4000 millones de IPs.

Puede parecer mucho, pero pensemos que cada persona estamos gastando varias IPs a la vez (en casa, en el móvil, en la alarma de nuestra casa, etc).

Además, tenemos que pensar que existen rangos de IPs que están reservadas (para redes locales, por ejemplo). Por lo que poco a poco se va reduciendo,

Es por eso que, como nos estamos quedando sin IPs (o ya nos hemos quedado), hace muchos años que se empezó a implementar el sistema IPv6, con el que son compatibles la mayoría de dispositivos.

## IPv6: El nuevo formato

Como hemos comentado antes, con el formato IPv4, había cerca de 4000 millones de IPs. Teniendo en cuenta que la población de la tierra es de 6000 millones de personas, ni siquiera podemos tener una IP por persona. Y, eso sin contar que según las estimaciones, en el año 2025, la población de la tierra será de 8000 millones de personas, ¡una IP cada dos personas!

Pues, viendo todo esto a finales de los 90 (en concreto en 1998), se empezó a desarrollar el nuevo formato de IPs conocido como IPv6.

Mientras la IPv4 admitía 32 bits, la IPv6 admite 128 bits. Puede que la diferencia no parezca mucha, pero hay que pensar que es exponencial, no lineal.

Esto quiere decir que:

- Existirán cerca de 670 mil millones de Ips por cada milímetro cuadrado de planeta tierra (cálculo de Google).
- Cada humano tendrá a su disposición millones de Ips públicas para navegar por Internet.

*Ejemplo de IPv6: 2001:0db8:85a3:08d3:1319:8a2e:0370:7334*
