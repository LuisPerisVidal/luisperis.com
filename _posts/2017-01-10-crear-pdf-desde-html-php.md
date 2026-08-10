---
layout: post
title: "Crear PDF desde un HTML con PHP"
date: 2017-01-10 23:03:18 +0100
permalink: /crear-pdf-desde-html-php/
description: "Todos los programadores PHP nos encontramos en alguna ocasión con el mismo problema ¿Cómo puedo pasar de HTML a PDF con PHP? Pues bien, en este artículo analizaremos una de las muchas opciones que..."
categories: ["Programación"]
---

Todos los programadores PHP nos encontramos en alguna ocasión con el mismo problema ¿Cómo puedo pasar de HTML a PDF con PHP? Pues bien, en este artículo analizaremos una de las muchas opciones que tenemos.

## Crear PDF desde HTML con PHP

Antes de continuar tenemos que darnos cuenta de algo, realmente hay mil proyectos PHP para pasar HTML a PDF, no obstante ¡Todos tienen algún problema!

Algunos no soportan CSS, otros no soportan los DIVs, otros no soportan los acentos (pensado para los americanos), etc.

Así que en esta ocasión analizaremos mPDF, una solución simples pero potente.

## mPDF

Antes de continuar hay que indicar que hace dos años que los creadores abandonaron el desarrollo, no obstante, la comunidad sigue renovando el proyecto y actualizan el github mensualmente.

Así pues, lo primero que tendremos que hacer será descargar el código del proyecto PHP desde la web del [creador](http://www.mpdf1.com/mpdf/index.php), es código libre así que no tendréis problemas para descargarlo. No obstante, si queréis utilizar el repositorio con la última versión, podéis acceder desde este enlace ([github mPDF](https://github.com/mpdf/mpdf)).

### **¿Por qué me gusta el mPDF?**

Principalmente porque he probado la mayoría que existen en el mercado y este tiene factores que hace que sea simple y potente:

- Funciona perfectamente DIV y CSS.
- Fácil de utilizar.
- Soporta CSS y atributos tipo border-radius, box-shadow, etc.

### **¿Cómo genero el PDF?**

mPDF trae un fichero de configuración, para la mayoría de casos no será necesario modificarlo, no obstante, si realizáis algún proyecto especialmente grande o complejo, quizás si que necesitéis modificarlo.

Dicho esto, para que podáis ver lo sencillo que sería generar un PDF, os muestro el siguiente código PHP:

> include(«../MPDF/mpdf.php»);
> $mpdf=new mPDF();
>
> // La variable $html es vuestro código que queréis pasar a PDF
> $html = utf8\_encode($html);
>
> $mpdf->WriteHTML($html);
>
> // Genera el fichero y fuerza la descarga
> $mpdf->Output(‘nombre.pdf’,’D’); exit;

## Resumen

Como podemos observar, generar un PDF desde un HTML puede resultar muy sencillo una vez conocemos que herramienta utilizar para generarlo. En el caso de mPDF, aunque no es una herramienta extremadamente conocida, si que es muy útil. Si tienes cualquier duda o necesitas un programador PHP, puedes ponerte en contacto conmigo.
