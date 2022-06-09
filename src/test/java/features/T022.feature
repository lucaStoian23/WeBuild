Feature: T022 creazione fornitore procurement and qualification
  Scenario: T022
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
    And I wait 3 seconds
    #compilazione scheda operations Office
    And I click OperationalOffices.ChooseOperationalOffices
    And I click OperationalOffices.AddOperationalOffice
    And I input in OperationalOffices.OperationOfficeName the text 'Nome Prova'
    And I click OperationalOffices.AddressTypeArrow
    And I select the 0 element from the DDL OperationalOffices.AddressTypeUL
    And I click OperationalOffices.CountryButton
    And I input in OperationalOffices.CountrySearchBar the text 'Italia'
    And I click OperationalOffices.CountryLents
    And I select the 0 element from the DDL OperationalOffices.CountryUL
    And I input in OperationalOffices.Address the text 'Via Indirizzo Prova 53'
    And I input in OperationalOffices.PostalCode the text '00100'
    And I input in OperationalOffices.City the text 'Milano'
    And I click OperationalOffices.ProvinceButton
    And I input in OperationalOffices.ProvinceSearch the text 'Milano'
    And I click OperationalOffices.ProvinceLents
    And I select the 0 element from the DDL OperationalOffices.ProvinceUL
    And I click OperationalOffices.Save