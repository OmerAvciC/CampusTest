Feature:Departments Functionality

  Background:
    Given Navigate to basqar
    When Enter username and password and click login button
    Then User should login successfuly
    And Click on the element in the left Nav
      | acceptCookies |
      | setupOne      |
      | schoolSetup   |
      | departments   |

  Scenario: Create a departments
    And Click on the element in the Dialog
      | addButton |

    And User sending the keys in Dialog content
      | name_GL    | FullStackTester |
      | shortNm_GL | QA1             |

    And Click on the element in the Dialog
      | saveButton |

    Then Success message should be displayedd

  Scenario: Edit a departments
    And Click on the element in the Dialog
      | editButton |

    And User sending the keys in Dialog content
      | name_GL    | TESTTEAMGroup19 |
      | shortNm_GL | QA2             |

    And Click on the element in the Dialog
      | saveButton |

    Then Success message should be displayedd

  Scenario: Delete a departments
    When Click on the element in the Dialog
      | deleteButton |

    And Click on the element in the Dialog
      | deleteDialogButton |

    Then Success message should be displayedd