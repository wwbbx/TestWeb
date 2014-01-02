Feature: Search Test Card
  Background: Prepare test cards for searching
    Given AiR server have 4 34970A test cards

  @now
  Scenario: Search test card
    Given I input "34970A" into "Search Model Number" textbox
    When I click "Search" button
    Then I should see 4 test cards summary listed
    Then 4 test cards properties are as expected
