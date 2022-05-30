Feature: T012 VendorManager Nuovo Fornitore Italia "DITC - DIFFERENT SUPPLIERS/SUBAPP. CEE", supplier type= procurement , senza BVD
  Scenario: T012
    #FORME GIURIDICHE: 0= fornitori diversi/ 1 = pers giuridiche/ 2 = Professionisti/
#TIPOLOGIE FORNITORE:  0 = AFC/ 1 = PROCUREMENT / 2 = PROCUREMENT & QUALIFICA
    Given I log_in with username c.motta@reply.it and password Sysko@003
    And I wait 20 seconds
    And I click HomePage.GestioneDeiFornitori
    And I wait 4 seconds
    And I click GestioneDeiFornitori.Fornitori
    And I wait 5 seconds
    And I click on the button
    And I wait 2 seconds
    And I click GestioneDeiFornitori.Fornitore
    And I wait 2 seconds
    And I click GestioneDeiFornitori.PopUpErrore

