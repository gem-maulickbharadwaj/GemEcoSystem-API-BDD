Feature: Admin

  Scenario Outline: API to create new Project (admin screen)
    Given Set post token endpoint and method "<endpoint>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint  | Method | Expected_status | SampleName   |
      | adminApi1 | post   | 200             | adminScreen1 |

  Scenario Outline: API to create new Project when project already exists (admin screen)
    Given Set post token endpoint and method "<endpoint>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint  | Method | Expected_status | SampleName   |
      | adminApi1 | post   | 200             | adminScreen2 |

  Scenario Outline: API to create new Project with no bearer token (admin screen)
    Given Set post empty token endpoint and method "<endpoint>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint  | Method | Expected_status | SampleName   |
      | adminApi1 | post   | 403             | adminScreen1 |
#
  Scenario Outline: API to create new Project when project name left as empty (admin screen)
    Given Set post token without steps endpoint and method "<endpoint>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint  | Method | Expected_status | SampleName   |
      | adminApi1 | post   | 400             | adminScreen3 |
#
  Scenario Outline: API to create new Project when description is left as empty (admin screen)
    Given Set post token without steps endpoint and method "<endpoint>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint  | Method | Expected_status | SampleName   |
      | adminApi1 | post   | 400             | adminScreen4 |
#
  Scenario Outline: API to create new Project when enviroment is left as empty (admin screen)
    Given Set post token without steps endpoint and method "<endpoint>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint  | Method | Expected_status | SampleName   |
      | adminApi1 | post   | 200             | adminScreen5 |

  Scenario Outline: API to update Project (admin screen)
    Given Set post token endpoint and method "<endpoint>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint  | Method | Expected_status | SampleName   |
      | adminApi1 | put    | 200             | adminScreen6 |

  Scenario Outline: API to update Project when project already exists (admin screen)
    Given Set post token endpoint and method "<endpoint>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint  | Method | Expected_status | SampleName   |
      | adminApi1 | put    | 200             | adminScreen7 |

  Scenario Outline: API to update Project when project name is empty (admin screen)
    Given Set post token without steps endpoint and method "<endpoint>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint  | Method | Expected_status | SampleName   |
      | adminApi1 | put    | 400             | adminScreen8 |

  Scenario Outline: API to update Project when description is empty (admin screen)
    Given Set post token without steps endpoint and method "<endpoint>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint  | Method | Expected_status | SampleName   |
      | adminApi1 | put    | 400             | adminScreen9 |

  Scenario Outline: API to update Project when enviroment is empty (admin screen)
    Given Set post token without steps endpoint and method "<endpoint>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint  | Method | Expected_status | SampleName    |
      | adminApi1 | put    | 200             | adminScreen10 |

  Scenario Outline: API to update Project with no bearer token (admin screen)
    Given Set post empty token endpoint and method "<endpoint>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint  | Method | Expected_status | SampleName   |
      | adminApi1 | put    | 403             | adminScreen6 |

  Scenario Outline: API to Get Project Details (admin screen)
    Given Set token endpoint and method "<endpoint>" and "<Method>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint  | Method | Expected_status |
      | adminApi1 | get    | 200             |

  Scenario Outline: API to Get Project Details when user does not have access to projects (admin screen)
    Given Set token when user does not have access endpoint and method "<endpoint>" and "<Method>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint  | Method | Expected_status |
      | adminApi1 | get    | 200             |

  Scenario Outline: API to Get Project Details when bridge token is wrong (admin screen)
    Given Set wrong bridge token endpoint and method "<endpoint>" and "<Method>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint  | Method | Expected_status |
      | adminApi1 | get    | 403             |

  Scenario Outline: API to Get User of Same (admin screen)
    Given Set token endpoint and method "<endpoint>" and "<Method>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint  | Method | Expected_status |
      | adminApi2 | get    | 200             |

  Scenario Outline: API to Get User of Same when user does not have access to projects (admin screen)
    Given Set token when user does not have access endpoint and method "<endpoint>" and "<Method>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint  | Method | Expected_status |
      | adminApi2 | get    | 200             |

  Scenario Outline: API to Get User of Same when bridge token is wrong (admin screen)
    Given Set wrong bridge token endpoint and method "<endpoint>" and "<Method>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint  | Method | Expected_status |
      | adminApi2 | get    | 403             |

  Scenario Outline: API To Change the Role Of User in the Project (admin screen)
    Given Setttt post array token endpoint and method "<endpoint>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint  | Method | Expected_status | SampleName    |
      | adminApi3 | post   | 200             | adminScreen11 |

  Scenario Outline: API To Change the Role Of User in the Project when pid is left as empty (admin screen)
    Given Setttt post array token endpoint and method "<endpoint>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint  | Method | Expected_status | SampleName    |
      | adminApi3 | post   | 400             | adminScreen12 |

  Scenario Outline: API To Change the Role Of User in the Project when Role is left as empty (admin screen)
    Given Setttt post array token endpoint and method "<endpoint>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint  | Method | Expected_status | SampleName    |
      | adminApi3 | post   | 400             | adminScreen12 |

  Scenario Outline:API To Change the Role Of User in the Project when user does not have access (admin screen)
    Given Setttt post array wrong token endpoint and method "<endpoint>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint  | Method | Expected_status | SampleName    |
      | adminApi3 | post   | 200             | adminScreen11 |

  Scenario Outline:API To Change the Role Of User in the Project with no bearer token (admin screen)
    Given Setttt post array wrong bearer endpoint and method "<endpoint>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint  | Method | Expected_status | SampleName    |
      | adminApi3 | post   | 403             | adminScreen11 |

  Scenario Outline: API To Accept Request of the User (admin screen)
    Given Setttt post array token endpoint and method "<endpoint>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint  | Method | Expected_status | SampleName    |
      | adminApi4 | post   | 200             | adminScreen11 |













