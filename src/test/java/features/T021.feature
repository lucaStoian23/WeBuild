Feature: T021 VendorManager Registration supplier procurement and qualification Italia GITC - PROFES. PERS. GIUR. ITALIA CEE without BVD, rejected
  Scenario: T021
    #FORME GIURIDICHE: 0= fornitori diversi/ 1 = pers giuridiche/ 2 = Professionisti/
#TIPOLOGIE FORNITORE:  0 = AFC/ 1 = PROCUREMENT / 2 = PROCUREMENT & QUALIFICA
    Given I log_in with username c.motta@reply.it and password Sysko@003
    And I wait 25 seconds
    And I click HomePage.NuovoFornitore
    #Creazione Nuovo Fornitore secondo istruzioni
    And I wait 15 seconds
    And I go to the next frame
    And I click NuovoFornitore.NazioneButton
    And I input in NuovoFornitore.NazioneCerca the text 'Italia'
    And I click NuovoFornitore.Clessidra
    And I click NuovoFornitore.NazioneTrovata
    And I click NuovoFornitore.FormaGiuridicaButton
    And I select the 1 element from the DDL NuovoFornitore.ULFormeGiuridiche
    And I click NuovoFornitore.TipologiaFornitoreButton
    And I select the 0 element from the DDL NuovoFornitore.ULTipologieFornitore
    And I input in NuovoFornitore.RagioneSociale the text 'Test Prova 21AA'
    #cambiare partita iva per il controllo dei duplicati
    And I input in NuovoFornitore.PartitaIva the text '003954909490'
    And I click NuovoFornitore.SearchInfoProviderButton
    And I wait 5 seconds
    And I click NuovoFornitore.Annulla
    And I click NuovoFornitore.Crea
    And I click General.OKMessage
    #Ricerca Del fornitore creato precedentemente
    And I wait 10 seconds
    And I click General.BackToHome
    And I switch to defaultContentFrame
    And I click HomePage.Fornitori
    And I go to the next frame
    And I input in Fornitori.SearchBox the text 'Test Prova 21AA'
    And I click Fornitori.SearchIcon