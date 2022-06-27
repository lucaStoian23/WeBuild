Feature: T001 VendorManager Nuovo Fornitore Italiano, AFC, DITC - DIFFERENT SUPPLIERS/SUBAPP. CEE, SENZA BVD

  Scenario Outline: T001 VendorManager Nuovo Fornitore Italiano, AFC, DITC - DIFFERENT SUPPLIERS/SUBAPP. CEE, SENZA BVD
#FORME GIURIDICHE: 0= fornitori diversi/ 1 = pers giuridiche/ 2 = Professionisti/
#TIPOLOGIE FORNITORE:  0 = AFC/ 1 = PROCUREMENT / 2 = PROCUREMENT & QUALIFICA
    Given I log_in NEW with username c.motta@reply.it and password CM.Webuild.003


    And I wait 2 seconds
And I click HomePage.NuovoFornitore
And I wait 2 seconds
And I change the iFrame application-NPPSupplierCreation-Display
And I click NuovoFornitore.NazioneButton
And I input in NuovoFornitore.NazioneCerca the text 'Italy'
And I click NuovoFornitore.Clessidra
And I click NuovoFornitore.NazioneTrovata
And I click NuovoFornitore.FormaGiuridicaButton
And I select the 0 element from the DDL NuovoFornitore.ULFormeGiuridiche
And I click NuovoFornitore.TipologiaFornitoreButton
And I select the 0 element from the DDL NuovoFornitore.ULTipologieFornitore
And I input in NuovoFornitore.RagioneSociale the text <RagioneSociale>
And I click NuovoFornitore.SearchInfoProviderButton
    #senza BVD
And I click NuovoFornitore.Annulla
And I input in NuovoFornitore.PartitaIva the text <PartitaIva>
    And I input in NuovoFornitore.CodiceFiscale the text <CodiceFiscale>
    And I input in NuovoFornitore.PartitaIvaCEE the text <PartitaIvaCEE>
And I click NuovoFornitore.Crea
And I wait 10 seconds
 #torno nella homepage
    And I switch to defaultContentFrame
    And I click General.BackToHome
And I wait 5 seconds
    And I click HomePage.Fornitori
    And I wait 2 seconds
    And I go to the next frame
    And I input in Fornitori.SearchBox the text <RagioneSociale>
    And I click Fornitori.SearchIcon
    And I wait 5 seconds
    And I search the supplier <RagioneSociale> in the tbody Fornitori.SuppliersTableBody
    And I wait 4 seconds

#inizio ad editare l'anagrafica fornitore
    And I switch to defaultContentFrame
    And I go to the next frame
And I click AnagraficaFornitore.LinguaggioButton
And I check that AnagraficaFornitore.ULLinguaggio is displayed
And I select the 1 element from the DDL AnagraficaFornitore.ULLinguaggio
And I click AnagraficaFornitore.ValutaDiRiferimentoButton
And I input in AnagraficaFornitore.ValutaDiRiferimentoCerca the text 'eur'
And I click AnagraficaFornitore.ValutaDiRiferimentoLente
And I select the 0 element from the DDL AnagraficaFornitore.ValutaDiRiferimentoDDL
And I input in AnagraficaFornitore.SitoWeb the text 'nomefornitore.com'
And I scroll down
And I wait 1 seconds
 #aggiungo una commodity
And I check that AnagraficaFornitore.AggiungiCommodity is displayed
And I click AnagraficaFornitore.AggiungiCommodity
And I click AnagraficaFornitore.CommodityArrow
And I select the 0 element from the DDL InfoFornitore.ULCommodity
And I click AnagraficaFornitore.RegistraCommodity
And I click General.OKMessage
#Aggiungo un progetto
And I click AnagraficaFornitore.AggiungiProgetti
And I click AnagraficaFornitore.ProgettoArrow
And I select the 0 element from the DDL InfoFornitore.ULProgetto
And I click AnagraficaFornitore.RegistraProgetto
And I click General.OKMessage
#creo il contatto primario
And I click AnagraficaFornitore.NuovoContatto
And I input in AnagraficaFornitore.NomeContatto the text 'Marco'
And I input in AnagraficaFornitore.CognomeContatto the text 'Rossi'
And I input in AnagraficaFornitore.TelefonoContatto the text '348211499123'
And I input in AnagraficaFornitore.EmailContatto the text 'emailcontatto@outlook.com'
And I click AnagraficaFornitore.ArrowRuolo
And I select the 0 element from the DDL InfoFornitore.ULRuolo
And I click AnagraficaFornitore.ArrowTimezone
And I select the 0 element from the DDL InfoFornitore.ULTimezone
And I click AnagraficaFornitore.ArrowContattoPrimario
And I select the 0 element from the DDL InfoFornitore.ULContattoPrimario
And I click AnagraficaFornitore.SalvaContatto
And I click General.OKMessage

    #Aggiungo l'ufficio operativo
And I click AnagraficaFornitore.NuovoUfficioOperativo
And I input in AnagraficaFornitore.NomeUfficioOperativo the text 'nomeUfficio'
And I click AnagraficaFornitore.TipoIndirizzoArrow
And I select the 1 element from the DDL AnagraficaFornitore.ULTipoIndirizzo
And I click AnagraficaFornitore.NazioneButton

    And I input in AnagraficaFornitore.CreateOperationOficeSerachInputField the text 'italy'
    And I click AnagraficaFornitore.CreateOperationOficeSerachLenteIngradimento

    And I select the 0 element from the DDL AnagraficaFornitore.ULNazione

And I input in AnagraficaFornitore.Indirizzo the text 'nomeIndirizzo'
And I input in AnagraficaFornitore.CodicePostale the text '21052'
And I input in AnagraficaFornitore.Citta the text 'Busto Arsizio'
And I click AnagraficaFornitore.ProvinciaButton
And I select the 0 element from the DDL AnagraficaFornitore.ULProvincia
And I click AnagraficaFornitore.SalvaUfficioOperativo
And I click General.OKMessage
# allego un file

    And I check that AnagraficaFornitore.AddDocumentButton is displayed
    And I click AnagraficaFornitore.AddDocumentButton
    And I check that AnagraficaFornitore.AttachmentName is displayed
    And I click AnagraficaFornitore.AttachmentName
    And I input in AnagraficaFornitore.AttachmentName the text 'MyAttachment'
    
    And I check that AnagraficaFornitore.AttachmentDescription is displayed
    And I click AnagraficaFornitore.AttachmentDescription
    And I input in AnagraficaFornitore.AttachmentDescription the text 'This is an Attachment'

    And I check that AnagraficaFornitore.AttachmentFileName is displayed

    And I put the attachment cucumber.properties inside RFX.AttachmentField


    And I check that AnagraficaFornitore.AddButton is displayed
    And I click AnagraficaFornitore.AddButton

    And I check that General.OKMessage is displayed
    And I click General.OKMessage


    And I check that AnagraficaFornitore.InviaProposta is displayed
    And I click AnagraficaFornitore.InviaProposta
    And I wait 2 seconds
    And I check that the element AnagraficaFornitore.Status contains the text 'Registered AFC'
      #qui devo continuare ad editare il fornitore
  #dopo che ho creato il fornitore in draft torno nella homepage
    And I switch to defaultContentFrame
    And I click General.BackToHome
    And I check that HomePage.Fornitori is displayed
    And I wait 5 seconds
    And I click HomePage.Fornitori
    And I wait 2 seconds
    And I go to the next frame
    And I input in Fornitori.SearchBox the text <RagioneSociale>
    And I click Fornitori.SearchIcon
    And I wait 5 seconds
    And I search the supplier <RagioneSociale> in the tbody Fornitori.SuppliersTableBody
    And I wait 4 seconds

      And I check that AnagraficaFornitore.TabContact is displayed
      And I click AnagraficaFornitore.TabContact
      And I click AnagraficaFornitore.NuovoContattoTabContact
      And I input in AnagraficaFornitore.NomeContatto the text 'paolo'
      And I input in AnagraficaFornitore.CognomeContatto the text 'bianchi'
      And I input in AnagraficaFornitore.TelefonoContatto the text '742421499123'
      And I input in AnagraficaFornitore.EmailContatto the text 'emailcontatto3@outlook.com'
      And I click AnagraficaFornitore.ArrowRuolo
      And I select the 0 element from the DDL InfoFornitore.ULRuolo
      And I click AnagraficaFornitore.ArrowTimezone
      And I select the 0 element from the DDL InfoFornitore.ULTimezone
      And I click AnagraficaFornitore.ArrowContattoPrimario
      And I select the 1 element from the DDL InfoFornitore.ULContattoPrimario
      And I click AnagraficaFornitore.SalvaContatto
      And I click General.OKMessage
     #aggiungo una commodity
    And I click AnagraficaFornitore.TabCommodityAndProject
    And I click AnagraficaFornitore.AggiungiCommodityTabCommodity
    And I click AnagraficaFornitore.CommodityArrow
    And I select the 1 element from the DDL InfoFornitore.ULCommodity
    And I click AnagraficaFornitore.RegistraCommodity
    And I click General.OKMessage
 #aggiungo un progetto
    And I click AnagraficaFornitore.TabCommodityAndProject
    And I click AnagraficaFornitore.AggiungiProgettiTabCommodity
    And I click AnagraficaFornitore.CommodityArrow
    And I select the 1 element from the DDL InfoFornitore.ULCommodity
    And I click AnagraficaFornitore.RegistraCommodity
    And I click General.OKMessage
    #manca tab eco financial


    Examples:
      | CodiceFiscale     |PartitaIvaCEE|PartitaIva|RagioneSociale|
      | "STFPLA81H16E792B"  |"" |"002098009456"|"stefano92"|
