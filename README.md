# Proyecto Pruebas automatizadas - Semana 7

# Pruebas e2e Kraken y Cypress con (i) pool de datos a-priori, (ii) pool de datos (pseudo) aleatorio dinámico y (iii) escenario aleatorio.

Pruebas E2E Kraken Cypress Grupo 28

## Descripción

Se realizan pruebas E2E sobre la aplicación Ghost con dos tipos de herramientas, Kraken y Cypress con (i) pool de datos a-priori, (ii) pool de datos (pseudo) aleatorio dinámico y (iii) escenario aleatorio.  Se generan 120 escenarios, se detallan las incidencias obtenidas, el resultado de las pruebas, código fuente con el que se ejecutaron las pruebas y  estrategias usadas en los escenarios de pruebas.

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

## Reporte de Incidencias



