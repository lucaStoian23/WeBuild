Feature: T001 creazione fornitore procurement and qualification
  Scenario Outline: T001 creazione fornitore procurement and qualification
    #FORME GIURIDICHE: 0= fornitori diversi/ 1 = pers giuridiche/ 2 = Professionisti/
#TIPOLOGIE FORNITORE:  0 = AFC/ 1 = PROCUREMENT / 2 = PROCUREMENT & QUALIFICA
    Given I log_in NEW with username s.zouhri@reply.it and password NPP.webuild1

    #And I click HomePage.SourcingCockpit
    #And I go to the next frameAnd I wait 15 seconds
    #parte ancora in fase di sviluppo

    #procedo dal punto 8
    #creazione di un RFX

    #STEP DA 8 FINO A 16

    And I click HomePage.CreazioneRFX
    And I go to the next frame
    And I wait 2 seconds
    And I click RFX.TenderCommodityArrow
    And I select the 0 element from the DDL RFX.TenderCommodityUL
    And I input in RFX.Notes the text 'Test prova note 1'
    And I input in RFX.EventTitle the text <RFXTitle>
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
    And I input in RFX.Forecast the text '10000'
    And I click RFX.SaveAsDraft

    And I wait 3 seconds
     #torno nella homepage
    And I switch to defaultContentFrame
    And I click General.BackToHome
    And I click HomePage.MyRFX
    And I go to the next frame
    And I wait 6 seconds
    And I open the 0 row insire table MyRfx.RFXtable
          #aggiungo i vendor alla list

    And I wait 5 seconds
    And I click RFX.PreRFX
    And I wait 5 seconds
    And I click RFX.PreRFXButton
    And I click RFX.AddVendorRegionFilter
    And I wait 2 seconds
    And I click RFX.AddVendorSupplierStatusArrow
    And I select the 7 element from the DDL RFX.AddVendorSupplierStatusUL
    And I click RFX.AddVendorSearchButton
    And I wait 3 seconds
    #And I change the iFrame application-NPPNewRFX-Display
    And I click RFX.Vendor1
    And I click RFX.Vendor2
    And I click RFX.Vendor3
    And I click RFX.AddVendorButton
    And I wait 2 seconds
    And I click RFX.InviaVendorApprovazione
    And I wait 5 seconds
      #torno nella homepage
    And I switch to defaultContentFrame
    And I click General.BackToHome
    #apro tile MyInbox e Approve la richiesta di cambio stato
   # And I click HomePage.LaMiaInbox
   # And I wait 10 seconds
   # And I go to the next frame
   # And I wait 3 seconds
   # And I select the 1 element from the DDL LaMiaInbox.DDLProposte
   # And I click LaMiaInbox.Approve
   # And I wait 30 seconds
   #torno nella homepage
   # And I switch to defaultContentFrame
   # And I click General.BackToHome
    And I click HomePage.MyRFX
    And I wait 5 seconds
    And I go to the next frame
    And I open the 0 row insire table MyRfx.RFXtable
    #adesso procedo con la valutatione tecnica
    And I wait 3 seconds
    And I click RFX.TechnicalEvaluations
    And I click RFX.AddTechnicalEvaluation
    And I wait 3 seconds
      #adesso valuto il primo negativo gli altri positivo
    And I use the 0 button of RFX.TechnicalEvaluationTable
    And I click RFX.EvaluationArrow
    And I select the 0 element from the DDL RFX.EvaluationUL
    And I input in RFX.EvaluationTextArea the text 'Negativo'
#aggiungo un attach manualmente
    And I click RFX.EvaluationArrow
    And I wait 1 seconds
    And I put the attachment cucumber.properties inside RFX.AttachmentField
    And I click RFX.Add
    And I wait 8 seconds
    And I use the 1 button of RFX.TechnicalEvaluationTable
    And I click RFX.EvaluationArrow
    And I select the 2 element from the DDL RFX.EvaluationUL2
    And I input in RFX.EvaluationTextArea the text 'Positivo'
#aggiungo un attach manualmente
    And I click RFX.EvaluationArrow
    And I wait 1 seconds
    And I put the attachment embedded1.png inside RFX.AttachmentField
    And I click RFX.Add
    And I wait 8 seconds
    And I use the 2 button of RFX.TechnicalEvaluationTable
    And I click RFX.EvaluationArrow
    And I select the 2 element from the DDL RFX.EvaluationUL3
    And I input in RFX.EvaluationTextArea the text 'Positivo'
    And I click RFX.EvaluationArrow
    And I wait 1 seconds
    And I put the attachment extent.properties inside RFX.AttachmentField
    And I click RFX.Add
    And I click RFX.CompletaValutazioneTecnica
    #adesso devo aprire un rfx da l'account vendor che ho rifiutato step 30 (non disponibile)
    #adesso devo aprire un rfx da l'account vendor che ho Accettato step 31-32-33 (non disponibile)
    #Sezione Target Setting da eseguire con buyer
    #torno nella homepage
    And I switch to defaultContentFrame
    And I click General.BackToHome
    And I click HomePage.MyRFX
    And I go to the next frame
    And I click RFX.RFXFirstChoice
    And I click RFX.TargetPrice
    And I click RFX.AddTargetPrice
    And I input in RFX.TheEventEnds the text '15 June 2022 - 02:24 PM GMT+02:00'
    And I input in RFX.EventNotes the text 'Test'
    And I click RFX.AddEventItem
    And I input in RFX.EventDescription the text 'Test evento'
    And I input in RFX.EventTargetPrice the text '50000'
    And I click RFX.PublishButton
    And I wait 3 seconds
    #Recommendation
    And I click RFX.Reccomendations
    And I click RFX.AddRecommendation
    #il sistema anche se ho settato un target price non mi fa inserire reccomendation




    Examples:
      | RFXTitle       |
      | "TestProva003" |