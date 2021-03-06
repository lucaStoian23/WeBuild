Feature: T013 Assegnare RDA a buyer, far creare al buyer una rfx di tipo RDQ e NON farla approvare al VM,
  Scenario Outline: T013 Assegnare RDA a buyer, far creare al buyer una rfx di tipo RDQ e NON farla approvare al VM,


    Given I log_in NEW with username c.motta@reply.it and password CM.Webuild.003

  #  #Assegno il pr da sourcing cockpit

  #  And I check that HomePage.SourcingCockpit is displayed
  #  And I click HomePage.SourcingCockpit
  #  And I go to the next frame
  #  And Wait if it is loading
  #  And I check that RFX.PRListArrow is displayed
  #  And I click RFX.PRListArrow
  #  And Wait if it is loading
  #  And I check that RFX.PRAll is displayed
  #  And I click RFX.PRAll
  #  And I check that RFX.AssignPR is displayed
  #  And I click RFX.AssignPR
  #  And I check that RFX.PRBuyerBoxArrow is displayed
  #  And I click RFX.PRBuyerBoxArrow
  #  And I check that RFX.PRBuyerBoxUL is displayed
  #  And I select the 3 element from the DDL RFX.PRBuyerBoxUL
  #  And I check that RFX.PRBuyerRegister is displayed
  #  And I click RFX.PRBuyerRegister
  #  And I wait 1 seconds
  #  And I check that RFX.PRBuyerRegister2 is displayed
  #  And I click RFX.PRBuyerRegister2
  #  And I check that General.OKMessage is displayed
  #  And I click General.OKMessage
  #  And I switch to defaultContentFrame
  #  And I click General.BackToHome
  #  And I check that the element HomePage.HeaderHome contains the text 'Home'

    #procedo dal punto 08
    #creazione di un RFX

    #STEP DA 8 FINO A 16

    #Creo un RFX
    And I click HomePage.CreazioneRFX
    And I go to the next frame
    And I check that the element RFX.RFXCreationPageCheck contains the text 'Select the type of RFX'
    And I click RFX.TenderCommodityArrow
    And I check that RFX.TenderCommoditySearch is displayed and clickable
    And I input in RFX.TenderCommoditySearch the text 'photo'
    And I click RFX.Lente
    And I select the 0 element from the DDL RFX.TenderCommodityUL
    And I input in RFX.Notes the text 'Test prova note 1'
    And I click RFX.RFI
    And I input in RFX.EventTitle the text <RFXTitle>

 # #aggiungo pr da creazione RFX (errore in pagina)
    And I check that RFX.AddPR is displayed
    And I click RFX.AddPR
    And Wait if it is loading
   # And I check that RFX.PRTickAll is displayed
   # And I click RFX.PRTickAll
    And I choose the 0 insire table RFX.AddPRTbody
   # And I choose the 4 insire table RFX.AddPRTbody
    And I check that RFX.AddPrButton is displayed
    And I click RFX.AddPrButton
    And I check that RFX.PRtable is displayed
    And I wait 2 seconds
    And I clear the rfx budget to all the pr inside RFX.PRtable
  #  And I insert the rfx budget 11 to all the pr inside RFX.PRtable
    And I wait 1 seconds
    And I click RFX.Create


    #a questo punto bisognerebbe aggiungere un PR ma non ?? possibile al momento
    #And I check that the element RFX.RFCCreationDeatailCheck contains the text 'RFX Creation - Detail'
    #And I check that the element RFX.RFCCreationDeatailCheck contains the text 'Pre-RFX Bozza'
    #compilare RFX
    And I check that RFX.ProjectButton is displayed
    And I click RFX.ProjectButton
    And I check that RFX.ProjectSearch is displayed
    And I input in RFX.ProjectSearch the text 'Koysha'
    And I check that RFX.ProjectLents is displayed
    And I click RFX.ProjectLents
    And I check that RFX.ProjectUL is displayed
    And I select the 0 element from the DDL RFX.ProjectUL
    And I check that RFX.PRReleaseDate is displayed
    And I input in RFX.PRReleaseDate the text '19/05/2023'
    And I check that RFX.AcceptanceOfPR is displayed
    And I input in RFX.AcceptanceOfPR the text '19/05/2023'
    And I check that RFX.PRDeliveryDate is displayed
    And I input in RFX.PRDeliveryDate the text '19/05/2023'
    And I check that RFX.PlannedRFQPublishingDate is displayed
    And I input in RFX.PlannedRFQPublishingDate the text '19/06/2023'
    And I check that RFX.PlannedReccomentation is displayed
    And I input in RFX.PlannedReccomentation the text '10/06/2023'
    And I check that RFX.ForecastReccomentation is displayed
    And I input in RFX.ForecastReccomentation the text '12/06/2023'
    And I scroll down
    And I check that RFX.ContractStartDate is displayed
    And I input in RFX.ContractStartDate the text '19/09/2022'
    And I check that RFX.ContractEndDate is displayed
    And I input in RFX.ContractEndDate the text '19/07/2023'
    And I check that RFX.PlannedDateOfSignature is displayed
    And I input in RFX.PlannedDateOfSignature the text '19/05/2023'
    And I scroll down
    And I check that RFX.CurrencyButton is displayed
    And I click RFX.CurrencyButton
    And I check that RFX.CurrencySearch is displayed
    And I input in RFX.CurrencySearch the text 'Euro'
    And I check that RFX.CurrencyLents is displayed
    And I click RFX.CurrencyLents
    And I select the 0 element from the DDL RFX.CurrencyUL
    And I check that RFX.Budget is displayed
    And I input in RFX.Budget the text '15000000'
    And I check that RFX.Forecast is displayed
    And I input in RFX.Forecast the text '10000'
    And I check that RFX.SaveAsDraft is displayed
    And I click RFX.SaveAsDraft

     #torno nella homepage
    And I switch to defaultContentFrame
    And I click General.BackToHome
    And I check that the element HomePage.HeaderHome contains the text 'Home'
    And I click HomePage.MyRFX
    And I go to the next frame
    And I check that the element RFX.MyRFXCheckPage contains the text 'RFX'
    #And I wait 1 seconds
   # And I click RFX.CreationDate
   # And I check that RFX.SortDescending is displayed
   # And I wait 1 seconds
   # And I click RFX.SortDescending

    And Wait if it is loading
    And I open the 0 row insire table MyRfx.RFXtable
          #aggiungo i vendor alla list
    And Wait if it is loading
    And I check that RFX.PreRFX is displayed
    And I click RFX.PreRFX
    And I check that RFX.PreRFXButton is displayed
    And I click RFX.PreRFXButton
    And I check that the element RFX.AddVendorsPageCheck contains the text 'Add Vendors'
    And I click RFX.AddVendorRegionFilter
    And I check that RFX.AddVendorSupplierStatusArrow is displayed
    And I click RFX.AddVendorSupplierStatusArrow

#Inserisco i 3 vendor singolarmente
    And I input in RFX.InputSearch the text "Thinksys"
    And I click RFX.Lente
    And I click RFX.VendorTickAll
    And I click RFX.AddVendorButton
    And Wait if it is loading
    And I click RFX.EnlargePage
    And I check that RFX.InviteVendors is displayed
    And I click RFX.InviteVendors
    And I check that RFX.InputSearch is displayed
    And I wait 1 seconds
    And I input in RFX.InputSearch the text "Marco Coroniti SPA"
    And I click RFX.Lente
    And I click RFX.VendorTickAll
    And I click RFX.AddVendorButton
    And I check that RFX.InviteVendors is displayed
    And Wait if it is loading
    And I click RFX.InviteVendors
    And I check that RFX.InputSearch is displayed
    And I wait 1 seconds
    And I input in RFX.InputSearch the text "MARELLI SNC DI MARELLI MARCO E DANIELEe"
    And I click RFX.Lente
    And I click RFX.VendorTickAll
    And I click RFX.AddVendorButton
    And I wait 1 seconds
    And I check that RFX.InviaVendorListPerApprovazione is displayed
    And I click RFX.InviaVendorListPerApprovazione
    And Wait if it is loading
    #FARE IL CHECK PRE RFX PENDING APPROVAL INVECE DI   QUESTO TIMER ENORME

      #torno nella homepage
    And I switch to defaultContentFrame
    And I click General.BackToHome
    And I check that the element HomePage.HeaderHome contains the text 'Home'

    #apro tile MyInbox e Reject la richiesta di cambio stato
    And I click HomePage.LaMiaInbox
    And I go to the next frame
    And Wait if it is loading
    And I check that LaMiaInbox.DDLProposte is displayed
    And I select the 0 element from the DDL LaMiaInbox.DDLProposte
    And I click LaMiaInbox.Reject
    And I wait 5 seconds

   #torno nella homepage
    And I switch to defaultContentFrame
    And I click General.BackToHome
    And I check that the element HomePage.HeaderHome contains the text 'Home'
    And I click HomePage.MyRFX
    And I go to the next frame
    And I check that the element RFX.MyRFXCheckPage contains the text 'RFX'
    And I wait 1 seconds

    #And I click RFX.CreationDate
    #And I check that RFX.SortDescending is displayed
    #And I wait 1 seconds
    #And I click RFX.SortDescending

    And I open the 0 row insire table MyRfx.RFXtable

    #adesso procedo con la valutatione tecnica

    And Wait if it is loading
    And I check that RFX.TechnicalEvaluations is displayed and enabled
    And I click RFX.TechnicalEvaluations
    And I check that RFX.AddTechnicalEvaluation is displayed
    And I click RFX.AddTechnicalEvaluation

      #adesso valuto il primo negativo gli altri positivo
    And I check that RFX.TechnicalEvaluationTable is displayed
    And I use the 0 button of RFX.TechnicalEvaluationTable
    And I click RFX.EvaluationArrow







    Examples:
      | RFXTitle    |
      | "TestRFX13" |