Feature: T014 VendorManager Nuovo Fornitore Italia "DITC - DIFFERENT SUPPLIERS/SUBAPP. CEE", supplier type= procurement , senza BVD
  Scenario Outline: T014 VendorManager Nuovo Fornitore Italia "DITC - DIFFERENT SUPPLIERS/SUBAPP. CEE", supplier type= procurement , senza BVD
    #FORME GIURIDICHE: 0= fornitori diversi/ 1 = pers giuridiche/ 2 = Professionisti/
#TIPOLOGIE FORNITORE:  0 = AFC/ 1 = PROCUREMENT / 2 = PROCUREMENT & QUALIFICA
    And I delete the supplier with <PartitaIva>

    Given I log_in NEW with username c.motta@reply.it and password CM.Webuild.003

    And I check that HomePage.NuovoFornitore is displayed
    And I click HomePage.NuovoFornitore
    And I go to the next frame
    And I check that NuovoFornitore.NazioneButton is displayed and enabled
    And Wait if it is loading
    And I wait 1 seconds
    And I click NuovoFornitore.NazioneButton
    And I check that NuovoFornitore.NazioneCerca is displayed
    And I input in NuovoFornitore.NazioneCerca the text 'Italy'
    And I click NuovoFornitore.Clessidra
    And I click NuovoFornitore.NazioneTrovata
    And I click NuovoFornitore.FormaGiuridicaButton
    And I select the 0 element from the DDL NuovoFornitore.ULFormeGiuridiche
    And I click NuovoFornitore.TipologiaFornitoreButton
    And I check that NuovoFornitore.ULTipologieFornitore is displayed
    And I select the 0 element from the DDL NuovoFornitore.ULTipologieFornitore
    And I input in NuovoFornitore.RagioneSociale the text <RagioneSociale>
    And I click NuovoFornitore.SearchInfoProviderButton
    And I check that NuovoFornitore.ULFornitoriTrovati is displayed
    #se si crea su un fornitore gia presente su npp, parte il controllo dei duplicati che porta
    #l'utente sulla schermata info-fornitore della bozza, faccio un log4j per questa situazione
    And I select the 0 element from the DDL NuovoFornitore.ULFornitoriTrovati
    And I click NuovoFornitore.Crea
    And I check that General.OKMessage is displayed
    And I click General.OKMessage
    And I wait 3 seconds

    #dopo che ho creato il fornitore in draft torno nella homepage
    And I switch to defaultContentFrame
    And I check that InfoFornitore.TornaIndietro is displayed and enabled
    And I click InfoFornitore.TornaIndietro
    And I check that HomePage.Fornitori is displayed
    And I click HomePage.Fornitori
    And I go to the next frame
    And I check that Fornitori.SearchBox is displayed and enabled
    And Wait if it is loading
    And I input in Fornitori.SearchBox the text <RagioneSociale>
    And I click Fornitori.SearchIcon
    And I check that Fornitori.SuppliersTableBody is displayed and enabled
    And I search the supplier <RagioneSociale> in the tbody Fornitori.SuppliersTableBody

#inizio ad editare l'anagrafica fornitore
    And Wait if it is loading
    And I click AnagraficaFornitore.LinguaggioButton
    And I check that AnagraficaFornitore.ULLinguaggio is displayed
    And I select the 0 element from the DDL AnagraficaFornitore.ULLinguaggio
    And I click AnagraficaFornitore.ValutaDiRiferimentoButton
    And I check that AnagraficaFornitore.ValutaDiRiferimentoCerca is displayed
    And I input in AnagraficaFornitore.ValutaDiRiferimentoCerca the text 'EUR'
    And I click AnagraficaFornitore.ValutaDiRiferimentoLente
    And I select the 0 element from the DDL AnagraficaFornitore.ValutaDiRiferimentoDDL
    And I input in AnagraficaFornitore.SitoWeb the text 'nomefornitore.com'
    And I scroll down

 #aggiungo una commodity
    And I check that AnagraficaFornitore.AggiungiCommodity is displayed
    And I click AnagraficaFornitore.AggiungiCommodity
    And I click AnagraficaFornitore.CommodityArrow
    And I check that InfoFornitore.ULCommodity is displayed
    And I select the 0 element from the DDL InfoFornitore.ULCommodity
    And I click AnagraficaFornitore.RegistraCommodity
    And Wait if it is loading
    And I check that General.OKMessage is displayed
    And I click General.OKMessage
    And Wait if it is loading
   # And I wait 3 seconds

#Aggiungo un progetto
    And I check that AnagraficaFornitore.AggiungiProgetti is displayed and enabled
    And I click AnagraficaFornitore.AggiungiProgetti
    And I click AnagraficaFornitore.ProgettoArrow
    And I check that InfoFornitore.ULProgetto is displayed
    And I select the 4 element from the DDL InfoFornitore.ULProgetto
    And I click AnagraficaFornitore.RegistraProgetto
    And Wait if it is loading
    And I check that General.OKMessage is displayed
    And I click General.OKMessage

    # Riparo ufficio operativo

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
    And I check that AnagraficaFornitore.NuovoContatto is displayed and enabled
    And I click AnagraficaFornitore.NuovoContatto
    And I input in AnagraficaFornitore.NomeContatto the text 'Marco'
    And I input in AnagraficaFornitore.CognomeContatto the text 'Rossi'
    And I input in AnagraficaFornitore.TelefonoContatto the text '348211499123'
    And I input in AnagraficaFornitore.EmailContatto the text 'emailcontatto@outlook.com'
    And I click AnagraficaFornitore.ArrowRuolo
    And I check that InfoFornitore.ULRuolo is displayed
    And I select the 0 element from the DDL InfoFornitore.ULRuolo
    And I click AnagraficaFornitore.ArrowTimezone
    And I select the 0 element from the DDL InfoFornitore.ULTimezone
    And I click AnagraficaFornitore.ArrowContattoPrimario
    And I select the 0 element from the DDL InfoFornitore.ULContattoPrimario
    And I click AnagraficaFornitore.SalvaContatto
    And I check that General.OKMessage is displayed
    And I click General.OKMessage
    And Wait if it is loading


# allego un file
    And I check that AnagraficaFornitore.AddDocumentButton is displayed
    And I click AnagraficaFornitore.AddDocumentButton
    And I click AnagraficaFornitore.AttachmentName
    And I input in AnagraficaFornitore.AttachmentName the text 'FileTest'
    And I check that AnagraficaFornitore.AttachmentDescription is displayed
    And I click AnagraficaFornitore.AttachmentDescription
    And I input in AnagraficaFornitore.AttachmentDescription the text 'File Test Allegato'
    And I check that AnagraficaFornitore.AttachmentFileName is displayed
    And I put the attachment cucumber.properties inside RFX.AttachmentField
    And I check that AnagraficaFornitore.AddButton is displayed
    And I click AnagraficaFornitore.AddButton
    And Wait if it is loading
    And I check that General.OKMessage is displayed
    And I click General.OKMessage
    And Wait if it is loading


  #invio della proposta e controllo Registered

    And I check that InfoFornitore.SubmitProposal is displayed and enabled
    And I click InfoFornitore.SubmitProposal
    And Wait if it is loading
    And I check that the element AnagraficaFornitore.StatusProposed contains the text 'Proposed'


              #ora devo inviare a compliance la proposta

    And I switch to defaultContentFrame
    And I check that General.Logo is displayed
    And I click General.Logo
    And Wait if it is loading
    And I check that HomePage.LaMiaInbox is displayed
    And I click HomePage.LaMiaInbox
    And I go to the next frame
    And I check that LaMiaInbox.DDLProposte is displayed
    And I select the 0 element from the DDL LaMiaInbox.DDLProposte
    And I check that LaMiaInbox.SendToCompliance is displayed
    And I click LaMiaInbox.SendToCompliance

    #Rientro in Fornitori per ritrovare l'elemento creato in precedenza

    And I check that HomePage.Fornitori is displayed
    And I click HomePage.Fornitori
    And I go to the next frame
    And I check that Fornitori.SearchBox is displayed
    And Wait if it is loading
    And I input in Fornitori.SearchBox the text <RagioneSociale>
    And I check that Fornitori.SearchIcon is displayed
    And I click Fornitori.SearchIcon
    And I check that Fornitori.SuppliersTableBody is displayed and enabled
    And I search the supplier <RagioneSociale> in the tbody Fornitori.SuppliersTableBody

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


 #aggiungo un progetto
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

# Aggiungo una Request Revoked

    And I check that AnagraficaFornitore.RequestsTab is displayed
    And I click AnagraficaFornitore.RequestsTab
    And I check that AnagraficaFornitore.AddRequestButton is displayed
    And I click AnagraficaFornitore.AddRequestButton
    And I check that AnagraficaFornitore.AddRequestArrow is displayed
    And I click AnagraficaFornitore.AddRequestArrow
    And I check that AnagraficaFornitore.AddRequestUL is displayed
    And I select the 5 element from the DDL AnagraficaFornitore.AddRequestUL
    And I check that AnagraficaFornitore.ReasonRevokedArrow is displayed
    And I click AnagraficaFornitore.ReasonRevokedArrow
    And I check that AnagraficaFornitore.ReasonRevokedUL is displayed
    And I select the 0 element from the DDL AnagraficaFornitore.ReasonRevokedUL
    And I check that AnagraficaFornitore.RevokedNotes is displayed
    And I input in AnagraficaFornitore.RevokedNotes the text 'Prova007'
    And I check that AnagraficaFornitore.RevokedProject is displayed
    And I input in AnagraficaFornitore.RevokedProject the text 'Koysha'
    And I click AnagraficaFornitore.RevokedNotes
    And I check that AnagraficaFornitore.RevokedAddButton is displayed
    And I click AnagraficaFornitore.RevokedAddButton
    And I check that AnagraficaFornitore.EnterProjectUL is displayed
    And I select the 0 element from the DDL AnagraficaFornitore.EnterProjectUL
    And I check that AnagraficaFornitore.RevokedCommodityButton is displayed
    And I click AnagraficaFornitore.RevokedCommodityButton
    And I check that AnagraficaFornitore.RevokedCommodityUL is displayed
    And I select the 0 element from the DDL AnagraficaFornitore.RevokedCommodityUL
    And I put the attachment we-html inside AnagraficaFornitore.RevokedFile
    And I check that General.OKMessage is displayed
    And I click General.OKMessage

          #ora devo accettare la proposta
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
    And I wait 3 seconds

               #dopo che ho Accettato la Richiesta torno in homepage

    And I switch to defaultContentFrame
    And I click General.BackToHome

        #Rientro in Fornitori per ritrovare l'elemento creato in precedenza

    And I check that HomePage.Fornitori is displayed
    And I click HomePage.Fornitori
    And I go to the next frame
    And I check that Fornitori.SearchBox is displayed
    And Wait if it is loading
    And I input in Fornitori.SearchBox the text <RagioneSociale>
    And I check that Fornitori.SearchIcon is displayed
    And I click Fornitori.SearchIcon
    And I check that Fornitori.SuppliersTableBody is displayed and enabled
    And I search the supplier <RagioneSociale> in the tbody Fornitori.SuppliersTableBody

    # Check Finale Su Request

    And I wait 2 seconds
    And I check that AnagraficaFornitore.RequestsTab is displayed
    And I click AnagraficaFornitore.RequestsTab
    And I check that the element AnagraficaFornitore.ApprovedCheck contains the text 'Approved'


    Examples:
      | PartitaIva    | RagioneSociale  |
      | "14292621001" | "HP S.R.L."     |


