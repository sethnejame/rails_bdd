Feature: Comment on articles
    As a publisher
    In order to allow my readers to give me feedback
    I would like readers to be able to comment on articles

  Background:
    Given I visit the site
    Given the following articles exists
      | title                | content                          |
      | A breaking news item | Some really breaking action      |
      | Learn Rails 5        | Build awesome rails applications |

  Scenario: Reader can comment on articles
    When I visit the site
    When I click on the "Show" link
    Then I should see "Add a comment:"
    And I fill in "Commenter" with "Rando Calrashian"
    And I fill in "Body" with "This is the best friggin' article I've ever read!"
    And I click on "Create Comment"
    Then I should be on "A breaking news item" page
    And I should see "Commenter: Rando Calrashian"
    And I should see "Comment: This is the best friggin' article I've ever read!"