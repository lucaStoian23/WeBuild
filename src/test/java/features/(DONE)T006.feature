Feature: T006 VendorManager Nuovo Fornitore Italia GITC - PROFES. PERS. GIUR. and supplier type = account and finance, SENZA BVD

  Scenario Outline: T006 VendorManager Nuovo Fornitore
    #FORME GIURIDICHE: 0= fornitori diversi/ 1 = pers giuridiche/ 2 = Professionisti/
#TIPOLOGIE FORNITORE:  0 = AFC/ 1 = PROCUREMENT / 2 = PROCUREMENT & QUALIFICA

    And I delete the supplier with <RagioneSociale>

    Given I log_in NEW with username c.motta@reply.it and password CM.Webuild.003

    And I check that HomePage.NuovoFornitore is displayed
    And I click HomePage.NuovoFornitore
    And I go to the next frame
    And I check that NuovoFornitore.NazioneButton is displayed and enabled
    And I wait 1 seconds
    And I click NuovoFornitore.NazioneButton
    And I input in NuovoFornitore.NazioneCerca the text 'Italy'
    And I click NuovoFornitore.Clessidra
    And I click NuovoFornitore.NazioneTrovata
    And I click NuovoFornitore.FormaGiuridicaButton
    And I check that NuovoFornitore.ULFormeGiuridiche is displayed
    And I select the 1 element from the DDL NuovoFornitore.ULFormeGiuridiche
    And I click NuovoFornitore.TipologiaFornitoreButton
    And I check that NuovoFornitore.ULTipologieFornitore is displayed
    And I select the 0 element from the DDL NuovoFornitore.ULTipologieFornitore
    And I input in NuovoFornitore.RagioneSociale the text <RagioneSociale>
    And I click NuovoFornitore.SearchInfoProviderButton
    And Wait if it is loading
    And I check that NuovoFornitore.ULFornitoriTrovati is displayed
    And I select the 0 element from the DDL NuovoFornitore.ULFornitoriTrovati
    #se si crea su un fornitore gia presente su npp, parte il controllo dei duplicati che porta
    #l'utente sulla schermata info-fornitore della bozza, faccio un log4j per questa situazione
    And I click NuovoFornitore.Crea
    And I check that General.OKMessage is displayed
    And I click General.OKMessage

    #inizio ad editare l'anagrafica fornitore
    And Wait if it is loading
    And I check that InfoFornitore.LinguaggioButton is displayed
    And I click InfoFornitore.LinguaggioButton
    And I check that InfoFornitore.ULLinguaggio is displayed
    And I select the 0 element from the DDL InfoFornitore.ULLinguaggio
    And I click InfoFornitore.ValutaDiRiferimentoButton
    And I check that InfoFornitore.ValutaDiRiferimentoCerca is displayed
    And I input in InfoFornitore.ValutaDiRiferimentoCerca the text 'EUR'
    And I click InfoFornitore.ValutaDiRiferimentoLente
    And I select the 0 element from the DDL InfoFornitore.ValutaDiRiferimentoDDL
    And I check that InfoFornitore.SitoWeb is displayed
    And I input in InfoFornitore.SitoWeb the text 'nomefornitore.com'
    And I scroll down

    #aggiungo una commodity
    And I check that InfoFornitore.AggiungiCommodity is displayed
    And I click InfoFornitore.AggiungiCommodity
    And I click InfoFornitore.CommodityArrow
    And I check that InfoFornitore.ULCommodity is displayed
    And I select the 0 element from the DDL InfoFornitore.ULCommodity
    And I click InfoFornitore.RegistraCommodity
    And Wait if it is loading
    And I check that General.OKMessage is displayed
    And I click General.OKMessage

    #Aggiungo un progetto
    And I check that InfoFornitore.AggiungiProgetti is displayed and enabled
    And I click InfoFornitore.AggiungiProgetti
    And I click InfoFornitore.ProgettoArrow
    And I check that InfoFornitore.ULProgetto is displayed
    And I select the 0 element from the DDL InfoFornitore.ULProgetto
    And I click InfoFornitore.RegistraProgetto
    And Wait if it is loading
    And I check that General.OKMessage is displayed
    And I click General.OKMessage

    #Aggiungo l'ufficio operativo
    And I check that InfoFornitore.Matita is displayed
    And I click InfoFornitore.Matita
    And I wait 2 seconds
    And I check that InfoFornitore.ProvinciaButton is displayed
    And I click InfoFornitore.ProvinciaButton
    And I check that InfoFornitore.ULProvincia is displayed
    And I select the 0 element from the DDL InfoFornitore.ULProvincia
    And I check that InfoFornitore.Salva is displayed
    And I click InfoFornitore.Salva
    And I check that General.OKMessage is displayed
    And I click General.OKMessage

    #creo il contatto primario
    And I check that InfoFornitore.NuovoContatto is displayed and enabled
    And I click InfoFornitore.NuovoContatto
    And I input in InfoFornitore.NomeContatto the text 'Marco'
    And I input in InfoFornitore.CognomeContatto the text 'Rossi'
    And I input in InfoFornitore.TelefonoContatto the text '348211499123'
    And I input in InfoFornitore.EmailContatto the text 'emailcontatto@outlook.com'
    And I click InfoFornitore.ArrowRuolo
    And I check that InfoFornitore.ULRuolo is displayed
    And I select the 0 element from the DDL InfoFornitore.ULRuolo
    And I click InfoFornitore.ArrowTimezone
    And I select the 0 element from the DDL InfoFornitore.ULTimezone
    And I click InfoFornitore.ArrowContattoPrimario
    And I select the 0 element from the DDL InfoFornitore.ULContattoPrimario
    And I click InfoFornitore.SalvaContatto
    And I check that General.OKMessage is displayed
    And I click General.OKMessage
    And Wait if it is loading

    # allego un file
    And I check that InfoFornitore.AddDocumentButton is displayed
    And I click InfoFornitore.AddDocumentButton
    And I click InfoFornitore.AttachmentName
    And I input in InfoFornitore.AttachmentName the text 'FileTest'
    And I check that InfoFornitore.AttachmentDescription is displayed
    And I click InfoFornitore.AttachmentDescription
    And I input in InfoFornitore.AttachmentDescription the text 'File Test Allegato'
    And I check that InfoFornitore.AttachmentFileName is displayed
    And I put the attachment cucumber.properties inside RFX.AttachmentField
    And I check that InfoFornitore.AddButton is displayed
    And I click InfoFornitore.AddButton
    And Wait if it is loading
    And I check that General.OKMessage is displayed
    And I click General.OKMessage
    And Wait if it is loading

    #invio la proposta
    And I check that InfoFornitore.SubmitProposal is displayed and enabled
    And I click InfoFornitore.SubmitProposal
    And Wait if it is loading
    And I check that the element AnagraficaFornitore.StatusRegisteredAFC contains the text 'Registered AFC'
    #errore manca fornitore cee
    #step 15 non presente il tap Eco-fincancial non si procede

    #dopo che ho creato il fornitore in draft torno nella homepage
    And I switch to defaultContentFrame
    And I click General.BackToHome

    #Rientro in Fornitori per ritrovare l'elemento creato in precedenza
    And I check that HomePage.Fornitori is displayed
    And I click HomePage.Fornitori
    And I go to the next frame
    And I check that Fornitori.SearchBox is displayed
    And I input in Fornitori.SearchBox the text <RagioneSociale>
    And I check that Fornitori.SearchIcon is displayed
    And I click Fornitori.SearchIcon
    And I check that Fornitori.SuppliersTableBody is displayed and enabled
    And I search the supplier <RagioneSociale> in the tbody Fornitori.SuppliersTableBody

    #Modifico gli elementi in anagrafica
    And I check that AnagraficaFornitore.TabContact is displayed
    And I click AnagraficaFornitore.TabContact
    And I wait 3 seconds
    And I scroll down
    And I check that AnagraficaFornitore.NuovoContattoTabContact is displayed
    And I click AnagraficaFornitore.NuovoContattoTabContact
    And I wait 3 seconds
    And I check that AnagraficaFornitore.NomeContatto is displayed
    And I input in AnagraficaFornitore.NomeContatto the text 'paolo'
    And I input in AnagraficaFornitore.CognomeContatto the text 'bianchi'
    And I input in AnagraficaFornitore.TelefonoContatto the text '742421499123'
    And I input in AnagraficaFornitore.EmailContatto the text 'emailcontatto3@outlook.com'
    And I check that AnagraficaFornitore.ArrowRuolo is displayed
    And I click AnagraficaFornitore.ArrowRuolo
    And I select the 0 element from the DDL AnagraficaFornitore.ULRuolo
    And I click AnagraficaFornitore.ArrowTimezone
    And I select the 13 element from the DDL AnagraficaFornitore.ULTimezone
    And I click AnagraficaFornitore.SalvaContatto
    And I click General.OKMessage
    And Wait if it is loading

    #aggiungo una commodity
    And I check that AnagraficaFornitore.TabCommodityAndProject is displayed
    And I wait 3 seconds
    And I scroll down
    And I click AnagraficaFornitore.TabCommodityAndProject
    And I check that AnagraficaFornitore.AggiungiCommodityTabCommodity is displayed
    And I click AnagraficaFornitore.AggiungiCommodityTabCommodity
    And I click OperationalOffices.AddCommoditiesArrow
    And I select the 1 element from the DDL OperationalOffices.CommoditiesUL
    And I click OperationalOffices.CommoditiesRegister
    And I check that General.OKMessage is displayed
    And I click General.OKMessage

   #aggiungo un progetto
    And I check that AnagraficaFornitore.TabCommodityAndProject is displayed
    And I wait 3 seconds
    And I scroll down
    And I check that AnagraficaFornitore.AggiungiProgettiTabCommodity is displayed
    And I click AnagraficaFornitore.AggiungiProgettiTabCommodity
    And I click OperationalOffices.AddProjectArrow
    And I check that OperationalOffices.ProjectUL is displayed
    And I select the 1 element from the DDL OperationalOffices.ProjectUL
    And I click OperationalOffices.ProjectRegister
    And Wait if it is loading
    And I check that General.OKMessage is displayed
    And I click General.OKMessage
    And Wait if it is loading

    # allego un file
    And I check that AnagraficaFornitore.AttachmentsTab is displayed
    And I click AnagraficaFornitore.AttachmentsTab
    And I scroll down
    And I wait 3 seconds
    And I check that AnagraficaFornitore.AddDocumentButtonUpdate is displayed
    And I click AnagraficaFornitore.AddDocumentButtonUpdate
    And I click AnagraficaFornitore.AttachmentName
    And I input in AnagraficaFornitore.AttachmentName the text 'FileTest'
    And I check that AnagraficaFornitore.AttachmentDescription is displayed
    And I click AnagraficaFornitore.AttachmentDescription
    And I input in AnagraficaFornitore.AttachmentDescription the text 'File Test Allegato'
    And I check that AnagraficaFornitore.AttachmentFileName is displayed
    And I put the attachment pdf-config.yaml inside RFX.AttachmentField
    And I check that AnagraficaFornitore.AddButton is displayed
    And I click AnagraficaFornitore.AddButton
    And Wait if it is loading
    And I check that General.OKMessage is displayed
    And I click General.OKMessage
    And Wait if it is loading

    # Aggiorno i dati Echo Finance
    And I check that AnagraficaFornitore.EcoFinanceTab is displayed and enabled
    And I click AnagraficaFornitore.EcoFinanceTab
    And I wait 3 seconds
    And I scroll down
    And I check that AnagraficaFornitore.EchoFinanceUpdateButton is displayed
    And I click AnagraficaFornitore.EchoFinanceUpdateButton
    And I check that AnagraficaFornitore.EchoFinanceUpdateButtonManually is displayed
    And I click AnagraficaFornitore.EchoFinanceUpdateButtonManually
    And I check that AnagraficaFornitore.EvaluationYear is displayed
    And I click AnagraficaFornitore.CurrencyArrow
    And Wait if it is loading
    And I select the 0 element from the DDL AnagraficaFornitore.CurrencyUL
    And I click AnagraficaFornitore.EvaluationYear
    And Wait if it is loading
    And I input in AnagraficaFornitore.EvaluationYear the text '2021' without clear
    And I check that AnagraficaFornitore.IncomeOperationsLastAvailableYear is displayed
    And I input in AnagraficaFornitore.IncomeOperationsLastAvailableYear the text '500000'
    And I check that AnagraficaFornitore.IncomeOperationsYear1 is displayed
    And I input in AnagraficaFornitore.IncomeOperationsYear1 the text '10000'
    And I check that AnagraficaFornitore.IncomeOperationsYear2 is displayed
    And I input in AnagraficaFornitore.IncomeOperationsYear2 the text '20000'
    And I check that AnagraficaFornitore.EBITDALastAvailableYear is displayed
    And I input in AnagraficaFornitore.EBITDALastAvailableYear the text '20000'
    And I check that AnagraficaFornitore.EBITDAYear1 is displayed
    And I input in AnagraficaFornitore.EBITDAYear1 the text '10000'
    And I check that AnagraficaFornitore.EBITDAYear2 is displayed
    And I input in AnagraficaFornitore.EBITDAYear2 the text '30000'
    And I check that AnagraficaFornitore.EBITDAMarginLastAvailableYear is displayed
    And I input in AnagraficaFornitore.EBITDAMarginLastAvailableYear the text '40000'
    And I check that AnagraficaFornitore.EBITDAMarginYear1 is displayed
    And I input in AnagraficaFornitore.EBITDAMarginYear1 the text '40000'
    And I check that AnagraficaFornitore.EBITDAMarginYear2 is displayed
    And I input in AnagraficaFornitore.EBITDAMarginYear2 the text '40000'
    And I check that AnagraficaFornitore.SaveButton is displayed
    And I click AnagraficaFornitore.SaveButton
    And I check that General.OKMessage is displayed
    And I click General.OKMessage
    And Wait if it is loading

    #devo fargli una richiesta di cambio stato afc proc
    #0=cessato,1=duplicato,2=fallito,3=afc>proc,4=derogaRFX,5=incorporato,6=modificheVM,7=revocato,8=sospeso
    And I check that AnagraficaFornitore.RequestsTab is displayed
    And I click AnagraficaFornitore.RequestsTab
    And I wait 3 seconds
    And I scroll down
    And I check that AnagraficaFornitore.AddRequestButton is displayed
    And I click AnagraficaFornitore.AddRequestButton
    And I check that AnagraficaFornitore.AddRequestArrow is displayed
    And I click AnagraficaFornitore.AddRequestArrow
    And I check that AnagraficaFornitore.AddRequestUL is displayed
    And I select the 5 element from the DDL AnagraficaFornitore.AddRequestUL
    And I click AnagraficaFornitore.AddRequestNotes
    And I input in AnagraficaFornitore.AddRequestNotes the text 'ProvaTest'
    And I wait 3 seconds
    And I check that AnagraficaFornitore.AddRequestEnterProject is displayed
    And I input in AnagraficaFornitore.AddRequestEnterProject the text 'Koysha'
    And I click AnagraficaFornitore.AddRequestNotes
    And I check that AnagraficaFornitore.EnterProjectUL is displayed
    And I select the 0 element from the DDL AnagraficaFornitore.EnterProjectUL
    And I check that AnagraficaFornitore.AddRequestCommodityButton is displayed
    And I click AnagraficaFornitore.AddRequestCommodityButton
    And I check that AnagraficaFornitore.AddRequestCommodiryUL is displayed
    And I select the 4 element from the DDL AnagraficaFornitore.AddRequestCommodiryUL
    And I check that AnagraficaFornitore.AddRequestAddButton is displayed
    And I click AnagraficaFornitore.AddRequestAddButton
    And Wait if it is loading
    And I check that General.OKMessage is displayed
    And I click General.OKMessage
    And Wait if it is loading

   #ora aspetto devo approvare la richiesta, devo approvarla usando tantissimi account diversi.
   #torno nella homepage
#    And I switch to defaultContentFrame
#    And I click General.Logo
#   #apro tile MyInbox e approvo la richiesta di cambio stato
#    And I click HomePage.LaMiaInbox
#    And I wait 30 seconds
#    And I go to the next frame
#    And I select the 0 element from the DDL LaMiaInbox.DDLProposte
#    And I check that LaMiaInbox.Approve is displayed and enabled
#    And I click LaMiaInbox.Approve
#    And I wait 30 seconds
    #torno nella vendor List
#    And I switch to defaultContentFrame
#    And I click General.logo
#    And I wait 5 seconds
#    And I click HomePage.Fornitori
#    And I wait 10 seconds
#    And I go to the next frame
#    And I input in Fornitori.SearchBox the text <RagioneSociale>
#    And I check that Fornitori.SearchIcon is displayed
#    And I click Fornitori.SearchIcon
#    And Wait if it is loading
#    And I check that Fornitori.SuppliersTableBody is displayed and enabled
#    And I search the supplier <RagioneSociale> in the tbody Fornitori.SuppliersTableBody
#    And Wait if it is loading
#    And I go to the next frame

    # Check Finale Su Request
    And I wait 2 seconds
    And I check that AnagraficaFornitore.RequestsTab is displayed
    And I click AnagraficaFornitore.RequestsTab
    And I check that the element AnagraficaFornitore.ApprovedCheck contains the text 'Approved'


    Examples:
      | PartitaIva    | RagioneSociale |
      | "08399370967" | "LENOVA SRL"   |
