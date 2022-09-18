Feature: Document Types Functionality

  Background:
    Given Navigate to basqar
    When Enter username and password and click login button
    Then User should login successfuly
    And Click on the element in the left Nav
      | acceptCookies |
      | setupOne      |
      | parameters    |
      | documentType  |

  Scenario: Create a Document Types
    And Click on the element in the Dialog
      | addButton |

    And User sending the keys in Dialog content
      | searchInputTwo | OmerQAengPro    |
      | description    | OmerFullStackQA |

    And Click on the element in the Dialog
      | stageOne   |
      | stageTwo   |
      | saveButton |

    Then Success message should be displayedd

  Scenario: Edit Document Types
    And User sending the keys in Dialog content
      | searchInputOne | OmerQAengPro |

    And Click on the element in the Dialog
      | searchButton |
      | editButton   |

    And User sending the keys in Dialog content
      | searchInputTwo | Group19 |

    And Click on the element in the Dialog
      | saveButton |

    Then Success message should be displayedd

  Scenario: Delete Document Types
    And User delete item from Dialog
      | Group19 |

    Then Success message should be displayedd