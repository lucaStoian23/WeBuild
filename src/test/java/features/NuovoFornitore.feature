Feature: T002 VendorManager Nuovo Fornitore

  Scenario: T002 VendorManager Nuovo Fornitore
    Given I log_in NEW with username c.motta@reply.it and password CM.Webuild.003
    And I click HomePage.NuovoFornitore
    And I wait 10 seconds
    And I change the iFrame application-NPPSupplierCreation-Display
    And I click NuovoFornitore.NazioneButton
    And I input in NuovoFornitore.NazioneCerca the text 'Italia'
    And I click NuovoFornitore.Clessidra
    And I click NuovoFornitore.NazioneTrovata
    And I click NuovoFornitore.FormaGiuridicaButton
    And I select the 1 element from the DDL NuovoFornitore.ULFormeGiuridiche
    And I click NuovoFornitore.TipologiaFornitoreButton
    And I select the 2 element from the DDL NuovoFornitore.ULTipologieFornitore
    And I input in NuovoFornitore.RagioneSociale the text 'lamb'
    And I click NuovoFornitore.SearchInfoProviderButton
    #se si crea su un fornitore gia presente su npp, parte il controllo dei duplicati che porta
    #l'utente sulla schermata info-fornitore della bozza, faccio un log4j per questa situazione
    And I select the 0 element from the DDL NuovoFornitore.ULFornitoriTrovati
    And I wait 4 seconds
    And I click NuovoFornitore.Crea
    And I wait 30 seconds
    And I click InfoFornitore.LinguaggioButton
    And I wait 1 seconds
    And I select the 1 element from the DDL InfoFornitore.ULLinguaggio
    And I click InfoFornitore.ValutaDiRiferimentoButton
    And I input in InfoFornitore.ValutaDiRiferimentoCerca the text 'eur'
    And I click InfoFornitore.ValutaDiRiferimentoLente
    And I select the 0 element from the DDL InfoFornitore.ValutaDiRiferimentoDDL
    And I input in InfoFornitore.SitoWeb the text 'nomefornitore.com'
    And I scroll down
    And I wait 1 seconds
 #aggiungo una commodity
    And I click InfoFornitore.AggiungiCommodity
    And I click InfoFornitore.CommodityArrow
    And I select the 5 element from the DDL InfoFornitore.ULCommodity
    And I click InfoFornitore.RegistraCommodity
    And I click General.OKMessage
#Aggiungo un progetto
    And I click InfoFornitore.AggiungiProgetti
    And I click InfoFornitore.ProgettoArrow
    And I select the 5 element from the DDL InfoFornitore.ULProgetto
    And I click InfoFornitore.RegistraProgetto
    And I click General.OKMessage
#creo il contatto primario
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
    And I click General.SALVA
    And I click General.OKMessage
#Aggiungo l'ufficio operativo
    And I click InfoFornitore.NuovoUfficioOperativo
    And I input in InfoFornitore.NomeUfficioOperativo the text 'nomeUfficio'
    And I click InfoFornitore.TipoIndirizzoArrow
    And I select the 1 element from the DDL InfoFornitore.ULTipoIndirizzo
    And I click InfoFornitore.NazioneButton
    And I select the 0 element from the DDL InfoFornitore.ULNazione
    And I input in InfoFornitore.Indirizzo the text 'nomeIndirizzo'
    And I input in InfoFornitore.CodicePostale the text '21052'
    And I input in InfoFornitore.Citta the text 'Busto Arsizio'
    And I click InfoFornitore.ProvinciaButton
    And I select the 0 element from the DDL InfoFornitore.ULProvincia
    And I click InfoFornitore.SALVA
    And I wait 3 seconds
    And I click General.OKMessage


    And I wait 4 seconds
    And I click InfoFornitore.InviaProposta
    And I wait 30 seconds
    And I click General.OKMessage
    And I switch to defaultContentFrame
    And I click General.BackToHome
    And I wait 30 seconds
    And I click HomePage.LaMiaInbox
    And I wait 10 seconds
    And I go to the next frame
    And I select the 2 element from the DDL LaMiaInbox.DDLProposte
    And I click LaMiaInbox.Approve
    And I wait 30 seconds


