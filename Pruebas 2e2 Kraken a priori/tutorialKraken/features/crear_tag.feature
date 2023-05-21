Feature: Crear tags

@user1 @web
Scenario: Crear tags con campos vacios
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
  When I enter tag name "<TAGNAMEincorrect>"
  And I wait for 2 seconds
  And I click save tag
  And I wait for 3 seconds

@user2 @web
Scenario: Crear tags solo con titulo
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
  When I enter tag name "<TAGNAME>"
  And I wait for 2 seconds
  And I click save tag
  And I wait for 3 seconds


@user5 @web
Scenario: Crear tags solo con titulo
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
  When I enter tag name "<TAGNAME190>"
  And I wait for 2 seconds
  And I click save tag
  And I wait for 3 seconds

  
@user6 @web
Scenario: Crear tags solo con titulo
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
  When I enter tag name "<TAGNAME192>"
  And I wait for 2 seconds
  And I click save tag
  And I wait for 3 seconds


@user7 @web
Scenario: Crear tags solo con titulo y descripcion
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
    When I enter tag name "<TAGNAME>"
    And I wait for 2 seconds
    When I enter tag description "<TAGDESCRIPTION501>"
    And I wait for 2 seconds
    And I click save tag
    And I wait for 3 seconds

  @user8 @web
  Scenario: Crear tags solo con titulo y descripcion
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
    When I enter tag name "<TAGNAME>"
    And I wait for 2 seconds
    When I enter tag description "<TAGDESCRIPTION499>"
    And I wait for 2 seconds
    And I click save tag
    And I wait for 3 seconds



  @user3 @web
  Scenario: Crear tags solo con titulo y descripcion
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
    When I enter tag name "<TAGNAME>"
    And I wait for 2 seconds
    When I enter tag description "<TAGDESCRIPTION>"
    And I wait for 2 seconds
    And I click save tag
    And I wait for 3 seconds

@user4 @web
Scenario: Crear tags con titulo, color y descripcion
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
  When I enter tag name "<TAGNAME>"
  And I wait for 2 seconds
  When I enter tag color "<TAGCOLOR>"
  And I wait for 2 seconds
  When I enter tag description "<TAGDESCRIPTION>"
  And I wait for 2 seconds
  And I click save tag
  And I wait for 3 seconds

@user9 @web
Scenario: Crear tags con titulo, color y descripcion
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
  When I enter tag name "<TAGNAME>"
  And I wait for 2 seconds
  When I enter tag color "<TAGCOLORIncorrect>"
  And I wait for 2 seconds
  When I enter tag description "<TAGDESCRIPTION>"
  And I wait for 2 seconds
  And I click save tag
  And I wait for 3 seconds