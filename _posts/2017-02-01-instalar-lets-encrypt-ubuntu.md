---
layout: post
title: "Instalar Let’s Encrypt en Ubuntu"
date: 2017-02-01 14:12:59 +0100
permalink: /instalar-lets-encrypt-ubuntu/
description: "Si tenemos un VPS o un servidor, seguramente queramos añadir a nuestros dominios un certificado SSL gratuito como por ejemplo Let’s Encrypt, no obstante, si es la primera vez que lo hacemos puede..."
categories: ["Rendimiento y Aplicaciones"]
---

Si tenemos un VPS o un servidor, seguramente queramos añadir a nuestros dominios un certificado SSL gratuito como por ejemplo Let’s Encrypt, no obstante, si es la primera vez que lo hacemos puede resultar un poco complicado, así pues, en esta guía analizaremos cómo instalar Let’s Encrypt en Ubuntu.

## **Instalar y configurar Let’s Encrypt en un VPS**

Antes que nada, es importante aclarar que Let’s Encrypt únicamente funciona en VPS y servidores, es decir, que, si dispones de un hosting sin acceso root al sistema, no podrás instalarte un certificado gratuito Let’s Encrypt.

En el caso de que tengas un hosting, deberías de pedir a tu proveedor que te instale un certificado gratuito, aunque es posible que igualmente te cobre por dicha gestión.

Por otra parte, también es interesante indicar que cada vez más hostings están añadiendo de forma gratuita, certificados SSL a sus planes de alojamiento.

Dicho esto, y comprendido que esta guía nos sirve para instalar y configurar Let’s Encrypt en un VPS o servidor y no en un hosting, vamos a continuar.

## **Instalar y configurar Let’s Encrypt en Ubuntu**

Antes de instalar nuestro primer certificado Let’s Encrypt, tenemos que descargar un programa en nuestro Ubuntu (más bien un script).

No hay que preocuparse de la seguridad de nuestro servidor, ya que lo descargaremos directamente de una organización sin ánimo de lucro (Electronic Frontier Foundation) que además es cofundadora de Let’s Encrypt.

Dicho esto, lo primero que tendremos que hacer será movernos a la carpeta «usr/local/sbin» y desde ahí descargaremos el script con el siguiente comando.

> wget https://dl.eff.org/certbot-auto

Por último, le daremos permiso y haremos que podamos ejecutarlo sin ningún problema desde cualquier directorio con el siguiente comando:

> chmod a+x /usr/local/sbin/certbot-auto

Perfecto, hecho esto ¡Ya casi lo tenemos!

Ahora nos tocará configurarlo, para ello podemos ejecutar el comando:

> certbot-auto

Esto lo que hará (únicamente la primera vez) será lo siguiente:

- Instalar todas las dependencias
- Pedirnos un email (no hace falta registro)
- Pedirnos que aceptemos las normas de uso

Una vez hayamos hecho esto, podemos continuar y crear nuestro primer certificado Let’s Encrypt.

## **Crear un certificado Let’s Encrypt en Ubuntu**

Una vez tenemos todo listo, ya podremos ejecutar certbot-auto para generar nuestro primer certificado SSL.

Para hacer esto, sólo tenemos que ejecutar el siguiente comando:

> certbot-auto -d [tu\_dominio]

Lógicamente cambiaremos [tu\_dominio] por el dominio al que queremos crearle un certificado, por ejemplo:

> certbot-auto -d luisperis.com

¡Ya lo tienes generado!

No obstante, tenemos que tener en cuenta, que cada subdominio necesitará un certificado, por lo que el certificado generado para dominio.com no servirá para www.dominio.com

Una vez generado dicho certificado, podemos encontrar todos los ficheros listos para usarse en:

> /etc/letsencrypt/live/dominio.com/

## **Configurar Let’s Encrypt con Apache**

Tenemos que recordar que el protocolo HTTP y los certificados SSL no tienen nada que ver con Apache, que en definitiva sólo es uno de los muchos servidores webs que existen.

Por lo tanto, si estamos gestionando nuestras webs con Apache, deberemos de configurar Apache para cada certificado, esto se puede hacer de dos formas.

### **Añadir Let’s Encrypt al virtualhost**

Una vez creado el certificado, deberemos de crear un virtualhost especial, que recoja las peticiones que vengan por el protocolo https, esto se suele hacer mediante el puerto 443.

Una vez tengamos dicho virtualhost listo, deberemos indicarle los diferentes ficheros del certificado mediante estas tres variables.

- SSLCertificateFile
- SSLCertificateKeyFile
- SSLCertificateChainFile

Una vez hagamos esto, reiniciamos el Apache y ya nos debería de funcionar.

### **Crear certificado Let’s Encrypt para Apache con certbot**

Otra opción mucho más rápida es indicar al propio programa certbot-auto que realice la instalación en Apache con el siguiente comando:

> certbot-auto –apache -d dominio.com

Pero ojo, tenemos que tener muchísimo cuidado, ya que no está del todo bien programado y si instalamos más de un certificado (con y sin www) nos machacará el virtualhost anterior.

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
