Feature: Position Categories Functionality

  Background:
    Given Navigate to basqar
    When Enter username and password and click login button
    Then User should login successfuly

    And Click on the element in the left Nav
      | acceptCookies       |
      | humanResources      |
      | humanResourcesSetup |
      | positionCategories  |

  Scenario:Create a Position Category
    And Click on the element in the Dialog
      | addButton |

    And User sending the keys in Dialog content
      | searchInputTwo | QA Engineer |

    And Click on the element in the Dialog
      | saveButton |

    Then Success message should be displayedd

  Scenario:Edit a Position Category
    And User sending the keys in Dialog content
      | searchInputOne | QA Engineer |

    And Click on the element in the Dialog
      | searchButton |

    And Click on the element in the Dialog
      | editButton |

    And User sending the keys in Dialog content
      | searchInputTwo | FullStackTester |

    And Click on the element in the Dialog
      | saveButton |

    Then Success message should be displayedd

  Scenario:Delete a Position Category
    And User delete item from Dialog
      | FullStackTester |

    Then Success message should be displayedd