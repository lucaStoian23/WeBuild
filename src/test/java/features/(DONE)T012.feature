Feature: T012 VendorManager Nuovo Fornitore Italia "DITC - DIFFERENT SUPPLIERS/SUBAPP. CEE", supplier type= procurement , BVD
  Scenario Outline: T012 VendorManager Nuovo Fornitore Italia "DITC - DIFFERENT SUPPLIERS/SUBAPP. CEE", supplier type= procurement , BVD
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
    And I select the 1 element from the DDL NuovoFornitore.ULTipologieFornitore
    And I input in NuovoFornitore.RagioneSociale the text <RagioneSociale>
    And I click NuovoFornitore.SearchInfoProviderButton
    And I check that NuovoFornitore.ULFornitoriTrovati is displayed
    And I select the 0 element from the DDL NuovoFornitore.ULFornitoriTrovati
    And I click NuovoFornitore.Crea
    And I check that General.OKMessage is displayed
    And I click General.OKMessage

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
    And I scroll down
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

  #invio della proposta e controllo Registered

    And I check that InfoFornitore.SubmitProposal is displayed and enabled
    And I click InfoFornitore.SubmitProposal
    And Wait if it is loading
    And I check that the element AnagraficaFornitore.StatusRegistered contains the text 'Registered'


    Examples:
      | PartitaIva    | RagioneSociale  |
      | "14292621001" | "HP S.R.L."     |


