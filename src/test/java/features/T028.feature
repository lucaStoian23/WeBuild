Feature: T028 Visibiltà dati


  Scenario: T028 Visibiltà dati
    #FORME GIURIDICHE: 0= fornitori diversi/ 1 = pers giuridiche/ 2 = Professionisti/
    #TIPOLOGIE FORNITORE:  0 = AFC/ 1 = PROCUREMENT / 2 = PROCUREMENT & QUALIFICA
    Given I log_in NEW with username xerupe@mailo.icu and password WebuildPwd00.
    And I wait 25 seconds
    #account non ancora attivo