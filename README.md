# Proyecto de Automatización de APIs - Reto NTTDATA

Este proyecto es parte de un reto técnico para la empresa NTTDATA, cuyo objetivo es demostrar habilidades de automatización de pruebas sobre servicios REST utilizando **Karate Framework**.

##  Tecnologías Utilizadas

- Java 21 -- FUNCIONA IGUAL CON 1.8
- Maven 3.9.7
- Karate Framework
- Formato de datos: JSON / CSV
- Swagger PetStore API (https://petstore.swagger.io/)

## Descripción del Proyecto

El proyecto automatiza pruebas sobre la API de Swagger PetStore y consta de 4 ejercicios principales:

1. Agregar una mascota
2. Consultar la mascota creada
3. Actualizar la mascota creada
4. Consultar mascotas por estado "sold"

Cada uno de estos ejercicios está estructurado en escenarios utilizando Gherkin, haciendo uso del poder de Karate para validaciones, parametrización de datos y manejo de peticiones HTTP.

En base a lo solicitado no se desarrolla runner, si se desea ejecutar por favor proceder
mvn test

PetStoreAdd-Get.feature -- Añadir una mascota a la tienda y Consultar la mascota ingresada previamente (Búsqueda por ID)
PetStorePut-Get.feature --Actualizar el nombre de la mascota y el estatus de la mascota a “sold” Consultar la mascota modificada por estatus (Búsqueda por estatus)


Conclusiones:

1.- Todas las pruebas se ejecutaron correctamente, validando el flujo(post, get, put).
2.- Karate Framework demostró ser eficiente para automatizar pruebas de API, gracias a su sintaxis simple basada en Gherkin, teniendo un mejor desempeño que automatizar apis en monitors de postman o pytest de python, por la facilidad del lenguaje Gherkin.
3.- El servicio PetStore respondió como se esperaba, confirmando que los endpoints funcionan correctamente, esto agregando los match correspondientes en base a los reponse y a la documentacion del Swagger.
