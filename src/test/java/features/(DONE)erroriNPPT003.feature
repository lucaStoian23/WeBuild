Feature: T003 VendorManager Nuovo Fornitore Italiano, AFC, GITC PROFESSIONISTI, SENZA BVD, TORNA INDIETRO
  Scenario Outline: T003 VendorManager Nuovo Fornitore
    #FORME GIURIDICHE: 0= fornitori diversi/ 1 = pers giuridiche/ 2 = Professionisti/
#TIPOLOGIE FORNITORE:  0 = AFC/ 1 = PROCUREMENT / 2 = PROCUREMENT & QUALIFICA
    And I delete the supplier with <RagioneSociale>

    Given I log_in NEW with username c.motta@reply.it and password CM.Webuild.003

    And I check that HomePage.NuovoFornitore is displayed
    And I click HomePage.NuovoFornitore
    And I go to the next frame
    And I check that NuovoFornitore.NazioneButton is displayed and enabled
    And Wait if it is loading
      #And I wait 2 seconds
    And I check that NuovoFornitore.NazioneButton is displayed
    And I click NuovoFornitore.NazioneButton
    And Wait if it is loading
    And I check that NuovoFornitore.NazioneCerca is displayed
    And I input in NuovoFornitore.NazioneCerca the text 'Italy'
    And Wait if it is loading
    And I click NuovoFornitore.Clessidra
    And Wait if it is loading
    And I click NuovoFornitore.NazioneTrovata
    And I click NuovoFornitore.FormaGiuridicaButton
    And I select the 2 element from the DDL NuovoFornitore.ULFormeGiuridiche
    And I click NuovoFornitore.TipologiaFornitoreButton
    And I check that NuovoFornitore.ULTipologieFornitore is displayed
    And I select the 0 element from the DDL NuovoFornitore.ULTipologieFornitore
#    And I input in NuovoFornitore.RagioneSociale the text <RagioneSociale>
    And I input in NuovoFornitore.Nome the text <Nome>
    And I input in NuovoFornitore.Surname the text <Cognome>
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
#    And Wait if it is loading
#    And I check that General.OKMessage is displayed
#    And I click General.OKMessage
    And Wait if it is loading
    And I wait 3 seconds
#dopo che ho creato il fornitore in draft
  # torno nella homepage
    And I switch to defaultContentFrame
    And Wait if it is loading
    And I check that InfoFornitore.TornaIndietro is displayed and enabled
    And Wait if it is loading
    And I click InfoFornitore.TornaIndietro
    And I check that HomePage.Fornitori is displayed
    And I click HomePage.Fornitori
    And I go to the next frame
    And I check that Fornitori.SearchBox is displayed and enabled
    And Wait if it is loading
    #And I wait 2 seconds
    And I input in Fornitori.SearchBox the text <Nome>
    And I click Fornitori.SearchIcon
    And I check that Fornitori.SuppliersTableBody is displayed and enabled
    #And I search the supplier <Nome> in the tbody Fornitori.SuppliersTableBody
    And Click the supplier that contains the text <Nome> in the tbody Fornitori.SuppliersTableBody

#inizio ad editare l'anagrafica fornitore
    And Wait if it is loading
    #And I wait 2 seconds
    And I click AnagraficaFornitore.LinguaggioButton
    And I check that AnagraficaFornitore.ULLinguaggio is displayed
    And I select the 0 element from the DDL AnagraficaFornitore.ULLinguaggio
    And I click AnagraficaFornitore.ValutaDiRiferimentoButton
    And I check that AnagraficaFornitore.ValutaDiRiferimentoCerca is displayed
    And I input in AnagraficaFornitore.ValutaDiRiferimentoCerca the text 'EUR'
    And I click AnagraficaFornitore.ValutaDiRiferimentoLente
    And I select the 0 element from the DDL AnagraficaFornitore.ValutaDiRiferimentoDDL
    And I input in AnagraficaFornitore.SitoWeb the text 'nomefornitore.com'
    And I click AnagraficaFornitore.DatePicker
    And I check that AnagraficaFornitore.Date is displayed
    And I click AnagraficaFornitore.Date
    And I check that AnagraficaFornitore.LuogoDiNascita is displayed
    And I input in AnagraficaFornitore.LuogoDiNascita the text 'Busto arsizio'
    And I check that AnagraficaFornitore.ArrowSesso is displayed
    And I click AnagraficaFornitore.ArrowSesso
    And I select the 0 element from the DDL AnagraficaFornitore.ULsesso
    And I click AnagraficaFornitore.ProvinciaDiNascitaButton
    And I check that AnagraficaFornitore.ULprovincia is displayed
    And I select the 0 element from the DDL AnagraficaFornitore.ULprovincia
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
    And I select the 0 element from the DDL InfoFornitore.ULProgetto
    And I click AnagraficaFornitore.RegistraProgetto
    And Wait if it is loading
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

    #Aggiungo l'ufficio operativo
    And I check that AnagraficaFornitore.NuovoUfficioOperativo is displayed and enabled
    And I click AnagraficaFornitore.NuovoUfficioOperativo
    And I input in AnagraficaFornitore.NomeUfficioOperativo the text 'Nome Ufficio Operativo'
    And I click AnagraficaFornitore.TipoIndirizzoArrow
    And I check that AnagraficaFornitore.ULTipoIndirizzo is displayed
    And I select the 1 element from the DDL AnagraficaFornitore.ULTipoIndirizzo
    And I click AnagraficaFornitore.NazioneButton

   #devo prendere una country italiana
    And I check that AnagraficaFornitore.CreateOperationOficeSerachInputField is displayed
    And I input in AnagraficaFornitore.CreateOperationOficeSerachInputField the text 'ITALY'
    And I click AnagraficaFornitore.CreateOperationOficeSerachLenteIngradimento
    And I select the 0 element from the DDL AnagraficaFornitore.ULNazione
    And I input in AnagraficaFornitore.Indirizzo the text 'nomeIndirizzo'
    And I input in AnagraficaFornitore.CodicePostale the text '21052'
    And I input in AnagraficaFornitore.Citta the text 'Busto Arsizio'
    And I wait 1 seconds
    And I click AnagraficaFornitore.ProvinciaButton
    And I select the 0 element from the DDL AnagraficaFornitore.ULProvincia
    And I click AnagraficaFornitore.SalvaUfficioOperativo
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


    #invio della proposta e controllo registrato AFC

    And I check that AnagraficaFornitore.InviaProposta is displayed and enabled
    And I click AnagraficaFornitore.InviaProposta
    And Wait if it is loading
    And I check that the element AnagraficaFornitore.Status contains the text 'Registered AFC'

        #dopo che ho creato il fornitore in draft torno nella homepage

    And I switch to defaultContentFrame
    And I click General.BackToHome

        #Rientro in Fornitori per ritrovare l'elemento creato in precedenza

    And I check that HomePage.Fornitori is displayed
    And I click HomePage.Fornitori
    And I go to the next frame
    And I check that Fornitori.SearchBox is displayed
    And Wait if it is loading
    #And I wait 2 seconds
    And I input in Fornitori.SearchBox the text <RagioneSociale>
    And I check that Fornitori.SearchIcon is displayed
    And I click Fornitori.SearchIcon
    And I check that Fornitori.SuppliersTableBody is displayed and enabled
    And I search the supplier <RagioneSociale> in the tbody Fornitori.SuppliersTableBody

       #Modifico gli elementi in anagrafica
    And Wait if it is loading
     # And I wait 2 seconds
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


  #And I check that AnagraficaFornitore.TabCommodityAndProject is displayed
  #And I click AnagraficaFornitore.TabCommodityAndProject
  #And I check that AnagraficaFornitore.AggiungiCommodityTabCommodity is displayed
  #And I click AnagraficaFornitore.AggiungiCommodityTabCommodity
  #And I click OperationalOffices.AddCommoditiesArrow
  #And I select the 0 element from the DDL OperationalOffices.CommoditiesUL
  #And I click OperationalOffices.CommoditiesRegister
  #And I check that General.OKMessage is displayed
  #And I click General.OKMessage


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
    #And I wait 1 seconds
    And I click AnagraficaFornitore.CurrencyArrow
    And I select the 0 element from the DDL AnagraficaFornitore.CurrencyUL
    And I click AnagraficaFornitore.EvaluationYear
    And Wait if it is loading
   # And I wait 1 seconds
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




    Examples:
      | CodiceFiscale       | PartitaIvaCEE | PartitaIva      | RagioneSociale     | Nome    | Cognome|
      | "STFSLA41A73AB5h9Z" | ""            | "008611109480"  | "Camilla Pepca"    |  "Pepca" |"Camilla"  |

