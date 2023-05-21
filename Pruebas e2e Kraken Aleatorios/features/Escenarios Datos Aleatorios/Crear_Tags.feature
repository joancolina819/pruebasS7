Feature: Crear tags aleatorios

@user1 @web
Scenario: Crear tags solo con titulo aleatorio 
  Given I navigate to page "http://localhost:2368/ghost/#/signin"
  And I wait for 5 seconds
  When I enter email "<USERNAME1>"
  And I wait for 2 seconds
  And I enter password "<PASSWORD1>"
  And I wait for 2 seconds
  And I click next
  And I wait for 5 seconds
  Given I navigate to page "http://localhost:2368/ghost/#/tags"
  And I wait for 5 seconds
  Given I navigate to page "http://localhost:2368/ghost/#/tags/new"
  And I wait for 5 seconds
  When I enter tag name "$name_1"
  And I wait for 2 seconds
  Then I click save tag
  And I wait for 3 seconds

  @user2 @web
  Scenario: Crear tags solo con titulo y descripcion aleatorias
    Given I navigate to page "http://localhost:2368/ghost/#/signin"
    And I wait for 5 seconds
    When I enter email "<USERNAME1>"
    And I wait for 2 seconds
    And I enter password "<PASSWORD1>"
    And I wait for 2 seconds
    And I click next
    And I wait for 5 seconds
    Given I navigate to page "http://localhost:2368/ghost/#/tags"
    And I wait for 5 seconds
    Given I navigate to page "http://localhost:2368/ghost/#/tags/new"
    And I wait for 5 seconds
    When I enter tag name "$name_1"
    And I wait for 2 seconds
    When I enter tag description "$string_1"
    And I wait for 2 seconds
    Then I click save tag
    And I wait for 3 seconds

@user3 @web
Scenario: Crear tags con titulo, color y descripcion aleatorias
  Given I navigate to page "http://localhost:2368/ghost/#/signin"
  And I wait for 5 seconds
  When I enter email "<USERNAME1>"
  And I wait for 2 seconds
  And I enter password "<PASSWORD1>"
  And I wait for 2 seconds
  And I click next
  And I wait for 5 seconds
  Given I navigate to page "http://localhost:2368/ghost/#/tags"
  And I wait for 5 seconds
  Given I navigate to page "http://localhost:2368/ghost/#/tags/new"
  And I wait for 5 seconds
  When I enter tag name "$name_1"
  And I wait for 2 seconds
  When I enter tag color "$string_1"
  And I wait for 2 seconds
  When I enter tag description "$string_1"
  And I wait for 2 seconds
  Then I click save tag
  And I wait for 3 seconds

@user4 @web
Scenario: Crear tags solo con titulo, meta title y descripcion meta aleatorias
  Given I navigate to page "http://localhost:2368/ghost/#/signin"
  And I wait for 5 seconds
  When I enter email "<USERNAME1>"
  And I wait for 2 seconds
  And I enter password "<PASSWORD1>"
  And I wait for 2 seconds
  And I click next
  And I wait for 5 seconds
  Given I navigate to page "http://localhost:2368/ghost/#/tags"
  And I wait for 5 seconds
  Given I navigate to page "http://localhost:2368/ghost/#/tags/new"
  And I wait for 5 seconds
  When I enter tag name "$name_1"
  And I wait for 2 seconds
  And I click expand
  And I wait for 3 seconds
  When I enter meta title "$name_1"
  And I wait for 2 seconds
  When I enter meta description "$string_1"
  And I wait for 2 seconds
  Then I click save tag
  And I wait for 3 seconds

@user5 @web
Scenario: Crear tags con color incorrecto
  Given I navigate to page "http://localhost:2368/ghost/#/signin"
  And I wait for 5 seconds
  When I enter email "<USERNAME1>"
  And I wait for 2 seconds
  And I enter password "<PASSWORD1>"
  And I wait for 2 seconds
  And I click next
  And I wait for 5 seconds
  Given I navigate to page "http://localhost:2368/ghost/#/tags"
  And I wait for 5 seconds
  Given I navigate to page "http://localhost:2368/ghost/#/tags/new"
  And I wait for 5 seconds
  When I enter tag color "$string_1"
  And I wait for 2 seconds
  Then I click save tag
  And I wait for 3 seconds

@user6 @web
Scenario: Crear tags con titulo, color, meta title y descripcion aleatorias
  Given I navigate to page "http://localhost:2368/ghost/#/signin"
  And I wait for 5 seconds
  When I enter email "<USERNAME1>"
  And I wait for 2 seconds
  And I enter password "<PASSWORD1>"
  And I wait for 2 seconds
  And I click next
  And I wait for 5 seconds
  Given I navigate to page "http://localhost:2368/ghost/#/tags"
  And I wait for 5 seconds
  Given I navigate to page "http://localhost:2368/ghost/#/tags/new"
  And I wait for 5 seconds
  When I enter tag name "$name_1"
  And I wait for 2 seconds
  When I enter tag color "$string_1"
  And I wait for 2 seconds
  When I enter tag description "$string_1"
  And I wait for 2 seconds
  And I click expand
  And I wait for 3 seconds
  When I enter meta title "$name_1"
  And I wait for 2 seconds
  Then I click save tag
  And I wait for 3 seconds

@user7 @web
Scenario: Crear tags con titulo, descripcion y toda la información de Meta data
  Given I navigate to page "http://localhost:2368/ghost/#/signin"
  And I wait for 5 seconds
  When I enter email "<USERNAME1>"
  And I wait for 2 seconds
  And I enter password "<PASSWORD1>"
  And I wait for 2 seconds
  And I click next
  And I wait for 5 seconds
  Given I navigate to page "http://localhost:2368/ghost/#/tags"
  And I wait for 5 seconds
  Given I navigate to page "http://localhost:2368/ghost/#/tags/new"
  And I wait for 5 seconds
  When I enter tag name "$name_1"
  And I wait for 2 seconds
  When I enter tag description "$string_1"
  And I wait for 2 seconds
  And I click expand
  And I wait for 3 seconds
  When I enter meta title "$name_1"
  And I wait for 2 seconds
  When I enter meta description "$string_1"
  And I wait for 2 seconds
  When I enter canonical url "$url_1"
  And I wait for 2 seconds
  Then I click save tag
  And I wait for 3 seconds

@user8 @web
Scenario: Crear tags con titulo y con url en formato incorrecto
  Given I navigate to page "http://localhost:2368/ghost/#/signin"
  And I wait for 5 seconds
  When I enter email "<USERNAME1>"
  And I wait for 2 seconds
  And I enter password "<PASSWORD1>"
  And I wait for 2 seconds
  And I click next
  And I wait for 5 seconds
  Given I navigate to page "http://localhost:2368/ghost/#/tags"
  And I wait for 5 seconds
  Given I navigate to page "http://localhost:2368/ghost/#/tags/new"
  And I wait for 5 seconds
  When I enter tag name "$name_1"
  And I wait for 2 seconds
  And I click expand
  And I wait for 3 seconds
  When I enter meta title "$name_1"
  And I wait for 2 seconds
  When I enter canonical url "$string_1"
  And I wait for 2 seconds
  Then I click save tag
  And I wait for 3 seconds