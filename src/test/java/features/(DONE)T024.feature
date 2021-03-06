Feature: T024 creazione fornitore procurement and qualification
  Scenario Outline: T024 creazione fornitore procurement and qualification
    #FORME GIURIDICHE: 0= fornitori diversi/ 1 = pers giuridiche/ 2 = Professionisti/
#TIPOLOGIE FORNITORE:  0 = AFC/ 1 = PROCUREMENT / 2 = PROCUREMENT & QUALIFICA
    Given I log_in NEW with username s.zouhri@reply.it and password NPP.webuild1
    And I click HomePage.NuovoFornitore

#Creazione Nuovo Fornitore secondo istruzioni
    And I wait 5 seconds
    And I go to the next frame
    And I click NuovoFornitore.NazioneButton
    And I input in NuovoFornitore.NazioneCerca the text 'Italy'
    And I click NuovoFornitore.Clessidra
    And I click NuovoFornitore.NazioneTrovata
    And I click NuovoFornitore.FormaGiuridicaButton
    And I select the 1 element from the DDL NuovoFornitore.ULFormeGiuridiche
    And I click NuovoFornitore.TipologiaFornitoreButton
    And I select the 1 element from the DDL NuovoFornitore.ULTipologieFornitore
    And I input in NuovoFornitore.RagioneSociale the text <RagioneSociale>

#cambiare partita iva per il controllo dei duplicati
    And I input in NuovoFornitore.PartitaIva the text 'Inserire PIVA'
    And I click NuovoFornitore.SearchInfoProviderButton
    And I wait 5 seconds
    And I click NuovoFornitore.Annulla
    And I click NuovoFornitore.Crea
    And I click General.OKMessage
    And I wait 10 seconds

#compilazione scheda operations Office
    And I wait 10 seconds
    And I click InfoFornitore.LinguaggioButton
    And I select the 0 element from the DDL InfoFornitore.ULLinguaggio
    And I click InfoFornitore.ValutaDiRiferimentoButton
    And I input in InfoFornitore.ValutaDiRiferimentoCerca the text 'Euro'
    And I click InfoFornitore.ValutaDiRiferimentoLente
    And I select the 0 element from the DDL InfoFornitore.ValutaDiRiferimentoDDL
    And I click InfoFornitore.AggiungiCommodity
    And I click InfoFornitore.CommodityArrow
    And I select the 0 element from the DDL InfoFornitore.ULCommodity
    And I click InfoFornitore.RegistraCommodity
    And I click InfoFornitore.OK
    And I click InfoFornitore.AggiungiProgetti
    And I click InfoFornitore.ProgettoArrow
    And I select the 0 element from the DDL InfoFornitore.ULProgetto
    And I click InfoFornitore.RegistraProgetto
    And I click InfoFornitore.OK

#registrazione contatto
    And I click InfoFornitore.NuovoContatto
    And I input in InfoFornitore.NomeContatto the text 'Marco'
    And I input in InfoFornitore.CognomeContatto the text 'Rossi'
    And I input in InfoFornitore.TelefonoContatto the text '348211499123'
    And I input in InfoFornitore.EmailContatto the text 'emailcontatto@outlook.com'
    And I click InfoFornitore.ArrowRuolo
    And I select the 0 element from the DDL InfoFornitore.ULRuolo
    And I click InfoFornitore.ArrowTimezone
    And I select the 0 element from the DDL InfoFornitore.ULTimezone
    And I click InfoFornitore.ArrowContattoPrimario
    And I select the 0 element from the DDL InfoFornitore.ULContattoPrimario
    And I click InfoFornitore.SalvaContatto
    And I click General.OKMessage

#Compilazione scheda Operation Office
    And I scroll down
    And I click InfoFornitore.NuovoUfficioOperativo
    And I input in InfoFornitore.NomeUfficioOperativo the text 'Nome Prova'
    And I click InfoFornitore.TipoIndirizzoArrow
    And I click InfoFornitore.ULTipoIndirizzo
    And I click InfoFornitore.NazioneButton
    And I click InfoFornitore.ULNazione
    And I input in InfoFornitore.Indirizzo the text 'Via Prova 5'
    And I input in InfoFornitore.CodicePostale the text '50124'
    And I input in InfoFornitore.Citta the text 'Sydney'
    And I check that AnagraficaFornitore.ProvinceButton is displayed
    And I click AnagraficaFornitore.ProvinceButton
    And I click InfoFornitore.ULProvincia
    And I click InfoFornitore.SalvaUfficioOperativo
    And I wait 2 seconds
    And I click InfoFornitore.OK

#qui aggiungo a mano un attachment
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
    And I click InfoFornitore.SubmitProposal
    #a questo punto ho un problema e non posso inviare la proposta
    #per proseguire bisogna usare acc compliance attualmente non disponibile


    Examples:
      | RagioneSociale   |
      | "TestVendor24"   |