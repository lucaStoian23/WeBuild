Feature: T009 VendorManager Nuovo Fornitore Italia "DITC - DIFFERENT SUPPLIERS/SUBAPP. CEE", supplier type= procurement , CON BVD

  Scenario Outline: T009 VendorManager Nuovo Fornitore
    #FORME GIURIDICHE: 0= fornitori diversi/ 1 = pers giuridiche/ 2 = Professionisti/
#TIPOLOGIE FORNITORE:  0 = AFC/ 1 = PROCUREMENT / 2 = PROCUREMENT & QUALIFICA
    Given I log_in NEW with username s.zouhri@reply.it and password NPP.webuild1
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
    And I select the 0 element from the DDL NuovoFornitore.ULFormeGiuridiche
    And I click NuovoFornitore.TipologiaFornitoreButton
    And I check that NuovoFornitore.ULTipologieFornitore is displayed
    And I select the 0 element from the DDL NuovoFornitore.ULTipologieFornitore
    And I input in NuovoFornitore.RagioneSociale the text <RagioneSociale>
    And I click NuovoFornitore.SearchInfoProviderButton
    And I check that NuovoFornitore.ULFornitoriTrovati is displayed
    #senza BVD
    And I check that NuovoFornitore.ULFornitoriTrovati is displayed
    And I click NuovoFornitore.Annulla
    #la partita iva deve essere un numero reale
    And I input in NuovoFornitore.PartitaIva the text <PartitaIva>
    And I input in NuovoFornitore.CodiceFiscale the text <CodiceFiscale>
    And I input in NuovoFornitore.PartitaIvaCEE the text <PartitaIvaCEE>
    And I click NuovoFornitore.Crea
    And I check that General.OKMessage is displayed
    And I click General.OKMessage
    And I check that General.OKMessage is not displayed
    #inizio ad editare l'anagrafica fornitore
    And I check that AnagraficaFornitore.LinguaggioButton is displayed
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
    And I check that General.OKMessage is displayed
    And I click General.OKMessage

#Aggiungo un progetto
    And I check that AnagraficaFornitore.AggiungiProgetti is displayed and enabled
    And I click AnagraficaFornitore.AggiungiProgetti
    And I click AnagraficaFornitore.ProgettoArrow
    And I check that InfoFornitore.ULProgetto is displayed
    And I select the 0 element from the DDL InfoFornitore.ULProgetto
    And I click AnagraficaFornitore.RegistraProgetto
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

    #Aggiungo l'ufficio operativo
    And I check that AnagraficaFornitore.NuovoUfficioOperativo is displayed and enabled
    And I click AnagraficaFornitore.NuovoUfficioOperativo
    And I input in AnagraficaFornitore.NomeUfficioOperativo the text 'Nome Ufficio Operativo'
    And I click AnagraficaFornitore.TipoIndirizzoArrow
    And I check that AnagraficaFornitore.ULTipoIndirizzo is displayed
    And I select the 0 element from the DDL AnagraficaFornitore.ULTipoIndirizzo
    And I click AnagraficaFornitore.NazioneButton

    #devo prendere una country italiana
    And I check that AnagraficaFornitore.CreateOperationOficeSerachInputField is displayed
    And I input in AnagraficaFornitore.CreateOperationOficeSerachInputField the text 'ITALY'
    And I click AnagraficaFornitore.CreateOperationOficeSerachLenteIngradimento
    And I select the 0 element from the DDL AnagraficaFornitore.ULNazione
    And I input in AnagraficaFornitore.Indirizzo the text 'nomeIndirizzo'
    And I input in AnagraficaFornitore.CodicePostale the text '21052'
    And I input in AnagraficaFornitore.Citta the text 'Busto Arsizio'
    And I click AnagraficaFornitore.ProvinciaButton
    And I select the 0 element from the DDL AnagraficaFornitore.ULProvincia
    And I click AnagraficaFornitore.SalvaUfficioOperativo
    And I check that General.OKMessage is displayed
    And I click General.OKMessage

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
    And I check that General.OKMessage is displayed
    And I click General.OKMessage

    #invio della proposta

    And I check that AnagraficaFornitore.InviaProposta is displayed and enabled
    And I click AnagraficaFornitore.InviaProposta
    And I check that the element AnagraficaFornitore.Status contains the text 'Proposed'

    #proseguire da qui dopo bug fix

  #ora devo accettare la proposta
    And I switch to defaultContentFrame
    And I click General.Logo
    And I check that HomePage.LaMiaInbox is displayed
    And I click HomePage.LaMiaInbox
    And I go to the next frame
    And I check that LaMiaInbox.DDLProposte is displayed
    And I select the 0 element from the DDL LaMiaInbox.DDLProposte
    And I click LaMiaInbox.Approve
    #ora ricerco il fornitore nella vendor list e gli modifico lo status
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

    #devo aggiungergli il cambio stato "revoked"
   #devo fargli una richiesta di cambio stato afc proc
    #0=cessato,1=duplicato,2=fallito,3=afc>proc,4=derogaRFX,5=incorporato,6=modificheVM,7=revocato,8=sospeso
    And I click AnagraficaFornitore.TabRequest
    And I click AnagraficaFornitore.AddRequest
    And I click Request.arrowChose
    And I select the 0 element from the DDL Request.DDLChoseStatus
    And I input in Request.addNotes the text 'test richiesta di cambio stato duplicato'
    #qui aggiungo a mano un attachment
    And I wait 30 seconds
    And I click Request.add
    And I wait 30 seconds
#ora aspetto devo approvare la richiesta, devo approvarla usando tantissimi account diversi.
  #torno nella homepage
    And I switch to defaultContentFrame
    And I click General.Logo
  #appro tile MyInbox e approvo la richiesta di cambio stato
    And I click HomePage.LaMiaInbox
    And I wait 10 seconds
    And I go to the next frame
    And I select the 0 element from the DDL LaMiaInbox.DDLProposte
    And I click LaMiaInbox.Approve
    And I wait 30 seconds
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
    And I search the supplier <RagioneSociale> in the tbody Fornitori.SuppliersTableBody
    And I wait 4 seconds
    And I go to the next frame


    Examples:
      | CodiceFiscale      | PartitaIvaCEE      | PartitaIva   | RagioneSociale       |
      | "STFPLA81H16E792B" |"CEE2323CEE2323CDC" |"009139309470"| "CompagniaTest07"    |