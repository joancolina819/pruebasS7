Feature: Crear nuevo usuario aleatorio

@user1 @web
Scenario: Crear nuevo usuario con nombre y correo aleatorio
  Given I navigate to page "http://localhost:2368/ghost/#/signin"
  And I wait for 5 seconds
  When I enter email "<USERNAME1>"
  And I wait for 2 seconds
  And I enter password "<PASSWORD1>"
  And I wait for 2 seconds
  And I click next
  And I wait for 5 seconds
  And I navigate to page "http://localhost:2368/ghost/#/members"
  And I click new member
  And I wait for 5 seconds
  And I enter name new "$name_1"
  And I wait for 2 seconds
  And I enter email new "$email_1"
  And I wait for 2 seconds
  Then I click save member
  And I wait for 2 seconds