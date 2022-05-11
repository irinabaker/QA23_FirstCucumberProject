Feature: Registration

  @registrationWithInvalidPassword
  Scenario Outline: Registration with invalid password
    Given Navigate to Home Page
    When Click on Login tab
    And Enter a valid email and an invalid password
      | email   | password   |
      | <email> | <password> |
    And Click on Registration button
    Then Alert appeared
    And Message Login Failed with code 400 appeared
    And Browser closed
    Examples:
      | email            | password                 |
      | karl+7@gmail.com |                          |
      | karl+7@gmail.com | Ka123$                   |
      | karl+7@gmail.com | Kaaaaaaaaaaaaaaa1234567$ |
      | karl+7@gmail.com | kk1234567$               |
      | karl+7@gmail.com | KK1234567$               |
      | karl+7@gmail.com | Kkkkkkkkk$               |
      | karl+7@gmail.com | Ka1234567                |
      | karl+7@gmail.com | Лл1234567;               |
      | karl+7@gmail.com | 1234567890               |
      | karl+7@gmail.com | aaaaaaaaaaa              |
      | karl+7@gmail.com | $@#$#$@$#%               |
      | karl+7@gmail.com | AAAAAAAAAA               |
      | karl+7@gmail.com | Ka1234567$               |
      | karl+7@gmail.com | Ka12 34567$              |
      | karl+7@gmail.com | Ka1234567$               |
      | karl+7@gmail.com | karl+7@gmail.com         |
      | karl+7@gmail.com | 0.1234555556             |
      | karl+7@gmail.com | www.google.com           |


  @registrationWithInvalidEmail
  Scenario Outline: Login with invalid email
    Given Navigate to Home Page
    When Click on Login tab
    And Enter an invalid email and a valid password
      | email   | password   |
      | <email> | <password> |
    And Click on Registration button
    Then Alert appeared
    And Message Login Failed with code 400 appeared
    And Browser closed
    Examples:
      | email              | password   |
      | k@gmail.com        | Ka1234567$ |
      | karl+7@g.com       | Ka1234567$ |
      | karl+7@gmail.c     | Ka1234567$ |
      | karl+7@gmailcom    | Ka1234567$ |
      | karl+7gmail.com    | Ka1234567$ |
      | empty              | Ka1234567$ |
      | лфкд+7"пьфшдюсщь   | Ka1234567$ |
      | KARL@GMAIL.COM     | Ka1234567$ |
      | 11122233344455     | Ka1234567$ |
      | 1237@gmail.com     | Ka1234567$ |
      | Ka1234567$         | Ka1234567$ |
      | www.google.com     | Ka1234567$ |
      | www.karl@gmail.com | Ka1234567$ |
      | 4E-07              | Ka1234567$ |
      | karl+7@gmail.com   | Ka1234567$ |
      | ka rl+7@gmail.com  | Ka1234567$ |
      | karl+7@gmail.com   | Ka1234567$ |


  @registrationExistedUser
  Scenario Outline: Login with invalid email
    Given Navigate to Home Page
    When Click on Login tab
    And Enter an invalid email and a valid password
      | email   | password   |
      | <email> | <password> |
    And Click on Registration button
    Then Alert appeared
    And Message Login Failed with code 409 appeared
    And Browser closed
    Examples:
      | email          | password   |
      | karl@gmail.com | Ka1234567$ |