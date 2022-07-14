Feature: T005 VendorManager Nuovo Fornitore Italia GITC - PROFES. PERS. GIUR. and supplier type = account and finance

 Scenario Outline: T005 VendorManager Nuovo Fornitore
    #FORME GIURIDICHE: 0= fornitori diversi/ 1 = pers giuridiche/ 2 = Professionisti/
   #TIPOLOGIE FORNITORE:  0 = AFC/ 1 = PROCUREMENT / 2 = PROCUREMENT & QUALIFICA

  And I delete the supplier with <RagioneSociale>

  Given I log_in NEW with username c.motta@reply.it and password CM.Webuild.003

  And I check that HomePage.NuovoFornitore is displayed
  And I click HomePage.NuovoFornitore
  And I go to the next frame
  And I check that NuovoFornitore.NazioneButton is displayed and enabled
  And Wait if it is loading
  And I click NuovoFornitore.NazioneButton
  And I check that NuovoFornitore.NazioneCerca is displayed
  And I input in NuovoFornitore.NazioneCerca the text 'Italy'
  And I click NuovoFornitore.Clessidra
  And I click NuovoFornitore.NazioneTrovata
  And I click NuovoFornitore.FormaGiuridicaButton
  And I select the 1 element from the DDL NuovoFornitore.ULFormeGiuridiche
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

  # Salvo PIVA
  # And I save the PIva from AnagraficaFornitore.PartitaIVASalva

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

#Riparo ufficio operativo
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


#allego un file
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

#dopo che ho creato il fornitore in draft torno nella homepage
  And I switch to defaultContentFrame
  And I click General.BackToHome

#dopo che ho creato il fornitore in draft torno nella homepage
  And I switch to defaultContentFrame
  And I click InfoFornitore.TornaIndietro
  And I wait 3 seconds
  And I click HomePage.Fornitori
  And I wait 3 seconds
  And I go to the next frame
  And I input in Fornitori.SearchBox the text <RagioneSociale>
  And I click Fornitori.SearchIcon
  And I wait 2 seconds
  And I search the supplier <RagioneSociale> in the tbody Fornitori.SuppliersTableBody
  And I wait 2 seconds
  #And I go to the next frame
  And I click AnagraficaFornitore.TabContact
  And I scroll down
  And I wait 1 seconds
  And I click AnagraficaFornitore.NuovoContattoTabContact
  And I input in AnagraficaFornitore.NomeContatto the text 'paolo'
  And I input in AnagraficaFornitore.CognomeContatto the text 'bianchi'
  And I input in AnagraficaFornitore.TelefonoContatto the text '742421499123'
  And I input in AnagraficaFornitore.EmailContatto the text 'emailcontatto3@outlook.com'
  And I click AnagraficaFornitore.ArrowRuolo
  And I select the 0 element from the DDL InfoFornitore.ULRuolo
  And I click AnagraficaFornitore.ArrowTimezone
  And I select the 0 element from the DDL InfoFornitore.ULTimezone
  #And I click AnagraficaFornitore.ArrowContattoPrimario
  #And I select the 1 element from the DDL InfoFornitore.ULContattoPrimario
  And I click AnagraficaFornitore.SalvaContatto
  And I click General.OKMessage

#aggiungo una commodity
  And I click AnagraficaFornitore.TabCommodityAndProject
  And I scroll down
  And I wait 2 seconds
  And I click AnagraficaFornitore.AggiungiCommodityTabCommodity
  And I wait 1 seconds
  And I click AnagraficaFornitore.ComodityTabArrow
  And I select the 1 element from the DDL InfoFornitore.ULCommodityTab
  And I click AnagraficaFornitore.RegistraCommodity
  And I click General.OKMessage

#aggiungo un progetto
  And I click AnagraficaFornitore.AggiungiProgettiTabCommodity
  And I click AnagraficaFornitore.ProjectTabArrow
  And I select the 1 element from the DDL InfoFornitore.ULProjectTab
  And I click AnagraficaFornitore.RegisterProject
  And I click General.OKMessage

#devo fargli una richiesta di cambio stato afc proc
#0=cessato,1=duplicato,2=fallito,3=afc>proc,4=derogaRFX,5=incorporato,6=modificheVM,7=revocato,8=sospeso
  And I click AnagraficaFornitore.TabRequest
  And I scroll down
  And I click AnagraficaFornitore.AddRequest
  And I click Request.arrowChose
  And I select the 3 element from the DDL Request.DDLChoseStatus
  And I input in Request.addNotes the text 'test richiesta di cambio stato duplicato'

#allego un file
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

#torno nella vendor List
  And I switch to defaultContentFrame
  And I click General.logo
  And I wait 5 seconds
  And I click HomePage.Fornitori
  And I wait 10 seconds
  And I go to the next frame
  And I input the codFiscale in Fornitori.SearchBox
  And I click Fornitori.SearchIcon
  And I wait 5 seconds
  And I search the supplier 'mang' in the tbody Fornitori.SuppliersTableBody
  And I wait 4 seconds
  And I go to the next frame

  Examples:
   | PartitaIva    | RagioneSociale  |
   | "00943140228" | "SVELTO S.R.L." |