Feature: Find tweets by hashtag
  In order to see tweets with a specific hashtag
  As a user
  I should be able to search for a hashtag

  @javascript
  Scenario: Show the tweets for a given hashtag
    When I go to the homepage
    And I enter "rails" in the search field
    Then I should see tweets with "#rails"
