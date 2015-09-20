Feature: Recipe list

  AS A user
  I WANT to find recipes
  SO THAT I can get inspiration for cooking

  Scenario: No recipes available

    When there are no recipes in the system
    Then the message "Sorry, we currently have no recipes for you" is displayed