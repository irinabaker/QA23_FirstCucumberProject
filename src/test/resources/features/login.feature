Feature: Login

  @validData
  Scenario: Login with valid data
    Given Navigate to Home Page
    When Click on Login tab
    And Enter valid data
    And Click on Login button
    Then SignOut button displayed

  @invalidPassword
  Scenario Outline: Login with invalid data
    Given Navigate to Home Page
    When Click on Login tab
    And Enter a valid email and an invalid password
      | email   | password   |
      | <email> | <password> |
    And Click on Login button
    Then Alert appeared
    Examples:
      | email            | password  |
      | karl+1@gmail.com | Ka1234567 |