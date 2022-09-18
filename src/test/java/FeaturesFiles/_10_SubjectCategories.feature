Feature:Subject Categories Functionality

  Background:
    Given Navigate to basqar
    When Enter username and password and click login button
    Then User should login successfuly
    And Click on the element in the left Nav
      | acceptCookies     |
      | education         |
      | educationSetup    |
      | subjectCategories |

  Scenario: Create a subject categories
    And Click on the element in the Dialog
      | addButton |

    And User sending the keys in Dialog content
      | name_F | ScrumM |
      | code_F | z11    |

    And Click on the element in the Dialog
      | saveButton |

    Then Success message should be displayedd

  Scenario: Edit a subject categories
    And User sending the keys in Dialog content
      | searchInputOne | ScrumM |

    And Click on the element in the Dialog
      | searchButton |
      | editButton   |

    And User sending the keys in Dialog content
      | name_F | POwner |
      | code_F | z2     |

    And Click on the element in the Dialog
      | saveButton |

    Then Success message should be displayedd

  Scenario: Delete a subject categories
    And User delete item from Dialog
      | POwner |

    Then Success message should be displayedd