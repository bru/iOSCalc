Feature: As a User pressing the digits on the calculator I want to see the numbers appear on the screen so that I know what I am doing

  Scenario: testing each digit
    Given I launch the app
    When I touch the 1 button
    Then I should see 1 on the display
    When I touch the C button
    Then I should see 0 on the display
    When I touch the 2 button
    Then I should see 2 on the display
    When I touch the C button
    When I touch the 3 button
    Then I should see 3 on the display
    When I touch the C button
    When I touch the 4 button
    Then I should see 4 on the display
    When I touch the C button
    When I touch the 5 button
    Then I should see 5 on the display
    When I touch the C button
    When I touch the 6 button
    Then I should see 6 on the display
    When I touch the C button
    When I touch the 7 button
    Then I should see 7 on the display
    When I touch the C button
    When I touch the 8 button
    Then I should see 8 on the display
    When I touch the C button
    When I touch the 9 button
    Then I should see 9 on the display

  Scenario: testing multiple digits
    Given I launch the app
    When I touch the 1 button
    And I touch the 2 button
    And I touch the 3 button
    And I touch the 4 button
    Then I should see 1234 on the display

  Scenario: testing floating point display
    Given I launch the app
    When I touch the dot button
    Then I should see 0. on the display
    When I touch the 1 button
    Then I should see 0.1 on the display

  Scenario: testing equal on a null operation
    Given I launch the app
    When I touch the 1 button
    And I touch the 2 button
    And I touch the equal button
    Then I should see 12 on the display
    When I touch the equal button 
    Then I should see 12 on the display
