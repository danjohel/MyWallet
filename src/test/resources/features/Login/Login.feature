@Android @Login
Feature: Login

  @HappyFlow
  Scenario: Login with correct registered email and correct registered password
    Given user is on MyWallet start page
    When user input "dananjoyoh@gmail.com" in email field
    And user input "P@ssw0rd" in password field
    And user click Masuk button
    Then user directed to dashboard
    When user click profile image
    When user click logout button

#  #dengan scenario outline
#  Scenario Outline: Login with correct registered email and correct registered password
#    Given user is on MyWallet start page
#    When user input "<email>" in email field
#    And user input "<password>" in password field
#    And user click Masuk button
#    Then user directed to dashboard
#    When user click profile image
#    When user click logout button
#    Examples:
#      | email           | password   |
#      | email@gmail.com | Passwordku1! |

  @BadFlow
  @1
  Scenario: Login with correct registered email and correct unregistered password
    Given user is on MyWallet start page
    When user input "email@gmail.com" in email field
    And user input "Password1*" in password field
    And user click Masuk button
    Then user see toast on Login Page

  @2
  Scenario: Login with correct registered email and incorrect unregistered password
    Given user is on MyWallet start page
    When user input "email@gmail.com" in email field
    And user input "password" in password field
    And user click Masuk button
    Then user see warning text on Login Page

  @3
  Scenario Outline: Login with incorrect email and correct registered password
    Given user is on MyWallet start page
    When user input "<email>" in email field
    And user input "<password>" in password field
    And user click Masuk button
    Then user see warning text on Login Page

    Examples:
      | email     | password   |
      | email.com | Password1! |
      | email@    | Password1! |
      | email     | Password1! |

  @4
  Scenario Outline: Login with incorrect email and incorrect unregistered password
    Given user is on MyWallet start page
    When user input "<email>" in email field
    And user input "<password>" in password field
    And user click Masuk button
    Then user see warning text on Login Page

    Examples:
      | email     | password |
      | email.com | password |
      | email@    | password |
      | email     | password |

  @5
  Scenario Outline: Login with incorrect email and correct unregistered password
    Given user is on MyWallet start page
    When user input "<email>" in email field
    And user input "<password>" in password field
    And user click Masuk button
    Then user see warning text on Login Page

    Examples:
      | email     | password   |
      | email.com | Password1* |
      | email@    | Password1* |
      | email     | Password1* |

  @6
  Scenario: Login with empty email and empty password
    Given user is on MyWallet start page
    When user click Masuk button
    Then user see warning text on Login Page

  @7
  Scenario Outline: Login with unregistered email but correct registered password
    Given user is on MyWallet start page
    When user input "<email>" in email field
    And user input "<password>" in password field
    And user click Masuk button
    Then user see toast on Login Page

    Examples:
      | email            | password   |
      | email1@gmail.com | Password1! |

  @8
  Scenario Outline: Login with unregistered email and correct unregistered password
    Given user is on MyWallet start page
    When user input "<email>" in email field
    And user input "<password>" in password field
    And user click Masuk button
    Then user see toast on Login Page

    Examples:
      | email            | password   |
      | email1@gmail.com | Password1* |


  @9
  Scenario Outline: Login with unregistered email and incorrect unregistered password
    Given user is on MyWallet start page
    When user input "<email>" in email field
    And user input "<password>" in password field
    And user click Masuk button
    Then user see warning text on Login Page
#    And user see toast on Login Page

    Examples:
      | email            | password |
      | email1@gmail.com | password |


  @10
  Scenario: Login with empty email and registered password
    Given user is on MyWallet start page
    When  user input "Password1!" in password field
    And user click Masuk button
    Then user see warning text on Login Page

  @11
  Scenario: Login with empty email and correct unregistered password
    Given user is on MyWallet start page
    When  user input "Password1*" in password field
    And user click Masuk button
    Then user see warning text on Login Page

  @12
  Scenario: Login with empty email and incorrect unregistered password
    Given user is on MyWallet start page
    When user input "password" in password field
    And user click Masuk button
    Then user see warning text on Login Page
