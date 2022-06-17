Feature: T001 creazione fornitore procurement and qualification
  Scenario Outline: T001 creazione fornitore procurement and qualification
    #FORME GIURIDICHE: 0= fornitori diversi/ 1 = pers giuridiche/ 2 = Professionisti/
#TIPOLOGIE FORNITORE:  0 = AFC/ 1 = PROCUREMENT / 2 = PROCUREMENT & QUALIFICA
    Given I log_in NEW with username s.zouhri@reply.it and password NPP.webuild1
    #And I wait 15 seconds
   # And I click HomePage.SourcingCockpit
   # And I go to the next frame
   # And I wait 15 seconds
    #parte ancora in fase di sviluppo

    #procedo dal punto 8
    #creazione di un RFX

    And I click HomePage.Fornitori
    And I wait 40 seconds
    And I click HomePage.RFXCreation
    And I go to the next frame
    And I input in RFX.EventTitle the text <RFXTitle>
    And I click RFX.TenderCommodityArrow
    And I select the 0 element from the DDL RFX.TenderCommodityUL
    And I input in RFX.Notes the text 'Test prova note 1'
    #a questo punto bisognerebbe aggiungere un PR ma non è possibile al momento
    And I click RFX.Create
    #And I check that the element RFX.RFXHeader contains the text 'Draft'
    #compilare RFX

    And I click RFX.SaveAsDraft
    And I wait 3 seconds
     #torno nella homepage
    And I switch to defaultContentFrame
    And I click General.Logo
    And I click HomePage.MyRFX
    #a questo punto cerco il mio RFX creato precedentemente (non disponibile)









    Examples:
      | RFXTitle     |
      | "Test"         |