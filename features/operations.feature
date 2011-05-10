Feature: 
  As a User 
  I want to do operations on numbers 
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

  Scenario: subtracting two numbers
    Given I launch the app
    When I touch the 5 button
    And I touch the minus button
    And I touch the 3 button
    And I touch the equal button
    Then I should see 2 on the display

  Scenario: subtracting a bigger number from a smaller one
    Given I launch the app
    When I touch the 3 button
    And I touch the minus button
    And I touch the 5 button
    And I touch the equal button
    Then I should see -2 on the display

  Scenario: multiplying numbers
    Given I launch the app
    When I touch the 2 button
    And I touch the multiply button
    And I touch the 3 button
    And I touch the equal button
    Then I should see 6 on the display

  Scenario: multyplying by a number < 0
    Given I launch the app
    When I touch the minus button
    And I touch the 2 button
    And I touch the multiply button
    And I touch the 3 button
    And I touch the equal button
    Then I should see -6 on the display

  Scenario: dividing a number
    Given I launch the app
    When I touch the 4 button
    And I touch the divide button
    And I touch the 2 button
    And I touch the equal button
    Then I should see 2 on the display

    When I touch the C button
    And I touch the 5 button 
    And I touch the divide button
    And I touch the 2 button
    And I touch the equal button
    Then I should see 2.5 on the display

    When I touch the C button
    And I touch the minus button
    And I touch the 6 button
    And I touch the divide button
    And I touch the 2 button
    And I touch the equal button
    Then I should see -3 on the display

  Scenario: division by 0
    Given I launch the app
    When I touch the 5 button
    And I touch the divide button
    And I touch the 0 button
    And I touch the equal button
    Then I should see inf on the display
    
