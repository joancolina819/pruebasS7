# pruebasS7

# Pruebas e2e Kraken y Cypress con (i) pool de datos a-priori, (ii) pool de datos (pseudo) aleatorio dinámico y (iii) escenario aleatorio.

Pruebas E2E Kraken Cypress Grupo 28

## Descripción

Se realizan pruebas E2E sobre la aplicación Ghost con dos tipos de herramientas, Kraken y Cypress con (i) pool de datos a-priori, (ii) pool de datos (pseudo) aleatorio dinámico y (iii) escenario aleatorio.  Se generan 120 escenarios, se detallan las incidencias obtenidas, el resultado de las pruebas, código fuente con el que se ejecutaron las pruebas y  estrategias usadas en los escenarios de pruebas.

## Escenarios ejecutados en Kraken

| Escenario | Datos a-priori | Datos (pseudo) aleatorio dinámico | Datos aleatorios | 
| --- | --- | --- | --- |
| Iniciar Sesión con email incorrecto | &#9745;| | &#9745;|
| Iniciar sesión con contraseña incorrecta | &#9745;| | &#9745;|
| Post con solo título | &#9745;| | &#9745;|
| Post con título de 250 caracteres | &#9745;| | |
| Post con título de 252 caracteres | &#9745;| | |
| Post con solo body | &#9745;| | &#9745;|
| Post con body y título | &#9745;| | &#9745;|
| Pagina con solo titulo | &#9745;| | &#9745;|
| Pagina con solo body | &#9745;| | &#9745;|
| Página con título y body | &#9745;| | &#9745;|
| Crear página con título con 252  caracteres | &#9745;| | |
| Crear página con título con 251  caracteres | &#9745;| | |
| Cambiar perfil nombre | &#9745;| | &#9745;|
| Cambiar perfil nombre y slug | &#9745;| | &#9745;|
| Cambiar perfil nombre, slug y correo | &#9745;| | &#9745;|
| Poner una url diferente en el website del perfil en el input de website | | | &#9745;|
| Poner una url diferente en el perfil en el input de facebook | | | &#9745;|
| Poner una url diferente en el perfil en el input de twitter | | | &#9745;|
| Cambiar slug en nombre de perfil | &#9745;| | &#9745;|
| Actualizar el nombre y location | | | &#9745;|
| Actualizar nombre y website | | | &#9745;|
| Actualizar el nombre y facebook | | | &#9745;|
| Actualizar el nombre y twitter | | | &#9745;|
| Actualizar el nombre y bio | | | &#9745;|
| Actualizar el perfil completo | | | &#9745;|
| Crear correo en el perfil con formato de mail incorrecto | | | &#9745;|
| Slug con 192 caracteres | &#9745;| | |
| Slug con 191 caracteres | &#9745;| | |
| Crear Tag solo título | &#9745;| | &#9745;|
| Crear Tag con nombre incorrecto | &#9745;| | |
| Crear Tag título y descripción | &#9745;| | &#9745;|
| Crear Tag con color incorrecto | &#9745;| | &#9745;|
| Crear Tag con título, descripción y toda la información de Meta | &#9745;| | &#9745;|
| Crear Tag con url meta en formato incorrecto | | | &#9745;|
| Crear Tag con 501 caracteres | &#9745;| | |
| Crear Tag con 499 caracteres | &#9745;| | |
| Crear tag título, color y descripción | &#9745;| | &#9745;|
| Crear tag con título y meta title | | | &#9745;|
| Crear tag con 190 caracteres | &#9745;| | |
| Crear tag con 191 caracteres | &#9745;| | |
| Crear tag con título, meta title y descripción meta | | | &#9745;|
| Crear nuevo miembro con usuario y correo | | | &#9745;|



