Feature: T026 creazione fornitore procurement and qualification
  Scenario Outline: T026 creazione fornitore procurement and qualification

    And I delete the supplier with <PartitaIva>

    Given I log_in NEW with username c.motta@reply.it and password CM.Webuild.003


    And I check that HomePage.NuovoFornitore is displayed
    And I click HomePage.NuovoFornitore
    And I go to the next frame
    And Wait if it is loading
    And I wait 1 seconds
    And I check that NuovoFornitore.NazioneButton is displayed
    And I click NuovoFornitore.NazioneButton
    And I check that NuovoFornitore.NazioneCerca is displayed
    And I input in NuovoFornitore.NazioneCerca the text 'Italy'
    And I click NuovoFornitore.Clessidra
    And I click NuovoFornitore.NazioneTrovata
    And I click NuovoFornitore.FormaGiuridicaButton
    And I select the 0 element from the DDL NuovoFornitore.ULFormeGiuridiche
    And I click NuovoFornitore.TipologiaFornitoreButton
    And I check that NuovoFornitore.ULTipologieFornitore is displayed
    And I select the 2 element from the DDL NuovoFornitore.ULTipologieFornitore
    And I input in NuovoFornitore.RagioneSociale the text <RagioneSociale>
    And I click NuovoFornitore.SearchInfoProviderButton
    And Wait if it is loading
    And I check that NuovoFornitore.ULFornitoriTrovati is displayed
    #senza BVD
    And I click NuovoFornitore.Annulla
    #la partita iva deve essere un numero reale
    And I input in NuovoFornitore.PartitaIva the text <PartitaIva>
    And I input in NuovoFornitore.CodiceFiscale the text <CodiceFiscale>
    And I input in NuovoFornitore.PartitaIvaCEE the text <PartitaIvaCEE>
    And Wait if it is loading
    And I click NuovoFornitore.Crea
    And Wait if it is loading
    And I check that General.OKMessage is displayed
    And I click General.OKMessage
    And I wait 3 seconds

     #inizio ad editare l'anagrafica fornitore
    And Wait if it is loading
    And I click InfoFornitore.LinguaggioButton
    And I check that InfoFornitore.ULLinguaggio is displayed
    And I select the 0 element from the DDL InfoFornitore.ULLinguaggio
    And I click InfoFornitore.ValutaDiRiferimentoButton
    And I check that InfoFornitore.ValutaDiRiferimentoCerca is displayed
    And I input in InfoFornitore.ValutaDiRiferimentoCerca the text 'EUR'
    And I click InfoFornitore.ValutaDiRiferimentoLente
    And I select the 0 element from the DDL InfoFornitore.ValutaDiRiferimentoDDL
    And I wait 1 seconds
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

    #Aggiungo l'ufficio operativo
    And I check that InfoFornitore.NuovoUfficioOperativo is displayed and enabled
    And I click InfoFornitore.NuovoUfficioOperativo
    And I input in InfoFornitore.NomeUfficioOperativo the text 'Nome Ufficio Operativo'
    And I click AnagraficaFornitore.TipoIndirizzoArrow
    And I check that InfoFornitore.ULTipoIndirizzo is displayed
    And I select the 1 element from the DDL InfoFornitore.ULTipoIndirizzo
    And I click InfoFornitore.NazioneButton
    And I check that InfoFornitore.CreateOperationOficeSerachInputField is displayed
    And I input in InfoFornitore.CreateOperationOficeSerachInputField the text 'ITALY'
    And I click InfoFornitore.CreateOperationOficeSerachLenteIngradimento
    And I select the 0 element from the DDL InfoFornitore.ULNazione
    And I input in InfoFornitore.Indirizzo the text 'nomeIndirizzo'
    And I input in InfoFornitore.CodicePostale the text '21052'
    And I input in InfoFornitore.Citta the text 'Busto Arsizio'
    And I wait 1 seconds
    And I click InfoFornitore.ProvinciaButton
    And I select the 0 element from the DDL AnagraficaFornitore.ULProvincia
    And I click InfoFornitore.SalvaUfficioOperativo
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

  #invio della proposta e controllo registrato AFC
    And I check that InfoFornitore.SubmitProposal is displayed and enabled
    And I click InfoFornitore.SubmitProposal
    And Wait if it is loading
    And I check that the element AnagraficaFornitore.StatusRegisteredAFC contains the text 'Registered AFC'

    #Modifico gli elementi in anagrafica
    And Wait if it is loading
    And I check that AnagraficaFornitore.TabContact is displayed
    And I click AnagraficaFornitore.TabContact
    And I check that AnagraficaFornitore.NuovoContattoTabContact is displayed
    And I click AnagraficaFornitore.NuovoContattoTabContact
    And I check that AnagraficaFornitore.NomeContatto is displayed
    And I input in AnagraficaFornitore.NomeContatto the text 'paolo'
    And I input in AnagraficaFornitore.CognomeContatto the text 'bianchi'
    And I input in AnagraficaFornitore.TelefonoContatto the text '742421499123'
    And I input in AnagraficaFornitore.EmailContatto the text 'emailcontatto3@outlook.com'
    And I check that AnagraficaFornitore.ArrowRuolo is displayed
    And I click AnagraficaFornitore.ArrowRuolo
    And I select the 0 element from the DDL InfoFornitore.ULRuolo
    And I click AnagraficaFornitore.ArrowTimezone
    And I select the 13 element from the DDL InfoFornitore.ULTimezone
    And I click AnagraficaFornitore.SalvaContatto
    And Wait if it is loading
    And I check that General.OKMessage is displayed
    And I click General.OKMessage
    And Wait if it is loading

     #aggiungo una commodity


    And I check that AnagraficaFornitore.TabCommodityAndProject is displayed
    And I click AnagraficaFornitore.TabCommodityAndProject
    And I check that AnagraficaFornitore.AggiungiCommodityTabCommodity is displayed
    And I click AnagraficaFornitore.AggiungiCommodityTabCommodity
    And I click OperationalOffices.AddCommoditiesArrow
    And I select the 2 element from the DDL OperationalOffices.CommoditiesUL
    And I click OperationalOffices.CommoditiesRegister
    And I check that General.OKMessage is displayed
    And I click General.OKMessage


 #aggiungo un progetto (aggiungere PRJ non in lista al momento)
    And I check that AnagraficaFornitore.TabCommodityAndProject is displayed
    And I click AnagraficaFornitore.TabCommodityAndProject
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

      # Aggiungo un secondo ufficio operativo
    And I check that AnagraficaFornitore.OperationalOfficesTab is displayed
    And I click AnagraficaFornitore.OperationalOfficesTab
    And I check that AnagraficaFornitore.AddOperationalOfficesButton is displayed
    And I click AnagraficaFornitore.AddOperationalOfficesButton
    And I check that AnagraficaFornitore.OperationsOfficeName is displayed
    And I input in AnagraficaFornitore.OperationsOfficeName the text 'Test Secondo Ufficio operativo'
    And I check that AnagraficaFornitore.AddressTypeArrow is displayed
    And I click AnagraficaFornitore.AddressTypeArrow
    And I check that AnagraficaFornitore.AddressTypeUL is displayed
    And I select the 3 element from the DDL OperationalOffices.AddressTypeUL
    And I check that AnagraficaFornitore.CountryButton is displayed
    And I click AnagraficaFornitore.CountryButton
    And I check that AnagraficaFornitore.CountrySearch is displayed
    And I input in AnagraficaFornitore.CountrySearch the text 'Italy'
    And I check that AnagraficaFornitore.CountryLents is displayed
    And I click AnagraficaFornitore.CountryLents
    And I check that AnagraficaFornitore.CountryUL is displayed
    And I select the 0 element from the DDL OperationalOffices.CountryUL
    And I check that AnagraficaFornitore.Address is displayed
    And I input in AnagraficaFornitore.Address the text 'Via Delle Rose 58'
    And I check that AnagraficaFornitore.PostalCode is displayed
    And I input in AnagraficaFornitore.PostalCode the text '90100'
    And I check that AnagraficaFornitore.City is displayed
    And I input in AnagraficaFornitore.City the text 'Palermo'
    And I check that AnagraficaFornitore.ProvinceButton is displayed
    And I click AnagraficaFornitore.ProvinceButton
    And I check that AnagraficaFornitore.ProvinceUL is displayed
    And I select the 56 element from the DDL OperationalOffices.ProvinceUL
    And I check that AnagraficaFornitore.OperetionsOfficeSave is displayed
    And I click AnagraficaFornitore.OperetionsOfficeSave
    And Wait if it is loading
    And I check that General.OKMessage is displayed
    And I click General.OKMessage
    And Wait if it is loading


    # allego un file
    And I check that AnagraficaFornitore.AttachmentsTab is displayed
    And I click AnagraficaFornitore.AttachmentsTab
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


    # Aggiungo i dati ad Eco Finance
    And I check that AnagraficaFornitore.EcoFinanceTab is displayed and enabled
    And I click AnagraficaFornitore.EcoFinanceTab
    And I check that AnagraficaFornitore.EcoFinanceAddData is displayed and enabled
    And I click AnagraficaFornitore.EcoFinanceAddData
    And I check that AnagraficaFornitore.EvaluationYear is displayed
    And I check that AnagraficaFornitore.CurrencyArrow is displayed
    And Wait if it is loading
    And I click AnagraficaFornitore.CurrencyArrow
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

     #ora devo Fare send To compliance alla proposta
    And I switch to defaultContentFrame
    And I check that General.Logo is displayed
    And I click General.Logo
    And I check that HomePage.LaMiaInbox is displayed
    And I click HomePage.LaMiaInbox
    And I go to the next frame
    And I check that LaMiaInbox.DDLProposte is displayed
    And I select the 0 element from the DDL LaMiaInbox.DDLProposte
    And I check that LaMiaInbox.SendToCompliance is displayed and enabled
    And I click LaMiaInbox.SendToCompliance

    #ora devo accettare la proposta
      # usando account compliance aggiungere il permesso ad account seguente
        # oppure sloggare e riloggare con eventuale account compliance

    And I switch to defaultContentFrame
    And I check that General.Logo is displayed
    And I click General.Logo
    And Wait if it is loading
    And I check that HomePage.LaMiaInbox is displayed
    And I click HomePage.LaMiaInbox
    And I go to the next frame
    And I check that LaMiaInbox.DDLProposte is displayed
    And I select the 0 element from the DDL LaMiaInbox.DDLProposte
    And I check that LaMiaInbox.Approve is displayed
    And I click LaMiaInbox.Approve


    Examples:
      | CodiceFiscale       | PartitaIvaCEE | PartitaIva      | RagioneSociale     |
      | "STFSLA41A73AB5h9Z" | ""            | "009341609460"  | "TestVendor26"     |