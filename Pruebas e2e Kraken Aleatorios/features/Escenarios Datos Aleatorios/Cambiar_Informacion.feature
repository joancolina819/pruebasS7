Feature: Cambiar informacion personal aleatorio

@user1 @web
Scenario: Actualizar el nombre del usuario
  Given I navigate to page "http://localhost:2368/ghost/#/signin"
  And I wait for 5 seconds
  When I enter email "<USERNAME1>"
  And I wait for 2 seconds
  And I enter password "<PASSWORD1>"
  And I wait for 2 seconds
  And I click next
  And I wait for 5 seconds
  And I click iconoPersonal
  And I wait for 5 seconds
  And I click your profile
  And I wait for 5 seconds
  And I enter name actualizado "$name_1"
  And I wait for 2 seconds
  Then I click save
  And I wait for 2 seconds


@user2 @web
Scenario: Actualizar el nombre y slug del usuario
  Given I navigate to page "http://localhost:2368/ghost/#/signin"
  And I wait for 5 seconds
  When I enter email "<USERNAME1>"
  And I wait for 2 seconds
  And I enter password "<PASSWORD1>"
  And I wait for 2 seconds
  And I click next
  And I wait for 5 seconds
  And I click iconoPersonal
  And I wait for 5 seconds
  And I click your profile
  And I wait for 5 seconds
  And I enter name actualizado "$name_1"
  And I wait for 2 seconds
  And I enter new correo "<USERNAME1UPDATE>"
  And I wait for 2 seconds
  And I enter new slug "$string_1"
  And I wait for 2 seconds
  Then I click save
  And I wait for 2 seconds


@user3 @web
Scenario: Actualizar el slug del usuario
  Given I navigate to page "http://localhost:2368/ghost/#/signin"
  And I wait for 5 seconds
  When I enter email "<USERNAME1>"
  And I wait for 2 seconds
  And I enter password "<PASSWORD1>"
  And I wait for 2 seconds
  And I click next
  And I wait for 5 seconds
  And I click iconoPersonal
  And I wait for 5 seconds
  And I click your profile
  And I wait for 5 seconds
  And I enter new slug "$string_1"
  And I wait for 2 seconds
  Then I click save
  And I wait for 2 seconds
  
@user4 @web
Scenario: Actualizar el nombre del usuario y locacion
  Given I navigate to page "http://localhost:2368/ghost/#/signin"
  And I wait for 5 seconds
  When I enter email "<USERNAME1>"
  And I wait for 2 seconds
  And I enter password "<PASSWORD1>"
  And I wait for 2 seconds
  And I click next
  And I wait for 5 seconds
  And I click iconoPersonal
  And I wait for 5 seconds
  And I click your profile
  And I wait for 5 seconds
  And I enter name actualizado "$name_1"
  And I wait for 2 seconds
  And I enter location "$name_1"
  And I wait for 2 seconds
  Then I click save
  And I wait for 2 seconds

@user5 @web
Scenario: Actualizar el nombre del usuario y website
  Given I navigate to page "http://localhost:2368/ghost/#/signin"
  And I wait for 5 seconds
  When I enter email "<USERNAME1>"
  And I wait for 2 seconds
  And I enter password "<PASSWORD1>"
  And I wait for 2 seconds
  And I click next
  And I wait for 5 seconds
  And I click iconoPersonal
  And I wait for 5 seconds
  And I click your profile
  And I wait for 5 seconds
  And I enter name actualizado "$name_1"
  And I wait for 2 seconds
  And I enter url profile "$url_1"
  And I wait for 2 seconds
  Then I click save
  And I wait for 2 seconds

@user6 @web
Scenario: Actualizar el nombre del usuario y facebook
  Given I navigate to page "http://localhost:2368/ghost/#/signin"
  And I wait for 5 seconds
  When I enter email "<USERNAME1>"
  And I wait for 2 seconds
  And I enter password "<PASSWORD1>"
  And I wait for 2 seconds
  And I click next
  And I wait for 5 seconds
  And I click iconoPersonal
  And I wait for 5 seconds
  And I click your profile
  And I wait for 5 seconds
  And I enter name actualizado "$name_1"
  And I wait for 2 seconds
  And I enter facebook profile "$url_1"
  And I wait for 2 seconds
  Then I click save
  And I wait for 2 seconds

@user7 @web
Scenario: Actualizar el nombre del usuario y twitter
  Given I navigate to page "http://localhost:2368/ghost/#/signin"
  And I wait for 5 seconds
  When I enter email "<USERNAME1>"
  And I wait for 2 seconds
  And I enter password "<PASSWORD1>"
  And I wait for 2 seconds
  And I click next
  And I wait for 5 seconds
  And I click iconoPersonal
  And I wait for 5 seconds
  And I click your profile
  And I wait for 5 seconds
  And I enter name actualizado "$name_1"
  And I wait for 2 seconds
  And I enter twitter profile "$url_1"
  And I wait for 2 seconds
  Then I click save
  And I wait for 2 seconds

@user8 @web
Scenario: Actualizar el nombre del usuario y bio
  Given I navigate to page "http://localhost:2368/ghost/#/signin"
  And I wait for 5 seconds
  When I enter email "<USERNAME1>"
  And I wait for 2 seconds
  And I enter password "<PASSWORD1>"
  And I wait for 2 seconds
  And I click next
  And I wait for 5 seconds
  And I click iconoPersonal
  And I wait for 5 seconds
  And I click your profile
  And I wait for 5 seconds
  And I enter name actualizado "$name_1"
  And I wait for 2 seconds
  And I enter user bio "$string_1"
  And I wait for 2 seconds
  Then I click save
  And I wait for 2 seconds

  @user9 @web
Scenario: Poner una url erronea en el website del usuario
  Given I navigate to page "http://localhost:2368/ghost/#/signin"
  And I wait for 5 seconds
  When I enter email "<USERNAME1>"
  And I wait for 2 seconds
  And I enter password "<PASSWORD1>"
  And I wait for 2 seconds
  And I click next
  And I wait for 5 seconds
  And I click iconoPersonal
  And I wait for 5 seconds
  And I click your profile
  And I wait for 5 seconds
  And I enter name actualizado "$name_1"
  And I wait for 2 seconds
  And I enter url profile "$string_1"
  And I wait for 2 seconds
  Then I click save
  And I wait for 2 seconds

@user10 @web
Scenario: Poner una url erronea en el perfil de facebook del usuario
  Given I navigate to page "http://localhost:2368/ghost/#/signin"
  And I wait for 5 seconds
  When I enter email "<USERNAME1>"
  And I wait for 2 seconds
  And I enter password "<PASSWORD1>"
  And I wait for 2 seconds
  And I click next
  And I wait for 5 seconds
  And I click iconoPersonal
  And I wait for 5 seconds
  And I click your profile
  And I wait for 5 seconds
  And I enter name actualizado "$name_1"
  And I wait for 2 seconds
  And I enter facebook profile "$string_1"
  And I wait for 2 seconds
  Then I click save
  And I wait for 2 seconds

@user11 @web
Scenario: Poner una url erronea en el perfil de twitter del usuario
  Given I navigate to page "http://localhost:2368/ghost/#/signin"
  And I wait for 5 seconds
  When I enter email "<USERNAME1>"
  And I wait for 2 seconds
  And I enter password "<PASSWORD1>"
  And I wait for 2 seconds
  And I click next
  And I wait for 5 seconds
  And I click iconoPersonal
  And I wait for 5 seconds
  And I click your profile
  And I wait for 5 seconds
  And I enter name actualizado "$name_1"
  And I wait for 2 seconds
  And I enter twitter profile "$string_1"
  And I wait for 2 seconds
  Then I click save
  And I wait for 2 seconds

@user12 @web
Scenario: Actualizar perfil completo con datos aleatorios
  Given I navigate to page "http://localhost:2368/ghost/#/signin"
  And I wait for 5 seconds
  When I enter email "<USERNAME1>"
  And I wait for 2 seconds
  And I enter password "<PASSWORD1>"
  And I wait for 2 seconds
  And I click next
  And I wait for 5 seconds
  And I click iconoPersonal
  And I wait for 5 seconds
  And I click your profile
  And I wait for 5 seconds
  And I enter name actualizado "$name_1"
  And I wait for 2 seconds
  And I enter new slug "$string_1"
  And I wait for 2 seconds
  And I enter location "$name_1"
  And I wait for 2 seconds
  And I enter url profile "$url_1"
  And I wait for 2 seconds
  And I enter facebook profile "$url_1"
  And I wait for 2 seconds
  And I enter twitter profile "$url_1"
  And I wait for 2 seconds
  And I enter user bio "$string_1"
  And I wait for 2 seconds
  Then I click save
  And I wait for 2 seconds

@user13 @web
Scenario: Actualizar el perfil con un correo en formato incorrecto
  Given I navigate to page "http://localhost:2368/ghost/#/signin"
  And I wait for 5 seconds
  When I enter email "<USERNAME1>"
  And I wait for 2 seconds
  And I enter password "<PASSWORD1>"
  And I wait for 2 seconds
  And I click next
  And I wait for 5 seconds
  And I click iconoPersonal
  And I wait for 5 seconds
  And I click your profile
  And I wait for 5 seconds
  And I enter name actualizado "$name_1"
  And I wait for 2 seconds
  And I enter new correo "$string_1"
  And I wait for 2 seconds
  Then I click save
  And I wait for 2 seconds