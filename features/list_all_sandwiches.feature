Feature: List all sandwiches

  @list-all-sandwiches
  Scenario: List all sandwiches succesfully
    Given I go to the homepage
    Then I should successfully see all sandwiches
