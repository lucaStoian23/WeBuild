Feature: T013 Budget modification beyond tolerance limits within target setting and restart of approval workflow
  Scenario Outline: T013 Budget modification beyond tolerance limits within target setting and restart of approval workflow
    #FORME GIURIDICHE: 0= fornitori diversi/ 1 = pers giuridiche/ 2 = Professionisti/
#TIPOLOGIE FORNITORE:  0 = AFC/ 1 = PROCUREMENT / 2 = PROCUREMENT & QUALIFICA
    Given I log_in NEW with username s.zouhri@reply.it and password NPP.webuild1
    And I wait 15 seconds
    And I click HomePage.CreazioneRFX
    And I go to the next frame
    #parte ancora in fase di sviluppo


    Examples:
      | RagSociale     |
      | "Test"         |