Feature: 
  As a User 
  I want to add up numbers 
  So that I am spared the effort

  Scenario: adding up two numbers
  
    Given I launch the app
    When I touch the 2 button
    When I touch the plus button
    When I touch the 3 button
    When I touch the equal button
    Then I should see 5 on the display

  Scenario: adding up three numbers
    Given I launch the app
    When I touch the 2 button
    And I touch the plus button
    And I touch the 3 button
    And I touch the plus button
    And I touch the 4 button
    And I touch the equal button
    Then I should see 9 on the display

  Scenario: adding up multiple digit numbers
    Given I launch the app
    When I touch the 2 button
    And I touch the 2 button
    And I touch the plus button
    And I touch the 3 button
    And I touch the 3 button
    And I touch the equal button
    Then I should see 55 on the display
