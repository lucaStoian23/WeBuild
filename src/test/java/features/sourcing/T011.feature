Feature: T011 TEST FILTRI TILE RFX SLIDE 45
  Scenario Outline: T011 TEST FILTRI TILE RFX SLIDE 45

    Given I log_in NEW with username c.motta@reply.it and password CM.Webuild.003

    And I click HomePage.RFX
    And I go to the next frame

    #Filtri in RFX non presenti






    Examples:
      | RagSociale |
      | "Test11"   |