Feature: T001 creazione fornitore procurement and qualification
  Scenario Outline: T001 creazione fornitore procurement and qualification
    #FORME GIURIDICHE: 0= fornitori diversi/ 1 = pers giuridiche/ 2 = Professionisti/
#TIPOLOGIE FORNITORE:  0 = AFC/ 1 = PROCUREMENT / 2 = PROCUREMENT & QUALIFICA
    Given I log_in NEW with username s.zouhri@reply.it and password NPP.webuild1
   # And I click HomePage.SourcingCockpit
   # And I go to the next frame
   # And I wait 15 seconds
    #parte ancora in fase di sviluppo

    #procedo dal punto 8
    #creazione di un RFX

    And I click HomePage.CreazioneRFX
    And I go to the next frame
    And I wait 10 seconds
    And I input in RFX.EventTitle the text <RFXTitle>
    And I click RFX.TenderCommodityArrow
    And I select the 0 element from the DDL RFX.TenderCommodityUL
    And I input in RFX.Notes the text 'Test prova note 1'
    #a questo punto bisognerebbe aggiungere un PR ma non è possibile al momento
    And I click RFX.Create
    #And I check that the element RFX.RFXHeader contains the text 'Pre-RFX Bozza'
    #compilare RFX
    And I click RFX.ProjectButton
    And I input in RFX.ProjectSearch the text 'Headquarter'
    And I click RFX.ProjectLents
    And I select the 0 element from the DDL RFX.ProjectUL
    #And I input in RFX.CapexPL the text '10'
    And I input in RFX.PRReleaseDate the text '19/05/2023'
    And I input in RFX.AcceptanceOfPR the text '19/05/2023'
    And I input in RFX.PRDeliveryDate the text '19/05/2023'
    And I input in RFX.PlannedRFQPublishingDate the text '19/06/2023'
    And I input in RFX.PlannedReccomentation the text '10/06/2023'
    And I input in RFX.ForecastReccomentation the text '12/06/2023'
    And I input in RFX.ContractStartDate the text '19/05/2023'
    And I input in RFX.ContractEndDate the text '19/07/2023'
    And I input in RFX.PlannedDateOfSignature the text '19/05/2023'
    And I click RFX.CurrencyButton
    And I input in RFX.CurrencySearch the text 'Euro'
    And I click RFX.CurrencyLents
    And I select the 0 element from the DDL RFX.CurrencyUL
    And I input in RFX.Budget the text '30000'
    And I input in RFX.Forecast the text '20000'
    And I input in RFX.PotentialSavings the text '10000'
    And I input in RFX.SavingsPercentage the text '10'
    And I click RFX.SaveAsDraft
    And I wait 3 seconds
     #torno nella homepage
    And I switch to defaultContentFrame
    And I click General.BackToHome
    And I click HomePage.MyRFX










    Examples:
      | RFXTitle     |
      | "TestProva"       |