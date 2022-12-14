Feature: Locations Functionality

  Background:
    Given Navigate to basqar
    When Enter username and password and click login button
    Then User should login successfuly

  Scenario Outline: Add,Edit and Delete Locations

    And Click on the element in the left Nav

      | acceptCookies |
      | setupOne      |
      | schoolSetup   |
      | locations     |

    And Create to new Locations and shortName  and capacity from location
      | nameInput      | <Locations> |
      | shortNameInput | <shortName> |
      | capacity       | <capacity>  |

    And Click to Location type
      | locationType |
      | locTypeOther |
      | saveButton   |

    Then Success message should be displayed from location

    And Edit to newLocations and newShortName and newcCapacity from location
      | nameInput      | <newLocations> |
      | shortNameInput | <newShortName> |
      | capacity       | <newCapacity>  |

    And Click to Location type
      | locationType |
      | locTypeOther |
      | saveButton   |

    Then Success message should be displayed from location

    And Click to Delete Button from Locations

    Then Success message should be displayed from location

    Examples:
      | Locations   | shortName | capacity | newLocations   | newShortName | newCapacity |
      | GAZIToront0 | SnKilda   | 99999    | SANLIVancouve6 | Missisipi    | 89999       |
