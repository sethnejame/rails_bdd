Feature: Delete Article
    As a publisher
    In order to manage my content better
    I would like to be able to delete articles

  Background:
    Given I visit the "landing" page
    Given the following articles exists
      | title                | content                          |
      | A breaking news item | Some really breaking action      |
      | Learn Rails 5        | Build awesome rails applications |

  @javascript
  Scenario: View list of articles on the landing page
    When I visit the site
    When I click on the "Delete" link
    Then I accept the alert
    Then I should be on "Awesome Articles" page
    And I should not see "A breaking news item"
    And I should not see "Some really breaking action"