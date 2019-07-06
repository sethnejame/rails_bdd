Feature: Create articles
  As a publisher
  In order to receive feedback from readers
  I would like readers to be able to comment on my articles

  Background:
    Given I visit the "landing" page
    Given the following articles exists
      | title                | content                          |
      | A breaking news item | Some really breaking action      |
      | Learn Rails 5        | Build awesome rails applications |

  Scenario: Reader can leave comments on an article
    When I click on the "Show" link
    Then I should see "Leave Comment"
    And I fill in "Comment" with "This is the best friggin' article I've ever read!"
    And I click on "Create Comment"
    Then I should be on "A breaking news item" page
    And I should see "Comments"
    And I should see "This is the best friggin' article I've ever read!"
