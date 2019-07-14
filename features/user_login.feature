Feature: User Login
  As an 'Awesome Articles' vistor,
  In order to view the 'Awesome Articles' forum,
  I would like to be able to login with my account

Background:
    Given the following user exists
    | email             | password      |
    | fatbob@gmail.com | ilovecatfood  |
    And I visit the site
    And I click "Login"

Scenario: User can login successfully
    When I fill "Email" with "fatbob@gmail.com"
    And I fill "Password" with "ilovecatfood"
    And I click "Log in"
    Then I should see "Signed in successfully."

Scenario: User cant login with invalid Email [Sad Path]
    When I fill "Email" with "whateverdude"
    And I fill "Password" with "password1"
    And I click "Log in"
    Then I should see "Invalid Email or password"
    
Scenario: User cant login with invalid password
    When I fill "Email" with "fatbob@gmail.com"
    And I fill "Password" with ""
    And I click "Log in"
    Then I should see "Invalid Email or password" 