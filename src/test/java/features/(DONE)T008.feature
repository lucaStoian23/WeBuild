Feature: T008 VendorManager Nuovo Fornitore Italiano, procurement, DITC - DIFFERENT SUPPLIERS/SUBAPP. CEE, con BVD, torna indietro in tab fornitori

  Scenario Outline: T008 VendorManager Nuovo Fornitore
#FORME GIURIDICHE: 0= fornitori diversi/ 1 = pers giuridiche/ 2 = Professionisti/
#TIPOLOGIE FORNITORE:  0 = AFC/ 1 = PROCUREMENT / 2 = PROCUREMENT & QUALIFICA
    And I delete the supplier with <RagioneSociale>

    Given I log_in NEW with username c.motta@reply.it and password CM.Webuild.003


    And I check that HomePage.NuovoFornitore is displayed
    And I click HomePage.NuovoFornitore
    And I go to the next frame
    And Wait if it is loading
    And I check that NuovoFornitore.NazioneButton is displayed and enabled
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
    And I select the 1 element from the DDL NuovoFornitore.ULTipologieFornitore
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

#Aggiungo un progetto da sistemare
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

   #invio della proposta e controllo proposed

    And I check that InfoFornitore.SubmitProposal is displayed and enabled
    And I click InfoFornitore.SubmitProposal
    And Wait if it is loading
    And I check that the element AnagraficaFornitore.StatusProsposed contains the text 'Proposed'



          #ora devo Rifiutare la proposta (mail)
    And I switch to defaultContentFrame
    And I check that General.Logo is displayed
    And I click General.Logo
    And Wait if it is loading
    And I check that HomePage.LaMiaInbox is displayed
    And I click HomePage.LaMiaInbox
    And I go to the next frame
    And I check that LaMiaInbox.DDLProposte is displayed
    And I select the 0 element from the DDL LaMiaInbox.DDLProposte
    And I check that LaMiaInbox.Reject is displayed
    And I click LaMiaInbox.Reject
    And I wait 3 seconds

     #dopo che ho Rifiutato la Richiesta torno in homepage

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

     # Aggiungo una Request Revoked
    And Wait if it is loading
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

            #ora devo Rifiutare la proposta
    And I switch to defaultContentFrame
    And I check that General.Logo is displayed
    And I click General.Logo
    And Wait if it is loading
    And I check that HomePage.LaMiaInbox is displayed
    And I click HomePage.LaMiaInbox
    And I go to the next frame
    And I check that LaMiaInbox.DDLProposte is displayed
    And I select the 0 element from the DDL LaMiaInbox.DDLProposte
    And I check that LaMiaInbox.Reject is displayed
    And I click LaMiaInbox.Reject
    And I wait 3 seconds

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
    And I check that the element AnagraficaFornitore.RejectedCheck contains the text 'Rejected'



    Examples:
      | CodiceFiscale       | PartitaIvaCEE | PartitaIva      | RagioneSociale     |
      | "STFSLA41A73AB5F9Z" | ""            | "009341609465"  | "TestVendor08"     |