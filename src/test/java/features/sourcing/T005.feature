Feature: T005 creazione fornitore procurement and qualification
  Scenario Outline: T005 creazione fornitore procurement and qualification

    Given I log_in NEW with username c.motta@reply.it and password CM.Webuild.003

    #And I click HomePage.SourcingCockpit
    #And I go to the next frameAnd I wait 15 seconds
    #parte ancora in fase di sviluppo

    #procedo dal punto 08
    #creazione di un RFX

    #STEP DA 8 FINO A 16
    And I check that the element HomePage.HeaderHome contains the text 'Home'

    And I click HomePage.CreazioneRFX
    And I go to the next frame
    And I check that the element RFX.RFXCreationPageCheck contains the text 'Select the type of RFX'
    And I click RFX.TenderCommodityArrow
    And I select the 0 element from the DDL RFX.TenderCommodityUL
    And I input in RFX.Notes the text 'Test prova note 1'
    And I input in RFX.EventTitle the text <RFXTitle>
    #a questo punto bisognerebbe aggiungere un PR ma non è possibile al momento
    And I click RFX.Create
  # Aggiungo Un PR da RFX Creation

    And I click RFX.ProjectButton
    And I input in RFX.ProjectSearch the text 'Headquarter'
    And I click RFX.ProjectLents
    And I select the 0 element from the DDL RFX.ProjectUL
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
    And I click RFX.SaveAsDraft
    And I wait 3 seconds
     #torno nella homepage
    And I switch to defaultContentFrame
    And I click General.BackToHome
    And I click HomePage.MyRFX
    And I go to the next frame
    And I click RFX.RFXFirstChoice
    #Scelgo manualmente RFX creato precedentemente
    #aggiungo i vendor alla list
    And I wait 5 seconds
    And I click RFX.PreRFX
    And I wait 5 seconds
    And I click RFX.PreRFXButton
    And I click RFX.AddVendorRegionFilter
    And I click RFX.AddVendorSupplierStatusArrow
    And I select the 7 element from the DDL RFX.TenderCommodityUL
    And I click RFX.AddVendorSearchButton
    And I click RFX.Vendor1
    And I click RFX.Vendor2
    And I click RFX.Vendor3
#a questo punto bisogna creare un vendor da inserire come quarto elemento (tasto create non presente)
    And I click RFX.AddVendorButton
    And I click RFX.InviaVendorApprovazione
      #torno nella homepage
    And I switch to defaultContentFrame
    And I click General.BackToHome
    #apro tile MyInbox e Approve la richiesta di cambio stato
    And I click HomePage.LaMiaInbox
    And I wait 10 seconds
    And I go to the next frame
    And I select the 0 element from the DDL LaMiaInbox.DDLProposte
    And I click LaMiaInbox.Approve
    And I wait 30 seconds
   #torno nella homepage
    And I switch to defaultContentFrame
    And I click General.BackToHome
    And I click HomePage.MyRFX
    And I go to the next frame
    And I click RFX.RFXFirstChoice
    And I click RFX.TechnicalEvaluations
    And I click RFX.AddTechnicalEvaluation
    #adesso valuto il primo negativo gli altri positivo
    And I click RFX.EvaluationButton
    And I click RFX.EvaluationArrow
    And I select the 0 element from the DDL RFX.EvaluationUL
    And I input in RFX.EvaluationNote the text 'Negativo'
    #aggiungo un attach manualmente
    And I click RFX.EvaluationArrow
    And I wait 30 seconds
    And I click RFX.EvaluationButton2
    And I click RFX.EvaluationArrow
    And I select the 2 element from the DDL RFX.EvaluationUL
    And I input in RFX.EvaluationNote the text 'Positivo'
    #aggiungo un attach manualmente
    And I click RFX.EvaluationArrow
    And I wait 30 seconds
    And I click RFX.EvaluationButton3
    And I click RFX.EvaluationArrow
    And I select the 2 element from the DDL RFX.EvaluationUL
    And I input in RFX.EvaluationNote the text 'Positivo'
    #aggiungo un attach manualmente
    And I click RFX.CompletaValutazioneTecnica
    #adesso devo aprire un rfx da l'account vendor che ho rifiutato step 30 (non disponibile)
    #adesso devo aprire un rfx da l'account vendor che ho Accettato step 31-32-33 (non disponibile)
    #proseguire da 34


    Examples:
      | RFXTitle       |
      | "TestProva005" |