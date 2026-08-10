---
layout: post
title: "Configurar Let’s Encrypt manualmente en Ubuntu"
date: 2017-03-15 18:36:28 +0100
permalink: /configurar-lets-encrypt-manualmente-ubuntu/
description: "Hace unas semanas publiqué un artículo de cómo generar automáticamente certificados Let’s Encrypt para apache gracias a cerbot, no obstante, en ocasiones (ya sea por errores o por otros motivos)..."
categories: ["Rendimiento y Aplicaciones"]
---

Hace unas semanas publiqué un artículo de cómo generar automáticamente certificados Let’s Encrypt para apache gracias a cerbot, no obstante, en ocasiones (ya sea por errores o por otros motivos) deberemos de crear nuestros propios certificados de forma manual para después vincularlos con nuestro servidor web. Y esto, que puede parecer complicado (pero que realmente es muy sencillo), es justamente lo que veremos en este artículo.

## **Error con el certbot al generar certificado para apache**

Una de las principales razones por las que deberemos de generar nuestros certificados de forma manual y no con el asistente «automático» es porque certbot falla más que una escopeta de feria cuando se trata de configurar Apache.

De hecho, la mayoría de las personas que me contactan haciendo referencia a mi artículo anterior, lo hacen por el siguiente error:

Failed authorization procedure. dominio.com (tls-sni-01): urn:acme:error:malformed :: The request message was malformed :: Failed to connect to 149.101.18.255:443 for TLS-SNI-01 challenge: Server only speaks HTTP, not TLS

challenge: Server only speaks HTTP, not TLS
To fix these errors, please make sure that you did not provide any invalid information to the client, and try running Certbot again.

Si es tu caso ¡No te preocupes! ¡Ahora veremos cómo puedes generar tus certificados gratuitos!

No obstante, hay que entender que Apache es un servidor web (de muchos existentes) y que cada uno puede instalarlo en una carpeta diferente y además tener una configuración diferente, por lo que, más o menos (entre comillas), es comprensible que certbot pueda generar estos errores, sobretodo, cuando certbot debe de crear un virtualhost para el nuevo dominio.

## **Let’s encrypt y certbot no son para Apache**

Esto es algo que ya he comentado en el párrafo anterior, pero es importante entenderlo bien, para poder entender cómo funcionan los certificados digitales.

Por decirlo de alguna forma, un certificado digital como el de Let’s encrypt nos «firma» y nos autoriza a utilizar el protocolo https sin problemas y sin advertencias para el usuario.

El encargado en la parte del servidor de utilizar y tratar la información del protocolo https «normalmente» es Apache, pero ¡Ojo! Existen muchos otros servidores web, como por ejemplo nginx, nodeJS, IIS, etc. que también pueden soportar peticiones HTTPs.

Entonces ¿Cómo podemos configurar estos servidores con los certificados Let’s Encrypt? Pues bueno, ya veremos que en algunos casos existen formas automáticas, no obstante, siempre, en el 100% de los casos (igual que en Apache) podremos hacerlo de forma manual.

Así que, este artículo, intentará mostrar cómo podemos generar unos certificados indiferentemente del servidor web y luego veremos cómo podemos configurar manualmente Apache con dichos certificados.

## Generando nuestro certificado manualmente

¡Perfecto! Una vez ya hemos comprendido que los certificados no tienen nada que ver con Apache que es nuestro servidor web, vamos a ver el comando que nos generará dichos certificados.

Ojo, necesitamos tener el certbot-auto instalado, puedes ver cómo hacerlo desde el artículo [Instalar Let’s Encrypt en Ubuntu](/instalar-lets-encrypt-ubuntu/).

El comando es el siguiente:

> certbot-auto certonly -d dominio.com

¡Así de simple!

![let's encrypt error apache](/assets/img/2017/letsencrypt-error-apache.jpg)

Como vemos en la imagen, ahora nos pide que le indiquemos para que lo vamos a utilizar, en el caso de que después lo queramos utilizar en Apache, simplemente presionaremos el número 1 y presionaremos «Enter».

Perfecto ¡Ya está!

Fijémonos en la siguiente imagen, que ya están generar nuestros certificados y que se encuentran en la siguiente carpeta:

> /etc/letsencrypt/test/dominio.com

![let's encrypt manualmente](/assets/img/2017/letsencrypt-manualmente.jpg)

Perfecto, ahora ya tenemos generado nuestros certificados listos, pero todavía no los está utilizando ningún servidor web, así que vamos a ver cómo podemos utilizarlos con Apache.

## Configurando Let’s Encrypt manualmente en Apache

Repasemos, por una parte tenemos nuestros certificados ya creados en nuestro servidor y por otra tenemos los ficheros de configuración de Apache (los virtualhost, etc.) ¿Qué tenemos que hacer? ¡Pues juntarlos!

Si todavía no tenemos creado ningún virtualhost para nuestro dominio (con el protocolo https) podéis utilizar el que os he preparado.

Fijaros que a diferencia de un virtualhost normal, aquí he indicado tres certificados (incluyendo la ruta) y que el puerto es el 443.

<VirtualHost \*:443>

DocumentRoot «/var/www/html»

SSLEngine on

SSLCertificateFile    /etc/letsencrypt/live/dominio.com/cert.pem

SSLCertificateKeyFile /etc/letsencrypt/live/dominio.com/privkey.pem

SSLCertificateChainFile /etc/letsencrypt/live/dominio.com/chain.pem

ServerName dominio.com

</VirtualHost>

Una vez creado este virtualhost ¡Sólo nos quedará reiniciar el Apache!

Una vez reiniciado, accedemos a nuestra web mediante https y cómo podéis ver en la siguiente imagen, os funcionará sin ningún problema:

![let's encrypt funcionando](/assets/img/2017/letsencrypt-funcionando.jpg)

## **Tutorial para instalar y configurar Let’s Encrypt en Apache**

Puesto que muchos me lo habéis pedido, he realizado un vídeo-tutorial donde vemos paso a paso como configurar todo nuestro VPS para que funcione con los certificados de Let’s Encrypt, en este vídeo-tutorial veremos:

- La historia de Let’s Encrypt (importante para comprender bien estos certificados).
- Descargaremos y analizaremos el programa certbot-auto.
- Configuraremos el programa certbot-auto antes de hacer nada (instalar dependencias, email, etc.).
- Revisaremos la configuración inicial de Apache (veremos que por defecto tenemos el módulo SSL desactivado, etc.).
- Instalaremos el certificado en tres dominios, para que veáis cómo lo podéis hacer para más de un dominio.
- Comprobaremos que nos funciona el certificado en los tres dominios.
- Analizaremos los típicos errores, por ejemplo, cuando nos funciona el certificado bien, pero nos aparece el candado en naranja o rojo, además os mostraré cómo resolverlo y terminaremos ese vídeo con el certificado configurado correctamente y el candado en verde.
- Además, podréis seguir las clases, parando los vídeos y copiando los comandos.

**Comprar videotutorial Let’s Encrypt**
