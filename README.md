# Proyecto Pruebas automatizadas - Semana 7

# Pruebas e2e Kraken y Cypress con (i) pool de datos a-priori, (ii) pool de datos (pseudo) aleatorio dinámico y (iii) escenario aleatorio.

Pruebas E2E Kraken Cypress Grupo 28

## Descripción

Se realizan pruebas E2E sobre la aplicación Ghost con dos tipos de herramientas, Kraken y Cypress con (i) pool de datos a-priori, (ii) pool de datos (pseudo) aleatorio dinámico y (iii) escenario aleatorio.  Se generan 120 escenarios, se detallan las incidencias obtenidas, el resultado de las pruebas, código fuente con el que se ejecutaron las pruebas y  estrategias usadas en los escenarios de pruebas.

## Pruebas en kraken

## Escenarios ejecutados en Kraken con diferentes estrategias

| Escenario | Datos a-priori | Datos (pseudo) aleatorio dinámico | Datos aleatorios | 
| --- | --- | --- | --- |
| Iniciar sesión con email incorrecto | :white_check_mark:| | :white_check_mark:|
| Iniciar sesión con contraseña incorrecta | :white_check_mark:| | :white_check_mark:|
| Post con solo título | :white_check_mark:| | :white_check_mark:|
| Post con título de 250 caracteres | :white_check_mark:| | |
| Post con título de 252 caracteres | :white_check_mark:| | |
| Post con solo body | :white_check_mark:| | :white_check_mark:|
| Post con body y título | :white_check_mark:| | :white_check_mark:|
| Página con solo título | :white_check_mark:| | :white_check_mark:|
| Página con solo body | :white_check_mark:| | :white_check_mark:|
| Página con título y body | :white_check_mark:| | :white_check_mark:|
| Crear página con título con 252  caracteres | :white_check_mark:| | |
| Crear página con título con 251  caracteres | :white_check_mark:| | |
| Cambiar perfil nombre | :white_check_mark:| | :white_check_mark:|
| Cambiar perfil nombre y slug | :white_check_mark:| | :white_check_mark:|
| Cambiar perfil nombre, slug y correo | :white_check_mark:| :white_check_mark:| |
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

## Instrucciones de ejecución Kraken

Prerrequisitos:
 1. Ghost-CLI version: 1.24.0
 2. NodeJS version: v14.21.1
 3. Kraken: última versión

### Instrucción Datos Aleatorios
 
En la carpeta Pruebas e2e Kraken Aleatorios/features/Escenarios Datos Aleatorios, se encuentran seis archivos, cada uno con los escenarios descritos en la tabla anterior. Para ejecutar cada uno de los escenarios es necesario copiar uno de estos archivos y pegar el contendio en el archivo my_first.feature que se encuentra en la ruta Pruebas e2e Kraken Aleatorios/features. Por último ir por consola a la carpeta raíz del proyecto y ejecutar el comando npx kraken-node run.

### Instrucción Datos Pseudo Aleatorios y A-piori

## Estrategias usadas

### Estrategia Datos Aleatorios

Para la definición de los data pools se uso la librería @faker-js/faker, la cual genera cadenas de caractéres aleatorios y soporta los siguientes tipos.

* Name
* Number
* Email
* String
* String Date
* URL

Con esta librería que ofrece Kraken permite generar datos en el momento de la ejecución de la prueba, de esta manera en los diferentes escenarios se generan cadenas de tipo usuario, correo, descripciones, etc. En los archivos .feature donde ejecutamos el patron Given, When, Then, incluimos esas variables para genrar el contenido de esta manera.
```
@user1 @web
Scenario: Crear nuevo usuario con nombre y correo aleatorio
  Given I navigate to page "http://localhost:2368/ghost/#/signin"
  And I wait for 5 seconds
  And I enter name new "$name_1"
  And I wait for 2 seconds
  And I enter email new "$email_1"
  And I wait for 2 seconds
  Then I click save member
```
las variables $name_1 y $email_1 genenran datos aleatorios. 

### Estrategia Datos Pseudo Aleatorios

Para la definición de los data pools se uso la librerá faker para la generación de datos aleatorios.

Esta estrategia genera los datos en línea de forma aleatoria pero con sentido y de manera controlada, por lo tanto se uso el escenario cambiar en el perfil el nombre, slug y correo debido a que los campos de nombre y correo están relacionados, es decir el correo generado debe tener sentido con el nombre que se genera de manera aleatoria. Por ejemplo si el nombre aleatorio que se crea es Pepito Perez, se debe generar un correo tipo pepitoperez@gmail.com. 

En los archivos .feature donde ejecutamos el patron Given, When, Then, incluimos que cuando se ejecutará el paso de 'When I enter new correo seudo", en el archivo de step.js se ejecute el siguiente código.

```
When('I enter new correo seudo {kraken-string}', async function(text) {
    let element = await this.driver.$('#user-email');
    let email =faker.internet.email()
    const truEmail = text+email.split('@')[1]
    return await element.setValue(truEmail);
})
```
De esta manera controlamos que el correo final esté relacionado con el nombre y correo que se ejecutaron con datos aleatorios. 

### Estrategia Datos A-piori

Para la generación del data pool de datos a-priori se utilizó la librería @faker-js/faker para crear datos de forma aleatoria de forma previa a la ejecución de las pruebas. Con esta librería se crearon cadenas de caractéres de tipo email, lastName, fullName e igualmente se configuraron para limitar el número de caractéres generados con el objetivo de realizar pruebas de frontera en distintos campos de la aplicación de ghost. Una vez se generaban esos datos se crea un archivo y se ejecutan las pruebas con los datos generados. A continuación se da un ejemplo del tipo de datos a-priori que se creaban para ejecutar las pruebas. 
```
 "POSTTITLE": faker.person.fullName(),
    "POSTTITLE252": faker.string.fromCharacters('c', 252),
    "POSTTITLE250": faker.string.fromCharacters('c', 250),
    "BODYTITLE": faker.person.fullName()
```
## Pruebas en cypress

| Escenario | Datos a-priori | Datos (pseudo) aleatorio dinámico | Datos aleatorios | 
| --- | --- | --- | --- |
| Iniciar sesión, con email incorrecto | :white_check_mark:| | :white_check_mark:|
| Iniciar sesión, con email que contiene caracteres especiales | :white_check_mark:| | |
| Iniciar sesión, con email con correo mayor a 260 caracteres | :white_check_mark:| | |
| Iniciar sesión, con contraseña incorrecta | :white_check_mark:| | :white_check_mark:|
|crear pages, solo con titulo | :white_check_mark:| | :white_check_mark:|
|crear pages, solo con titulo que contiene caracteres especiales| :white_check_mark:| | |
|crear pages, solo con body sin titulo | :white_check_mark:| | :white_check_mark:|
|crear pages, solo con body que contenga caracteres especiales sin titulo | :white_check_mark:| | |
|crear pages, con titulo y cuerpo que contenga caracteres especiales | :white_check_mark:| | |
|crear pages, solo con titulo mayor a 300 caracteres | :white_check_mark:| |:white_check_mark: |
|crear pages, body y titulo | :white_check_mark:| | :white_check_mark:|
|Editar Pages, a titulo de 300 caracteres | :white_check_mark:| | :white_check_mark:|
|Editar perfil, error de nombre largo | :white_check_mark:| | :white_check_mark:|
|Editar perfil, error de email invalido | :white_check_mark:| | :white_check_mark:|
|Editar perfil, error de la url invalida | :white_check_mark:| | :white_check_mark:|
|Editar perfil, error de la url invalida por tamaño de 100 caracteres | :white_check_mark:| | :white_check_mark:|
|Editar perfil, error de la url diferente a facebook | :white_check_mark:| | :white_check_mark:|
|Editar perfil, error de la url diferente a twittwe | :white_check_mark:| | :white_check_mark:|
|Editar perfil, error de la bio larga | :white_check_mark:| | :white_check_mark:|
|Editar perfil, error de ingresando solo la contraseña | :white_check_mark:| | :white_check_mark:|
|Editar perfil, error de ingresando solo la nueva contraseña | :white_check_mark:| | :white_check_mark:|
|Editar perfil, error de ingresando solo la contraseña incorrecta| :white_check_mark:| | :white_check_mark:|
|Editar perfil, error de ingresando una contraseña distinta en la confirmacion| :white_check_mark:| | :white_check_mark:|
|Crear miembro, error por nombre de mas de 191 caracteres| :white_check_mark:| | :white_check_mark:|
|Crear miembro, exito al guardar miembro| :white_check_mark:| | :white_check_mark:|
|Crear miembro, error por correo superior a 260 caracteres| :white_check_mark:| | :white_check_mark:|
|Crear miembro, nota mayor a 500 caracteres| :white_check_mark:| | :white_check_mark:|
|Editar miembro, ingresando nombre con mas de 300 caracteres| :white_check_mark:| | :white_check_mark:|
|Editar miembro, ingresando correo invalido | :white_check_mark:| | :white_check_mark:|
|Editar miembro, ingresando nota larga| :white_check_mark:| | :white_check_mark:|
|Crear tag, solo con titulo| | | :white_check_mark:|
|Crear tag, solo con titulo mayor a 191 caracteres| | | :white_check_mark:|
|Crear tag, error al crear solo con  titulo, slug y descripcion | | | :white_check_mark:|
|Crear tag, con hexadecimal invalido | | | :white_check_mark:|
|Crear tag, con descriopcion de 500 caracrteres | | | :white_check_mark:|
|Crear tag, con metadata superior a 300 caracteres | | | :white_check_mark:|
|Crear tag, con metadata url no valida | | | :white_check_mark:|
|Editar tag, con titulo mayor a 255 caracteres | | | :white_check_mark:|
|crear post, solo con titulo | :white_check_mark:| | :white_check_mark:|
|crear post, solo con cuerpo | :white_check_mark:| | :white_check_mark:|
|crear post, solo con titulo mayor a 255 caracteres| :white_check_mark:| | :white_check_mark:|

## Instrucciones de ejecución Cypress

Prerrequisitos:

en primera parte,  instalar la version mas reciente 5.45.1, con el comando `ghost install --version 5.42.1 --local --force` y crear una cuenta con las estas credenciales e.tijaro@uniandes.edu.co y contraseña Contrasena_123.

Posteriormente clonar este repositorio, instalar las dependencias con `npm install`, Luego ejecutar el comando `cypress open`, ya en la interfaz, cargar la carpeta del proyecto cypress con puebas e2e. y ejecutar las pruebas que se encuentre en el a carpeta cypress\e2e\testGhost V5,  alli se encuentran 2 archivos, el de las pruebas aleatorias y apriori.

Nota* hay casos de pruebas que dan error, sin embaro en la seccion de Issues se describe el porque suceden errores en la prueba


### Estrategia Datos Aleatorios
Para la definición de los data pools se uso la librería @faker-js/faker, la cual genera cadenas de caractéres aleatorios y soporta los siguientes tipos.

* Name
* Number
* Email
* String
* String Date
* URL

Con esta librería se generan datos en el momento de la ejecución de la prueba, de esta manera en los diferentes escenarios se generan cadenas de tipo texton numero, url, entre otras que permite ingresar datos en los escenarios de usuario, correo, descripciones, etc.

### Estrategia Datos A-piori

Se utilizo la herramienta online Mockaroo que permite congifurar un data pool en formato json con las caracteristicas requeridas para probar el sistema, como un campo de caracteres especiales y los tamaños de los datos, ademas permite duplicar o llamar los datos de otras columnas para concatenarlas, ademas tiene una interfaz sencilla de manejar, y una generacion de datos por IA que agiliza el trabajo de tipado de datos. en su mayoria se usaron de tipo word, nombres, contraseñas y especial.

Esto se integro mediante un archivo Json que se guardo en la carpeta fixture, desde las pruebas cypress se toma el json, se lee, y leatoriamente se toma un registr, guardando en variables globales los datos y asi utilizar estos datos en cada prueba.  

## Reporte de Incidencias
