Feature: Field Functionality

  Background:
    Given Navigate to basqar
    When Enter username and password and click login button
    Then User should login successfuly
    When Click on the element in the left Nav
      | acceptCookies |
      | setupOne      |
      | parameters    |
      | fields        |

  Scenario: Create Field
    And Click on the element in the Dialog
      | addButton |

    And User sending the keys in Dialog content
      | name_F | DatabaseTEST |
      | code_F | 99lele       |

    And Click on the element in the Dialog
      | fieldType |
      | text      |

    And Click on the element in the Dialog
      | saveButton |

    Then Success message should be displayedd

  Scenario: Edit Field
    And User sending the keys in Dialog content
      | searchInputOne | DatabaseTEST |

    And Click on the element in the Dialog
      | editButton |

    And User sending the keys in Dialog content
      | name_F | APITesting |
      | code_F | 12xyz      |

    And Click on the element in the Dialog
      | saveButton |

    Then Success message should be displayedd

  Scenario: Delete Field
    And User delete item from Dialog
      | APITesting |

    Then Success message should be displayedd