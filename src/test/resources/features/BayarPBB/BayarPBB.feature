@BayarPBB
Feature: Bayar PBB

  Background: user is logged in
    Given user is on MyWallet start page
    When user input "email@gmail.com" in email field
    And user input "Passwordku1!" in password field
    And user click Masuk button
    Then user directed to dashboard and see BayarPBB button

  @First
  Scenario: 1. Bayar PBB with correct province, city, valid tax number and year with e-wallet method
    Given user tap on Bayar PBB button
    When user choose "Jawa Timur" as province
    And user choose "Malang" as city
    And user input "968574389786758437" as tax number
    And user input "2017" as year
    And user tap Cek Tagihan
    Then user directed to checkout page and user see "Checkout" label
    When user tap Bayar
    Then user directed to metode pembayaran page and see "Pembayaran" label
    When user tap e-wallet method
    Then user directed to konfirmasi pembayaran e-wallet page and see "Konfirmasi Pembayaran" label
    When user tap konfirmasi button
    Then user directed to input pin page
    When user input "123456" in input pin page
    Then user directed to pembayaran berhasil page and see selesai button
    When user tap selesai button
    Then user directed to dashboard and see BayarPBB button
    Then user tap profile button
    Then user tap histori button
    Then user see "Sukses" histori of bayar pbb
    Then user tap back button in histori page
    Then user tap logout button

  @Second
  Scenario: Bayar PBB with correct province, city, valid, tax number and year with bank virtual account method
    Given user tap on Bayar PBB button
    When user choose "Jawa Timur" as province
    When user choose "Malang" as city
    And user input "968574389786758437" as tax number
    And user input "2018" as year
    And user tap Cek Tagihan
    When user tap Bayar
    Then user directed to metode pembayaran page and see "Pembayaran" label
    When user tap BanK Transfer VA "Bank BNI" method
    Then user directed to konfirmasi pembayaran virtual account page and see "Konfirmasi Pembayaran" label
    When user tap konfirmasi button
    When user tap back button in konfirmasi pembayaran page
    When user tap back button in bayar pbb page
    Then user tap profile button
    Then user tap logout button