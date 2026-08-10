---
layout: post
title: "Framework MVC para PHP"
date: 2017-03-29 12:58:57 +0100
permalink: /framework-mvc-php/
description: "Muchas veces, empezamos a programar en PHP un proyecto sin pensar en lo grande que puede llegar a ser y si necesitamos programarlo de una forma escalable y/o modular, para que por ejemplo, se..."
categories: ["Programación"]
---

Muchas veces, empezamos a programar en PHP un proyecto sin pensar en lo grande que puede llegar a ser y si necesitamos programarlo de una forma escalable y/o modular, para que por ejemplo, se incorporen nuevos trabajadores y podamos trabajar todos juntos en el mismo proyecto. Justamente por ello, para «hacer las cosas bien», existen Frameworks MVC como puede ser CodeIgniter.

## **Framework MVC**

Antes de continuar con CodeIgniter, vamos a ver que es un Framework MVC.

Un framework (indiferentemente del lenguaje) podríamos tomarlo como una capa de abstracción, que nos permite realizar aplicaciones más potentes de una manera más rápida utilizando las funciones de dicho Framework, sin tener que saber cómo se han programado.

Perfecto, más o menos, ya sabemos que es un «Framework», es una capa de abstracción que nos permite programar más rápido utilizando sus funciones y objetos (definición muy simple).

Pero ¿Qué es un Framework MVC? Pues bien, aquí entra lo bueno, el MVC, corresponde a «Modelo, Vista y Controlador», es decir, es una forma estandarizada de dividir la información (muchas veces, por carpetas) de nuestro proyecto.

Así pues, vamos a ver que es cada una de estas palabras.

## **Framework MVC: Modelo**

El modelo es la parte del código que se encarga de la gestión de los datos, de hecho, en muchos frameworks PHP, existe una carpeta llamada «Model» (modelo en inglés).

¿Y qué quiere decir que se encarga de los datos? Pues, que en los modelos únicamente encontraremos código PHP que haga referencia, por ejemplo, a una base de datos, o a una conexión mediante JSON, etc.

Gracias a que tenemos separado la parte del Modelo del núcleo de nuestro programa, si en el futuro queremos cambiar de una base de datos MySQL a Oracle, sólo tendremos que cambiar el objeto o las funciones que se encuentran en el modelo, no afectando a nuestro programa.

## **Framework MVC: Vista**

La carpeta vista (dependiendo el framework está por carpetas), se encarga de todo lo que tenga que ver con el HTML, es decir, es la estructura de la web.

Pero ojo ¡No tendremos que programar nada! Es decir, olvidaros del PHP, aunque si que es cierto que podemos ejecutar PHP debería de ser lo mínimo.

Pero… entonces ¿Cómo sabe cuando mostrar un dato u otro? ¡Eso lo gestionará el controlador!

La idea es muy simple, si tenemos en una carpetita «la vista», separada del código PHP, cambiarle el diseño a una web será fácil y rápido.

## **Framework MVC: Controlador**

¡Y llegamos a lo realmente importante!

El controlador es el núcleo del programa, es donde realmente estará toda la programación, donde le programaremos la lógica para que funcione bien.

Además, el controlador podrá cargar cualquier modelo (sí, puede haber más de uno) y cualquier vista.

Es decir, es lo que lo reúne y controla todo.

## **Las ventajas de utilizar un Framework MVC**

Un Framework MVC tiene muchísimas ventajas, no obstante, existen tres principales:

### Código separado y ordenado

Gracias al Framework MVC tendrás todo el código separado y ordenado, por lo que si quieres modificar cualquier cosa, sólo tendrás que ir a la carpeta correspondiente y modificarlo.

Esto es especialmente potente cuando por ejemplo quieres cambiar todo el diseño de una web, no tienes que ir fichero por fichero modificando todo. Sólo vas a la carpeta «vista» y ahí modificas tranquilamente el HTML.

### Proyecto escalable

Gracias a que tendremos el código muy bien estructurado y además podremos migrar o modificar algo de una forma rápida. Será muy beneficioso cuando necesitemos realizar un proyecto escalable.

### Trabajo en equipo

Imagínate que estás desarrollando un proyecto sin Framework MVC y tienes a tres trabajadores que tienen que ayudarte a programar dicho proyecto.

Sin un framework sería horrible ya que sería mucho más complicado separar el trabajo, además, luego alguien tendría que unirlo.

Mientras que con un framework, puedes separarlo todo en módulos que encajen correctamente.

## Resumen ¿Vale la pena usar un Framework?

Realmente sí, incluso para proyectos pequeños hay frameworks extremadamente rápidos y que no ocupan más de 2MB. No sólo es una cuestión de que el proyecto pueda crecer, sino que además te permitirá programar mucho más rápido.
