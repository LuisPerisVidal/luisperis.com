# luisperis.com

Sitio estático en Jekyll, desplegado en GitHub Pages. Migrado desde WordPress
conservando las URLs originales de los 103 artículos.

## Desarrollo local

Requiere Ruby 3.x:

    bundle install
    bundle exec jekyll serve

El sitio queda en <http://localhost:4000>.

Si no quieres instalar Ruby, con Docker:

    docker run --rm -v "$PWD":/site -w /site -p 4000:4000 ruby:3.3-slim \
      sh -c "bundle install && bundle exec jekyll serve --host 0.0.0.0"

## Publicar

Cada `push` a `main` dispara `.github/workflows/jekyll.yml`, que construye el
sitio y lo publica. En el repositorio hay que dejar **Settings → Pages →
Source: GitHub Actions**.

El fichero `CNAME` apunta el dominio a `luisperis.com`; en el DNS del dominio
deben existir los registros A de GitHub Pages (`185.199.108-111.153`) y un
CNAME de `www` hacia `<usuario>.github.io`.

## Escribir un artículo

Crea `_posts/AAAA-MM-DD-titulo.md`:

```markdown
---
layout: post
title: "Título del artículo"
date: 2026-08-09 10:00:00 +0100
permalink: /titulo-del-articulo/
description: "Resumen breve para buscadores y redes."
categories: ["Programación"]
tags: ["php", "rendimiento"]
---

El texto en Markdown.
```

`permalink` es opcional en artículos nuevos: sin él se usa `/:slug/`, que
produce el mismo resultado. Los artículos migrados lo llevan explícito para
garantizar que la URL no cambia.

Si estrenas una categoría, añade también su página en `categoria/`:

```markdown
---
layout: category
title: "Nombre de la categoría"
category: "Nombre de la categoría"
permalink: /categoria/nombre-de-la-categoria/
---
```

## Estructura

    _config.yml           configuración del sitio
    _layouts/             default, post, page, category
    _includes/            head, header, footer, post-list, fecha
    _posts/               los 103 artículos migrados
    categoria/            una página índice por categoría
    assets/css/main.css   hoja de estilo única
    assets/fonts/         Crimson Pro y DM Sans (variables, 184 KB)
    assets/img/           imágenes de los artículos, por año

## Diseño

Minimalismo editorial: una sola hoja de estilo, columna de 38 rem, mucho
espacio en blanco y sin JavaScript.

- **Papel cálido**, no blanco puro: fondo `#faf9f7`, grises cálidos
  (`#2c2c2c`, `#3a3a3a`, `#666`). Fondo claro siempre; no hay tema oscuro.
- **Un solo color**: el beige `#c8b8a8`, y solo en los subrayados. Los
  enlaces son tinta (`#1a1a1a`) y el subrayado se oscurece al pasar el ratón.
  Nada de azul de enlace.
- **Dos familias**: Crimson Pro (serif) en los titulares, DM Sans en el
  cuerpo a 17px/1.7. Ambas son fuentes variables y se sirven desde
  `/assets/fonts`, así que no hay peticiones a terceros; los subconjuntos
  latinos se precargan desde el `<head>`.
