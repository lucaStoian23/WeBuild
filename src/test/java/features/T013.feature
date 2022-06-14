Feature: T013 VendorManager Nuovo Fornitore Italia "DITC - DIFFERENT SUPPLIERS/SUBAPP. CEE", supplier type= procurement , senza BVD
  Scenario Outline: T013 VendorManager Nuovo Fornitore Italia "DITC - DIFFERENT SUPPLIERS/SUBAPP. CEE", supplier type= procurement , senza BVD
    #FORME GIURIDICHE: 0= fornitori diversi/ 1 = pers giuridiche/ 2 = Professionisti/
#TIPOLOGIE FORNITORE:  0 = AFC/ 1 = PROCUREMENT / 2 = PROCUREMENT & QUALIFICA
    Given I log_in with username c.motta@reply.it and password Sysko@003
    And I wait 25 seconds
    And I click HomePage.NuovoFornitore
    And I wait 15 seconds
    And I go to the next frame
  # Complilazione del form nuovo fornitore richiesta
    And I click NuovoFornitore.NazioneApri
    And I input in NuovoFornitore.NazioneCerca the text 'Australia'
    And I click NuovoFornitore.LenteNazione
    And I select the 0 element from the DDL NuovoFornitore.NazioneLI
    And I wait 2 seconds
    And I click NuovoFornitore.FormaGiuridicaButton
    And I select the 0 element from the DDL NuovoFornitore.ULFormeGiuridiche
    And I click NuovoFornitore.TipologiaFornitoreButton
    And I click NuovoFornitore.SupplierSoloProcurement
    And I input in NuovoFornitore.RagioneSociale the text 'GMBH'
    #Cambiare partita iva per controllo duplicati
    And I input in NuovoFornitore.PartitaIva the text '003954909490'
    And I click NuovoFornitore.SearchInfoProviderButton
    And I wait 5 seconds
    And I select the 0 element from the DDL NuovoFornitore.ULFornitoriTrovati
     #torno nella homepage
    And I switch to defaultContentFrame
    And I click General.Logo
    And I click HomePage.Fornitori
    And I wait 10 seconds
    And I go to the next frame
    #inserire partita iva usata precedentemente
    And I input in Fornitori.SearchBox the text <Piva>
    And I click Fornitori.SearchIcon
    And I wait 5 seconds
    And I search the supplier 'Nome Fornitore' in the tbody Fornitori.SuppliersTableBody
    And I wait 4 seconds
       #Creazione Dati Nuovo Fornitore
    And I click NuovoFornitore.Crea
    And I click InfoFornitore.OK
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
    # Compilazione scheda Operation Office
    And I scroll down
    And I click InfoFornitore.NuovoUfficioOperativo
    And I input in InfoFornitore.NomeUfficioOperativo the text <Piva>
    And I click InfoFornitore.TipoIndirizzoArrow
    And I click InfoFornitore.ULTipoIndirizzo
    And I click InfoFornitore.NazioneButton
    And I click InfoFornitore.ULNazione
    And I input in InfoFornitore.Indirizzo the text 'Via Prova 5'
    And I input in InfoFornitore.CodicePostale the text '50124'
    And I input in InfoFornitore.Citta the text 'Sydney'
    And I click InfoFornitore.ProvinciaButton
    And I select the 0 element from the DDL InfoFornitore.ULProvincia
    And I click InfoFornitore.SalvaUfficioOperativo
    And I wait 2 seconds
    And I click InfoFornitore.OK
    And I click InfoFornitore.SubmitProposal

    #appro tile MyInbox e Send To compliance la richiesta di cambio stato
    And I click HomePage.LaMiaInbox
    And I wait 10 seconds
    And I go to the next frame
    And I select the 0 element from the DDL LaMiaInbox.DDLProposte
    And I click LaMiaInbox.SendToCompliance
    And I wait 30 seconds
    #Lo step successivo è di accedere con un compliance acc e approvare la richiesta al momento mancante compliance ACC

    Examples:
      | Piva           |
      | "Test"         |