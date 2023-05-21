Feature: Iniciar sesión aleatorio

@user1 @web
Scenario: Iniciar Sesión con campos aleatorios en línea
  Given I navigate to page "http://localhost:2368/ghost/#/signin"
  And I wait for 5 seconds
  When I enter email "$email_1"
  And I wait for 2 seconds
  And I enter password "$string_1"
  And I wait for 2 seconds
  And I click next
  And I wait for 7 seconds

@user2 @web
Scenario: Iniciar Sesión con email incorrecto
  Given I navigate to page "http://localhost:2368/ghost/#/signin"
  And I wait for 5 seconds
  When I enter email "$string_1"
  And I wait for 2 seconds
  And I enter password "$string_1"
  And I wait for 2 seconds
  And I click next
  And I wait for 7 seconds
