# pruebasS7

# Pruebas e2e Kraken y Cypress con (i) pool de datos a-priori, (ii) pool de datos (pseudo) aleatorio dinámico y (iii) escenario aleatorio.

Pruebas E2E Kraken Cypress Grupo 28

## Descripción

Se realizan pruebas E2E sobre la aplicación Ghost con dos tipos de herramientas, Kraken y Cypress con (i) pool de datos a-priori, (ii) pool de datos (pseudo) aleatorio dinámico y (iii) escenario aleatorio.  Se generan 120 escenarios, se detallan las incidencias obtenidas, el resultado de las pruebas, código fuente con el que se ejecutaron las pruebas y  estrategias usadas en los escenarios de pruebas.

## Escenarios ejecutados en Kraken

| Escenario | Datos a-priori | Datos (pseudo) aleatorio dinámico | Datos aleatorios | 
| --- | --- | --- | --- |
| Iniciar Sesión con email incorrecto | :white_check_mark:| | :white_check_mark:|
| Iniciar sesión con contraseña incorrecta | :white_check_mark:| | :white_check_mark:|
| Post con solo título | :white_check_mark:| | :white_check_mark:|
| Post con título de 250 caracteres | :white_check_mark:| | |
| Post con título de 252 caracteres | :white_check_mark:| | |
| Post con solo body | :white_check_mark:| | :white_check_mark:|
| Post con body y título | :white_check_mark:| | :white_check_mark:|
| Pagina con solo titulo | :white_check_mark:| | :white_check_mark:|
| Pagina con solo body | :white_check_mark:| | :white_check_mark:|
| Página con título y body | :white_check_mark:| | :white_check_mark:|
| Crear página con título con 252  caracteres | :white_check_mark:| | |
| Crear página con título con 251  caracteres | :white_check_mark:| | |
| Cambiar perfil nombre | :white_check_mark:| | :white_check_mark:|
| Cambiar perfil nombre y slug | :white_check_mark:| | :white_check_mark:|
| Cambiar perfil nombre, slug y correo | :white_check_mark:| :white_check_mark:| :white_check_mark:|
| Poner una url diferente en el website del perfil en el input de website | | | :white_check_mark:|
| Poner una url diferente en el perfil en el input de facebook | | | :white_check_mark:|
| Poner una url diferente en el perfil en el input de twitter | | | :white_check_mark:|
| Cambiar slug en nombre de perfil | :white_check_mark:| | :white_check_mark:|
| Actualizar el nombre y location | | | :white_check_mark:|
| Actualizar nombre y website | | | :white_check_mark:|
| Actualizar el nombre y facebook | | | :white_check_mark:|
| Actualizar el nombre y twitter | | | :white_check_mark:|
| Actualizar el nombre y bio | | | :white_check_mark:|
| Actualizar el perfil completo | | | :white_check_mark:|
| Crear correo en el perfil con formato de mail incorrecto | | | :white_check_mark:|
| Slug con 192 caracteres | :white_check_mark:| | |
| Slug con 191 caracteres | :white_check_mark:| | |
| Crear Tag solo título | :white_check_mark:| | :white_check_mark:|
| Crear Tag con nombre incorrecto | :white_check_mark:| | |
| Crear Tag título y descripción | :white_check_mark:| | :white_check_mark:|
| Crear Tag con color incorrecto | :white_check_mark:| | :white_check_mark:|
| Crear Tag con título, descripción y toda la información de Meta | :white_check_mark:| | :white_check_mark:|
| Crear Tag con url meta en formato incorrecto | | | :white_check_mark:|
| Crear Tag con 501 caracteres | :white_check_mark:| | |
| Crear Tag con 499 caracteres | :white_check_mark:| | |
| Crear tag título, color y descripción | :white_check_mark:| | :white_check_mark:|
| Crear tag con título y meta title | | | :white_check_mark:|
| Crear tag con 190 caracteres | :white_check_mark:| | |
| Crear tag con 191 caracteres | :white_check_mark:| | |
| Crear tag con título, meta title y descripción meta | | | :white_check_mark:|
| Crear nuevo miembro con usuario y correo | | | :white_check_mark:|


