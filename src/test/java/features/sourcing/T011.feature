Feature: T011 TEST FILTRI TILE RFX SLIDE 45
  Scenario Outline: T011 TEST FILTRI TILE RFX SLIDE 45
    #FORME GIURIDICHE: 0= fornitori diversi/ 1 = pers giuridiche/ 2 = Professionisti/
#TIPOLOGIE FORNITORE:  0 = AFC/ 1 = PROCUREMENT / 2 = PROCUREMENT & QUALIFICA
    Given I log_in NEW with username s.zouhri@reply.it and password NPP.webuild1
    And I wait 15 seconds
    And I click HomePage.RFX
    And I go to the next frame
    And I wait 15 seconds
    #parte ancora in fase di sviluppo





    Examples:
      | RagSociale     |
      | "Test "         |