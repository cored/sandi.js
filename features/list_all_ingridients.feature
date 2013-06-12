Feature: List all ingridients for a given sandwich

  @list-all-ingredients
  Scenario: Successfully list all ingridients for a given sandwich
    Given I have a sandwich
    When I ask for the ingridients
    Then I successfully retrieve all the ingridients
