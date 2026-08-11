---
layout: post
title: "Wordpress a Github Pages (Jekyll)"
date: 2026-08-11 10:14:18 +0200
permalink: /wordpress-a-github-pages-jekyll/
description: "En este artículo veremos como migrar de Wordpress a Jekyll y con que ventajas nos encontaremos"
categories: ["Rendimiento y Aplicaciones"]
---

Hace ya 5 años que no escribo un artículo y hacía bastante tiempo que me apetecía volver a escribir, en esta ocasión artículos 'más sesudos', con más peso, más investigación...

En los últimos años he estado investigando mucho, muchísimo, he estado profundizando en muchos campos de AI (como conversor de llamadas openAI to Gemini) y me gustaría poderlo compartir, para que si alguien se encuentra en un futuro con el problema que ya resolví, pueda hacer uso de mi solución sin perder tiempo :-)

## Pero ¿Por qué pasar de Wordpress a Jekyll?

Simple: Se adapta a mis valores, tiene menor fricción al escribir y es mucho más seguro.

Mi primer artículo es de hace 9 años, durante estos 9 años he cambiado el alojamiento bastantes veces, servidores, VPS, hostings (piensasolutions, OVH, etc). No quiero perder el tiempo con migraciones, ni con actualizaciones de wordpress, ni con actualizaciones de plugins que han sido vulnerados... solamente quiero escribir y punto. Y esto es lo que me ofrece Jekyll/github.

### ¿Qué es Jekyll?
Jekyll es generador de webs estáticas con capacidad de blog, es decir metes todos los artículos que escribas  en formato .md en una carpeta llamada "posts", y cuando le das al 'build', automáticamente te crea los menús (con plantillas similares a mustache), los artículos, el paginado, los tags/categorías.

TODO YA PROCESADO: Sin base de datos, sin lenguajes de backend, sin necesidad de javascript en el frontend.

Esto tiene unas ventajas enormes:
- Al ser contenido estático lo puedes publicar gratis en mil sitios (ovh, cloudflare, github, etc)
- Al no tener DDBB, ni backend se complica mucho el hackearlo
- Cero mantenimiento: No hay plugins vulnerables que atender, ni framework que actualizar
- Escribir un nuevo artículo es tan fácil como escribir un fichero .md, meterle una cabecera ¡Y listo!

### ¿Y qué tiene que ver Github Pages?
Jekyll ha sido creado por Tom Preston-Werner, cofounder de Github, por lo tanto Github lo adoptó y si lo subes a un repositorio puedes publicarlo directamente en Github Pages (permite subir webs sin backend) mediante CICD.

Por lo que es muy sencillo:
1. Subes el repositorio
2. Configuras el .github/workflows/jekyll.yml para que con cada push se regenere Github Pages
3. Cambias las DNS del dominio para que apunte a las IPs de Github
4. ¡Listo! ¡Ya tienes tu web gratis!

Ojo, en el CI/CD puedes hacer lo que quieras, también puedes publicarlo en Cloudflare o donde quieras.

Si has observado bien te habrás dado cuenta de que ahora, cada vez que quiera escribir un artículo, solo tengo que hacer lo siguiente:
1. Crear un fichero .md
2. Escribir el artículo
3. Commit + git push

### ¿Y cómo hice la migración?

Seguro que hay guías mucho mejores que esta, de hecho, esta fue la parte que menos cariño le puse, yo lo hice de la siguiente forma:

1. Le pedí a claude que creara un .md con todas las URLs de mi blog basado en el sitemap.xml
2. Eliminé los artículos/pages que no me interesaban migrar
3. Le pedí que basado en esos artículos me hiciera la migración a Jekyll (solo necesita peticiones curl y bajar las imágenes) respetando las URLs
4. A partir de ahí, empecé con el diseño (minimalista)
5. Le pedí hacer una tabla de forma determinista para saber si había discrepancias entre las URLs anteriores y las nuevas.
6. ¡Ya está!

Eso sí, como buen programador, me intenté facilitar la vida y le creé un par de scripts:
- Docker para con un comando poder ver el resultado antes de subirlo
-  ./new-post.sh "nombre artículo" para que me cree el fichero con el slug (url)

### Cotillea cómo es mi web por dentro

Como buen amante del mundo open-source he dejado el repositorio abierto: [Mi github](https://github.com/LuisPerisVidal/luisperis.com).

Desde ahí:
- Podréis ver todos los ficheros de configuración de Jekyll
- Cómo se dividen las carpetas/ficheros
- Tenéis un readme con las instrucciones