Feature: Navigate

  @loginPage
  Scenario: Open Login Page
    Given Navigate to Home Page
    When Click on Login tab
    Then Appear Login Registration form
    And Browser closed