Feature: T014 Split Budget
  Scenario Outline: T014 Split Budget
    #FORME GIURIDICHE: 0= fornitori diversi/ 1 = pers giuridiche/ 2 = Professionisti/
#TIPOLOGIE FORNITORE:  0 = AFC/ 1 = PROCUREMENT / 2 = PROCUREMENT & QUALIFICA
    Given I log_in NEW with username xerupe@mailo.icu and password WebuildPwd00.
    And I wait 15 seconds

    #parte ancora in fase di sviluppo


    Examples:
      | RagSociale     |
      | "Test"         |