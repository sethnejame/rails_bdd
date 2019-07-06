Feature: Edit articles
    As a publisher
    In order to keep my content accurate
    I would like to be able to edit my articles

  Background:
    Given I visit the "landing" page
    Given the following articles exists
      | title                | content                          |
      | A breaking news item | Some really breaking action      |
      | Learn Rails 5        | Build awesome rails applications |

  Scenario: Successfully edit an article
    Then I should see "New Article"
    When I click "Edit" link
    When I fill in "Title" with "Learning Rails 5"
    And I fill in "Content" with "Excited about learning a new framework"
    And I click "Update Article" button
    Then I should be on "Learning Rails 5" page
    And I should see "Article was successfully created."
    And I should see "Learning Rails 5"
    And I should see "Excited about learning a new framework"