Feature: Login

  @validData
  Scenario: Login with valid data
    Given Navigate to Home Page
    When Click on Login tab
    And Enter valid data
    And Click on Login button
    Then SignOut button displayed
    And Browser closed

  @invalidPassword
  Scenario Outline: Login with invalid password
    Given Navigate to Home Page
    When Click on Login tab
    And Enter a valid email and an invalid password
      | email   | password   |
      | <email> | <password> |
    And Click on Login button
    Then Alert appeared
    And Message Login Failed with code 400 appeared
    And Browser closed
    Examples:
      | email          | password  |
      | karl@gmail.com | Ka1234567 |



