@Registrasi
Feature: Registrasi
  @HappyFlow
  Scenario: 1. Registrasi with nama, email, nomor telepon, password,
  and konfirmasi password valid
    Given user is on Registrasi page
    When user input nama "Danan"
    And user input email "dananjoyoh@gmail.com"
    And user input nomor telepon "81300000000"
    And user input password "Walletku1!"
    And user input konfirmasi "Walletku1!"
    And user tap on Daftar
#    Then user directed to OTP page and user see label "Kode Verifikasi"

  @BadFlow
  Scenario Outline: 2. Registrasi with nama, email, nomor telepon, password, valid but konfirmasi password invalid
    Given user is on Registrasi page
    When user input nama "<nama>"
    And user input email "<email>"
    And user input nomor telepon "<nomorTelp>"
    And user input password "<password>"
    And user input konfirmasi "<konfirmasi password>"
    And user tap on Daftar
    Then user see warning text

    Examples:
      | nama                 | email                | nomorTelp   | password   | konfirmasi password |
      | Dananjoyo Helyudanto | dananjoyoh@yahoo.com | 81300000000 | Walletku1! | Walletku1           |
      | Dananjoyo Helyudanto | dananjoyoh@yahoo.com | 81300000000 | Walletku1! | Walletgua!          |
      | Dananjoyo Helyudanto | dananjoyoh@yahoo.com | 81300000000 | Walletku1! | walletno1!          |
      | Dananjoyo Helyudanto | dananjoyoh@yahoo.com | 81300000000 | Walletku1! | Aku1!               |

  Scenario Outline: 3. Registrasi with nama, email, nomor telepon, and konfirmasi password valid but password invalid
    Given user is on Registrasi page
    When user input nama "<nama>"
    And user input email "<email>"
    And user input nomor telepon "<nomor telepon>"
    And user input password "<password>"
    And user input konfirmasi "<konfirmasi password>"
    And user tap on Daftar
    And user see warning text

    Examples:
      | nama                 | email                | nomor telepon | password   | konfirmasi password |
      | Dananjoyo Helyudanto | dananjoyoh@yahoo.com | 81300000000   | walletno1! | walletno1!          |
      | Dananjoyo Helyudanto | dananjoyoh@yahoo.com | 81300000000   | Abc1!      | Abc1!               |
      | Dananjoyo Helyudanto | dananjoyoh@yahoo.com | 81300000000   | Walletgua! | Walletgua!          |
      | Dananjoyo Helyudanto | dananjoyoh@yahoo.com | 81300000000   | Walletku1  | Walletku1           |


  Scenario Outline: 4. Registrasi with nama, email, nomor telepon, valid but password, konfirmasi password invalid
    Given user is on Registrasi page
    When user input nama "<nama>"
    And user input email "<email>"
    And user input nomor telepon "<nomor telepon>"
    And user input password "<password>"
    And user input konfirmasi "<konfirmasi password>"
    And user tap on Daftar
    Then user see warning text

    Examples:
      | nama                 | email                | nomor telepon | password   | konfirmasi password |
      | Dananjoyo Helyudanto | dananjoyoh@yahoo.com | 81300000000   | Walletno1! | Walletno1           |
      | Dananjoyo Helyudanto | dananjoyoh@yahoo.com | 81300000000   | Aku1!      | Uang1               |
      | Dananjoyo Helyudanto | dananjoyoh@yahoo.com | 81300000000   | Walletgua! | Walletgua           |
      | Dananjoyo Helyudanto | dananjoyoh@yahoo.com | 81300000000   | Walletku1  | Walletku            |


  Scenario Outline: 5. Registrasi with nama, email, password, konfirmasi password valid but nomor telepon invalid
    Given user is on Registrasi page
    When user input nama "<nama>"
    And user input email "<email>"
    And user input nomor telepon "<nomor telepon>"
    And user input password "<password>"
    And user input konfirmasi "<konfirmasi password>"
    And user tap on Daftar
    Then user see warning text

    Examples:
      | nama                 | email                | nomor telepon | password   | konfirmasi password |
      | Dananjoyo Helyudanto | dananjoyoh@yahoo.com | 6281300000000 | Walletku1! | Walletku1!          |
      | Dananjoyo Helyudanto | dananjoyoh@yahoo.com | 813           | Walletku1! | Walletku1!          |

  Scenario Outline: 6. Registrasi with nama, email, password valid but konfirmasi password, nomor telepon invalid
    Given user is on Registrasi page
    When user input nama "<nama>"
    And user input email "<email>"
    And user input nomor telepon "<nomor telepon>"
    And user input password "<password>"
    And user input konfirmasi "<konfirmasi password>"
    And user tap on Daftar
    Then user see warning text

    Examples:
      | nama                 | email                | nomor telepon | password   | konfirmasi password |
      | Dananjoyo Helyudanto | dananjoyoh@yahoo.com | 6281300000000 | Walletku1! | Walletku1           |
      | Dananjoyo Helyudanto | dananjoyoh@yahoo.com | 813           | Walletku1! | Walletku1           |

  Scenario Outline:  7. Registrasi with nama, email, konfirmasi password valid but password, nomor telepon invalid
    Given user is on Registrasi page
    When user input nama "<nama>"
    And user input email "<email>"
    And user input nomor telepon "<nomor telepon>"
    And user input password "<password>"
    And user input konfirmasi "<konfirmasi password>"
    And user tap on Daftar
    Then user see warning text

    Examples:
      | nama                 | email                | nomor telepon | password   | konfirmasi password |
      | Dananjoyo Helyudanto | dananjoyoh@yahoo.com | 6281300000000 | Walletno1! | Walletno1!          |
      | Dananjoyo Helyudanto | dananjoyoh@yahoo.com | 813           | Aku1!      | Aku1!               |
      | Dananjoyo Helyudanto | dananjoyoh@yahoo.com | 6281300000000 | Walletgua! | Walletgua!          |
      | Dananjoyo Helyudanto | dananjoyoh@yahoo.com | 813           | Walletku1  | Walletku1           |

  Scenario Outline:  8. Registrasi with nama, email valid but password, konfirmasi password, nomor telepon invalid
    Given user is on Registrasi page
    When user input nama "<nama>"
    And user input email "<email>"
    And user input nomor telepon "<nomor telepon>"
    And user input password "<password>"
    And user input konfirmasi "<konfirmasi password>"
    And user tap on Daftar
    Then user see warning text

    Examples:
      | nama                 | email                | nomor telepon | password   | konfirmasi password |
      | Dananjoyo Helyudanto | dananjoyoh@yahoo.com | 6281300000000 | Walletno1! | Walletno1           |
      | Dananjoyo Helyudanto | dananjoyoh@yahoo.com | 813           | Aku1!      | Uang1               |
      | Dananjoyo Helyudanto | dananjoyoh@yahoo.com | 6281300000000 | Walletgua! | Walletgua           |
      | Dananjoyo Helyudanto | dananjoyoh@yahoo.com | 813           | Walletku1  | Walletku            |

  Scenario Outline:  9. Registrasi with nama, nomor telepon, password, konfirmasi password valid but email invalid
    Given user is on Registrasi page
    When user input nama "<nama>"
    And user input email "<email>"
    And user input nomor telepon "<nomor telepon>"
    And user input password "<password>"
    And user input konfirmasi "<konfirmasi password>"
    And user tap on Daftar
    Then user see warning text

    Examples:
      | nama                 | email               | nomor telepon | password   | konfirmasi password |
      | Dananjoyo Helyudanto | dananjoyohyahoo.com | 81300000000   | Walletku1! | Walletku1!          |
      | Dananjoyo Helyudanto | dananjoyoh@yahoo    | 81300000000   | Walletku1! | Walletku1!          |
      | Dananjoyo Helyudanto | dananjoyoh          | 81300000000   | Walletku1! | Walletku1!          |
      | Dananjoyo Helyudanto | dananjoyoh@.com     | 81300000000   | Walletku1! | Walletku1!          |

  Scenario Outline:  10. Registrasi with nama, nomor telepon, password valid but email, konfirmasi password invalid
    Given user is on Registrasi page
    When user input nama "<nama>"
    And user input email "<email>"
    And user input nomor telepon "<nomor telepon>"
    And user input password "<password>"
    And user input konfirmasi "<konfirmasi password>"
    And user tap on Daftar
    Then user see warning text

    Examples:
      | nama                 | email               | nomor telepon | password   | konfirmasi password |
      | Dananjoyo Helyudanto | dananjoyohyahoo.com | 81300000000   | Walletku1! | Walletku1           |
      | Dananjoyo Helyudanto | dananjoyoh@yahoo    | 81300000000   | Walletku1! | Walletku1           |
      | Dananjoyo Helyudanto | dananjoyoh          | 81300000000   | Walletku1! | Walletku1           |
      | Dananjoyo Helyudanto | dananjoyoh@.com     | 81300000000   | Walletku1! | Walletku1           |

  Scenario Outline:  11. Registrasi with nama, nomor telepon, konfirmasi password valid but email, password invalid
    Given user is on Registrasi page
    When user input nama "<nama>"
    And user input email "<email>"
    And user input nomor telepon "<nomor telepon>"
    And user input password "<password>"
    And user input konfirmasi "<konfirmasi password>"
    And user tap on Daftar
    Then user see warning text

    Examples:
      | nama                 | email               | nomor telepon | password   | konfirmasi password |
      | Dananjoyo Helyudanto | dananjoyohyahoo.com | 81300000000   | walletno1! | walletno1!          |
      | Dananjoyo Helyudanto | dananjoyoh@yahoo    | 81300000000   | Aku1!      | Aku1!               |
      | Dananjoyo Helyudanto | dananjoyoh          | 81300000000   | Walletgua! | Walletgua!          |
      | Dananjoyo Helyudanto | dananjoyoh@.com     | 81300000000   | Walletku1  | Walletku1           |

  Scenario Outline:  12. Registrasi with nama, nomor telepon valid but email, password, konfirmasi password invalid
    Given user is on Registrasi page
    When user input nama "<nama>"
    And user input email "<email>"
    And user input nomor telepon "<nomor telepon>"
    And user input password "<password>"
    And user input konfirmasi "<konfirmasi password>"
    And user tap on Daftar
    Then user see warning text

    Examples:
      | nama                 | email               | nomor telepon | password   | konfirmasi password |
      | Dananjoyo Helyudanto | dananjoyohyahoo.com | 81300000000   | walletno1! | walletno1           |
      | Dananjoyo Helyudanto | dananjoyoh@yahoo    | 81300000000   | Aku1!      | Uang1               |
      | Dananjoyo Helyudanto | dananjoyoh          | 81300000000   | Walletgua! | Walletgua           |
      | Dananjoyo Helyudanto | dananjoyoh@.com     | 81300000000   | Walletku1  | Walletku            |

  Scenario Outline:  13. Registrasi with nama, password, konfirmasi password valid but email, nomor telepon invalid
    Given user is on Registrasi page
    When user input nama "<nama>"
    And user input email "<email>"
    And user input nomor telepon "<nomor telepon>"
    And user input password "<password>"
    And user input konfirmasi "<konfirmasi password>"
    And user tap on Daftar
    Then user see warning text

    Examples:
      | nama                 | email               | nomor telepon | password   | konfirmasi password |
      | Dananjoyo Helyudanto | dananjoyohyahoo.com | 6281300000000 | Walletku1! | Walletku1!          |
      | Dananjoyo Helyudanto | dananjoyoh@yahoo    | 813           | Walletku1! | Walletku1!          |
      | Dananjoyo Helyudanto | dananjoyoh          | 6281300000000 | Walletku1! | Walletku1!          |
      | Dananjoyo Helyudanto | dananjoyoh@.com     | 813           | Walletku1! | Walletku1!          |

  Scenario Outline:  14. Registrasi with nama, password valid but email, nomor telepon, konfirmasi password invalid
    Given user is on Registrasi page
    When user input nama "<nama>"
    And user input email "<email>"
    And user input nomor telepon "<nomor telepon>"
    And user input password "<password>"
    And user input konfirmasi "<konfirmasi password>"
    And user tap on Daftar
    Then user see warning text

    Examples:
      | nama                 | email               | nomor telepon | password   | konfirmasi password |
      | Dananjoyo Helyudanto | dananjoyohyahoo.com | 6281300000000 | Walletku1! | Walletku1           |
      | Dananjoyo Helyudanto | dananjoyoh@yahoo    | 813           | Walletku1! | Walletku1           |
      | Dananjoyo Helyudanto | dananjoyoh          | 6281300000000 | Walletku1! | Walletku1           |
      | Dananjoyo Helyudanto | dananjoyoh@.com     | 813           | Walletku1! | Walletku1           |

  Scenario Outline:  15. Registrasi with nama, konfirmasi password valid but email, nomor telepon, password invalid
    Given user is on Registrasi page
    When user input nama "<nama>"
    And user input email "<email>"
    And user input nomor telepon "<nomor telepon>"
    And user input password "<password>"
    And user input konfirmasi "<konfirmasi password>"
    And user tap on Daftar
    Then user see warning text

    Examples:
      | nama                 | email               | nomor telepon | password   | konfirmasi password |
      | Dananjoyo Helyudanto | dananjoyohyahoo.com | 6281300000000 | walletno1! | walletno1!          |
      | Dananjoyo Helyudanto | dananjoyoh@yahoo    | 813           | Aku1!      | Aku1!               |
      | Dananjoyo Helyudanto | dananjoyoh          | 6281300000000 | Walletgua! | Walletgua!          |
      | Dananjoyo Helyudanto | dananjoyoh@.com     | 813           | Walletku1  | Walletku1           |

  Scenario Outline:  16. Registrasi with nama valid but email, nomor telepon, password, konfirmasi password invalid
    Given user is on Registrasi page
    When user input nama "<nama>"
    And user input email "<email>"
    And user input nomor telepon "<nomor telepon>"
    And user input password "<password>"
    And user input konfirmasi "<konfirmasi password>"
    And user tap on Daftar
    Then user see warning text

    Examples:
      | nama                 | email               | nomor telepon | password   | konfirmasi password |
      | Dananjoyo Helyudanto | dananjoyohyahoo.com | 6281300000000 | walletno1! | walletno1           |
      | Dananjoyo Helyudanto | dananjoyoh@yahoo    | 813           | Aku1!      | Uang1               |
      | Dananjoyo Helyudanto | dananjoyoh          | 6281300000000 | Walletgua! | Walletgua           |
      | Dananjoyo Helyudanto | dananjoyoh@.com     | 813           | Walletku1  | Walletku            |

  Scenario Outline:  17. Registrasi with nama invalid but email, nomor telepon, password, konfirmasi password valid
    Given user is on Registrasi page
    When user doesn't input nama
    And user input email "<email>"
    And user input nomor telepon "<nomor telepon>"
    And user input password "<password>"
    And user input konfirmasi "<konfirmasi password>"
    And user tap on Daftar
    Then user see warning text

    Examples:
      | email                | nomor telepon | password   | konfirmasi password |
      | dananjoyoh@yahoo.com | 81300000000   | Walletku1! | Walletku1!          |

  Scenario Outline:  18. Registrasi with nama, konfirmasi password invalid but email, nomor telepon, password valid
    Given user is on Registrasi page
    When user doesn't input nama
    And user input email "<email>"
    And user input nomor telepon "<nomor telepon>"
    And user input password "<password>"
    And user input konfirmasi "<konfirmasi password>"
    And user tap on Daftar
    Then user see warning text

    Examples:
      | email                | nomor telepon | password   | konfirmasi password |
      | dananjoyoh@yahoo.com | 81300000000   | Walletku1! | Walletku1           |

  Scenario Outline:  19. Registrasi with nama, password invalid but email, nomor telepon, konfirmasi password valid
    Given user is on Registrasi page
    When user doesn't input nama
    And user input email "<email>"
    And user input nomor telepon "<nomor telepon>"
    And user input password "<password>"
    And user input konfirmasi "<konfirmasi password>"
    And user tap on Daftar
    Then user see warning text

    Examples:
      | email                | nomor telepon | password   | konfirmasi password |
      | dananjoyoh@yahoo.com | 81300000000   | Walletku1  | Walletku1           |
      | dananjoyoh@yahoo.com | 81300000000   | walletno1! | walletno1!          |
      | dananjoyoh@yahoo.com | 81300000000   | Aku1!      | Aku1!               |
      | dananjoyoh@yahoo.com | 81300000000   | Walletgua! | Walletgua!          |

  Scenario Outline:  20. Registrasi with nama, password, konfirmasi password invalid but email, nomor telepon valid
    Given user is on Registrasi page
    When user doesn't input nama
    And user input email "<email>"
    And user input nomor telepon "<nomor telepon>"
    And user input password "<password>"
    And user input konfirmasi "<konfirmasi password>"
    And user tap on Daftar
    Then user see warning text

    Examples:
      | email                | nomor telepon | password   | konfirmasi password |
      | dananjoyoh@yahoo.com | 81300000000   | Walletku1  | Walletku            |
      | dananjoyoh@yahoo.com | 81300000000   | walletno1! | walletno1           |
      | dananjoyoh@yahoo.com | 81300000000   | Aku1!      | Uang1               |
      | dananjoyoh@yahoo.com | 81300000000   | Walletgua! | Walletgua           |

  Scenario Outline:  21. Registrasi with nama, nomor telepon invalid but email, password, konfirmasi password valid
    Given user is on Registrasi page
    When user doesn't input nama
    And user input email "<email>"
    And user input nomor telepon "<nomor telepon>"
    And user input password "<password>"
    And user input konfirmasi "<konfirmasi password>"
    And user tap on Daftar
    Then user see warning text

    Examples:
      | email                | nomor telepon | password   | konfirmasi password |
      | dananjoyoh@yahoo.com | 6281300000000 | Walletku1! | Walletku1!          |
      | dananjoyoh@yahoo.com | 813           | Walletku1! | Walletku1!          |
      | dananjoyoh@yahoo.com | 6281300000000 | Walletku1! | Walletku1!          |
      | dananjoyoh@yahoo.com | 813           | Walletku1! | Walletku1!          |

  Scenario Outline:  22. Registrasi with nama, nomor telepon, konfirmasi password invalid but email, password valid
    Given user is on Registrasi page
    When user doesn't input nama
    And user input email "<email>"
    And user input nomor telepon "<nomor telepon>"
    And user input password "<password>"
    And user input konfirmasi "<konfirmasi password>"
    And user tap on Daftar
    Then user see warning text

    Examples:
      | email                | nomor telepon | password   | konfirmasi password |
      | dananjoyoh@yahoo.com | 6281300000000 | Walletku1! | Walletku1           |
      | dananjoyoh@yahoo.com | 813           | Walletku1! | Walletku1           |
      | dananjoyoh@yahoo.com | 6281300000000 | Walletku1! | Walletku1           |
      | dananjoyoh@yahoo.com | 813           | Walletku1! | Walletku1           |

  Scenario Outline:  23. Registrasi with nama, nomor telepon, password invalid but email, konfirmasi password valid
    Given user is on Registrasi page
    When user doesn't input nama
    And user input email "<email>"
    And user input nomor telepon "<nomor telepon>"
    And user input password "<password>"
    And user input konfirmasi "<konfirmasi password>"
    And user tap on Daftar
    Then user see warning text

    Examples:
      | email                | nomor telepon | password   | konfirmasi password |
      | dananjoyoh@yahoo.com | 6281300000000 | Walletku1  | Walletku1           |
      | dananjoyoh@yahoo.com | 813           | walletno1! | walletno1!          |
      | dananjoyoh@yahoo.com | 6281300000000 | Aku1!      | Aku1!               |
      | dananjoyoh@yahoo.com | 813           | Walletgua! | Walletgua!          |

  Scenario Outline:  24. Registrasi with nama, nomor telepon, password, konfirmasi password invalid but email valid
    Given user is on Registrasi page
    When user doesn't input nama
    And user input email "<email>"
    And user input nomor telepon "<nomor telepon>"
    And user input password "<password>"
    And user input konfirmasi "<konfirmasi password>"
    And user tap on Daftar
    Then user see warning text

    Examples:
      | email                | nomor telepon | password   | konfirmasi password |
      | dananjoyoh@yahoo.com | 6281300000000 | Walletku1  | Walletku            |
      | dananjoyoh@yahoo.com | 813           | walletno1! | walletno1           |
      | dananjoyoh@yahoo.com | 6281300000000 | Aku1!      | Uang1               |
      | dananjoyoh@yahoo.com | 813           | Walletgua! | Walletgua           |

  Scenario Outline:  25. Registrasi with nama, email invalid but nomor telepon, password, konfirmasi password valid
    Given user is on Registrasi page
    When user doesn't input nama
    And user input email "<email>"
    And user input nomor telepon "<nomor telepon>"
    And user input password "<password>"
    And user input konfirmasi "<konfirmasi password>"
    And user tap on Daftar
    Then user see warning text

    Examples:
      | email               | nomor telepon | password   | konfirmasi password |
      | dananjoyohyahoo.com | 81300000000   | Walletku1! | Walletku1!          |
      | dananjoyoh@yahoo    | 81300000000   | Walletku1! | Walletku1!          |
      | dananjoyoh          | 81300000000   | Walletku1! | Walletku1!          |
      | dananjoyoh@.com     | 81300000000   | Walletku1! | Walletku1!          |

  Scenario Outline:  26. Registrasi with nama, email, konfirmasi password invalid but nomor telepon, password valid
    Given user is on Registrasi page
    When user doesn't input nama
    And user input email "<email>"
    And user input nomor telepon "<nomor telepon>"
    And user input password "<password>"
    And user input konfirmasi "<konfirmasi password>"
    And user tap on Daftar
    Then user see warning text

    Examples:
      | email               | nomor telepon | password   | konfirmasi password |
      | dananjoyohyahoo.com | 81300000000   | Walletku1! | Walletku1           |
      | dananjoyoh@yahoo    | 81300000000   | Walletku1! | Walletku1           |
      | dananjoyoh          | 81300000000   | Walletku1! | Walletku1           |
      | dananjoyoh@.com     | 81300000000   | Walletku1! | Walletku1           |

  Scenario Outline:  27. Registrasi with nama, email, password invalid but nomor telepon, konfirmasi password valid
    Given user is on Registrasi page
    When user doesn't input nama
    And user input email "<email>"
    And user input nomor telepon "<nomor telepon>"
    And user input password "<password>"
    And user input konfirmasi "<konfirmasi password>"
    And user tap on Daftar
    Then user see warning text

    Examples:
      | email               | nomor telepon | password   | konfirmasi password |
      | dananjoyohyahoo.com | 81300000000   | walletno1! | walletno1!          |
      | dananjoyoh@yahoo    | 81300000000   | Aku1!      | Aku1!               |
      | dananjoyoh          | 81300000000   | Walletgua! | Walletgua!          |
      | dananjoyoh@.com     | 81300000000   | Walletku1  | Walletku1           |

  Scenario Outline:  28. Registrasi with nama, email, password, konfirmasi password invalid but nomor telepon valid
    Given user is on Registrasi page
    When user doesn't input nama
    And user input email "<email>"
    And user input nomor telepon "<nomor telepon>"
    And user input password "<password>"
    And user input konfirmasi "<konfirmasi password>"
    And user tap on Daftar
    Then user see warning text

    Examples:
      | email               | nomor telepon | password   | konfirmasi password |
      | dananjoyohyahoo.com | 81300000000   | walletno1! | walletno1           |
      | dananjoyoh@yahoo    | 81300000000   | Aku1!      | Uang1               |
      | dananjoyoh          | 81300000000   | Walletgua! | Walletgua           |
      | dananjoyoh@.com     | 81300000000   | Walletku1  | Walletku            |

  Scenario Outline:  29. Registrasi with nama, email, nomor telepon invalid but password, konfirmasi password valid
    Given user is on Registrasi page
    When user doesn't input nama
    And user input email "<email>"
    And user input nomor telepon "<nomor telepon>"
    And user input password "<password>"
    And user input konfirmasi "<konfirmasi password>"
    And user tap on Daftar
    Then user see warning text

    Examples:
      | email               | nomor telepon | password   | konfirmasi password |
      | dananjoyohyahoo.com | 6281300000000 | Walletku1! | Walletku1!          |
      | dananjoyoh@yahoo    | 813           | Walletku1! | Walletku1!          |
      | dananjoyoh          | 6281300000000 | Walletku1! | Walletku1!          |
      | dananjoyoh@.com     | 813           | Walletku1! | Walletku1!          |

  Scenario Outline:  30. Registrasi with nama, email, nomor telepon, konfirmasi password invalid but password valid
    Given user is on Registrasi page
    When user doesn't input nama
    And user input email "<email>"
    And user input nomor telepon "<nomor telepon>"
    And user input password "<password>"
    And user input konfirmasi "<konfirmasi password>"
    And user tap on Daftar
    Then user see warning text

    Examples:
      | email               | nomor telepon | password   | konfirmasi password |
      | dananjoyohyahoo.com | 6281300000000 | Walletku1! | Walletku1           |
      | dananjoyoh@yahoo    | 813           | Walletku1! | Walletku1           |
      | dananjoyoh          | 6281300000000 | Walletku1! | Walletku1           |
      | dananjoyoh@.com     | 813           | Walletku1! | Walletku1           |

  Scenario Outline:  31. Registrasi with nama, email, nomor telepon, password invalid but konfirmasi password valid
    Given user is on Registrasi page
    When user doesn't input nama
    And user input email "<email>"
    And user input nomor telepon "<nomor telepon>"
    And user input password "<password>"
    And user input konfirmasi "<konfirmasi password>"
    And user tap on Daftar
    Then user see warning text

    Examples:
      | email               | nomor telepon | password   | konfirmasi password |
      | dananjoyohyahoo.com | 6281300000000 | walletno1! | walletno1!          |
      | dananjoyoh@yahoo    | 813           | Aku1!      | Aku1!               |
      | dananjoyoh          | 6281300000000 | Walletgua! | Walletgua!          |
      | dananjoyoh@.com     | 813           | Walletku1  | Walletku1           |

  Scenario Outline:  32. Registrasi with nama, email, nomor telepon, password, konfirmasi password invalid
    Given user is on Registrasi page
    When user doesn't input nama
    And user input email "<email>"
    And user input nomor telepon "<nomor telepon>"
    And user input password "<password>"
    And user input konfirmasi "<konfirmasi password>"
    And user tap on Daftar
    Then user see warning text

    Examples:
      | email               | nomor telepon | password   | konfirmasi password |
      | dananjoyohyahoo.com | 6281300000000 | walletno1! | walletno1           |
      | dananjoyoh@yahoo    | 813           | Aku1!      | Uang1               |
      | dananjoyoh          | 6281300000000 | Walletgua! | Walletgua           |
      | dananjoyoh@.com     | 813           | Walletku1  | Walletku            |

#  Scenario: 33. Check output if field nama is empty
#    Given user is on Registrasi page
#    When user doesn't input nama
#    And user tap on Daftar
#    Then user see warning text
#
#
#  Scenario: 34. Check output if field email is empty
#    Given user is on Registrasi page
#    When user input nama "Danan"
#    When user doesn't input email
#    And user tap on Daftar
#    Then user see warning text
#
#  Scenario: 35. Check output if field email has no @,address and .com
#    Given user is on Registrasi page
#    When user input nama "Danan"
#    When user input email "dananjoyoh"
#    And user tap on Daftar
#    Then user see warning text
#
#  Scenario: 36. Check output if field email has no @
#    Given user is on Registrasi page
#    When user input nama "Danan"
#    When user input email "dananjoyohyahoo.com"
#    And user tap on Daftar
#    Then user see warning text
#
#  Scenario: 37. Check output if field email has no address
#    Given user is on Registrasi page
#    When user input nama "Danan"
#    When user input email "dananjoyoh@.com"
#    And user tap on Daftar
#    Then user see warning text
#
#  Scenario: 38. Check output if field email has no .com
#    Given user is on Registrasi page
#    When user input nama "Danan"
#    When user input email "dananjoyoh@yahoo"
#    And user tap on Daftar
#    Then user see warning text
#
#  Scenario: 39. Check output if field nomor telepon has area code
#    Given user is on Registrasi page
#    When user input nama "Danan"
#    When user input email "dananjoyoh@yahoo.com"
#    When user input nomor telepon "6281300000000"
#    And user tap on Daftar
#    Then user see warning text
#
#  Scenario: 40. Check output if field nomor telepon has first number othen than 8
#    Given user is on Registrasi page
#    When user input nama "Danan"
#    When user input email "dananjoyoh@yahoo.com"
#    When user input nomor telepon "91300000000"
#    And user tap on Daftar
#    Then user see warning text
#
#  Scenario: 40. Check output if field nomor telepon has less digits
#    Given user is on Registrasi page
#    When user input nama "Danan"
#    When user input email "dananjoyoh@yahoo.com"
#    When user input nomor telepon "813"
#    And user tap on Daftar
#    Then user see warning text
#
#  Scenario: 41. Check output if field nomor telepon is empty
#    Given user is on Registrasi page
#    When user input nama "Danan"
#    When user input email "dananjoyoh@yahoo.com"
#    When user doesnt input nomor telepon
#    And user tap on Daftar
#    Then user see warning text
#
#  Scenario: 42. Check output if field password has no capital letter
#    Given user is on Registrasi page
#    When user input nama "Danan"
#    When user input email "dananjoyoh@yahoo.com"
#    When user input nomor telepon "81300000000"
#    When user input password "walletno1!"
#    And user tap on Daftar
#    Then user see warning text
#
#  Scenario: 43. Check output if field password has less digits
#    Given user is on Registrasi page
#    When user input nama "Danan"
#    When user input email "dananjoyoh@yahoo.com"
#    When user input nomor telepon "81300000000"
#    When user input password "Aku1!"
#    And user tap on Daftar
#    Then user see warning text
#
#  Scenario: 44. Check output if field password has no number
#    Given user is on Registrasi page
#    When user input nama "Danan"
#    When user input email "dananjoyoh@yahoo.com"
#    When user input nomor telepon "81300000000"
#    When user input password "Walletgua!"
#    And user tap on Daftar
#    Then user see warning text
#
#  Scenario: 45. Check output if field password has no symbol
#    Given user is on Registrasi page
#    When user input nama "Danan"
#    When user input email "dananjoyoh@yahoo.com"
#    When user input nomor telepon "81300000000"
#    When user input password "Walletku1"
#    And user tap on Daftar
#    Then user see warning text
#
#  Scenario: 46. Check output if field password is empty
#    Given user is on Registrasi page
#    When user input nama "Danan"
#    When user input email "dananjoyoh@yahoo.com"
#    When user input nomor telepon "81300000000"
#    When user doesnt input password
#    And user tap on Daftar
#    Then user see warning text
#
#  Scenario: 47. Check output if field konfirmasi password is empty
#    Given user is on Registrasi page
#    When user input nama "Danan"
#    When user input email "dananjoyoh@yahoo.com"
#    When user input nomor telepon "81300000000"
#    When user input password "Walletku1!"
#    And user doesnt input konfirmasi password
#    And user tap on Daftar
#    Then user see warning text
#
#  Scenario: 48. Check output if field konfirmasi password is different from password
#    Given user is on Registrasi page
#    When user input nama "Danan"
#    When user input email "dananjoyoh@yahoo.com"
#    When user input nomor telepon "81300000000"
#    When user input password "Walletku1!"
#    And user input konfirmasi password "walletguaaaa"
#    And user tap on Daftar
#    Then user see warning text