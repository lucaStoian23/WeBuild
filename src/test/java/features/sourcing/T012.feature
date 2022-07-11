Feature: T012 test filtri -> mischiare i filtri di diverse tab
  Scenario Outline: T012 test filtri -> mischiare i filtri di diverse tab

    Given I log_in NEW with username c.motta@reply.it and password CM.Webuild.003

    And I click HomePage.RFX
    And I go to the next frame

    #Filtri in RFX non presenti






    Examples:
      | RagSociale |
      | "Test12"   |