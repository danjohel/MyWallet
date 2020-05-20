@Android @ShowPBBMap
Feature: Show PBB Map

  Background:
    Given user is on MyWallet start page
    And user input "wibi_tea@yahoo.co.id" in email field
    And user input "P@ssw0rd" in password field
    And user click Masuk button
    And user directed to dashboard and see BayarPBB button

  @HappyFlow
  Scenario: Bayar PBB with correct province, city, valid, tax number and year with bank virtual account method
    Given user tap on Bayar PBB button
    When user choose "Jawa Timur" as province
    When user choose "Malang" as city
    And user input "968574389786758437" as tax number
    And user input "2019" as year
    And user tap Cek Tagihan
    When user tap Map
    Then user see Google Map
    When user tap back button in show map
    When user tap back button in bayar pbb page
    Then user tap profile button
    Then user tap logout button