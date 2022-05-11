Feature: T002 VendorManager Nuovo Fornitore

  Scenario: T002 VendorManager Nuovo Fornitore
    Given I log_in with username c.motta@reply.it and password Sysko@003
    And I wait 4 seconds
    And I click HomePage.NuovoFornitore
    And I wait 1 seconds
    And I change the iFrame
    And I click NuovoFornitore.NazioneButton
    And I wait 1 seconds
    And I input in NuovoFornitore.NazioneCerca the text 'Italia'
    And I wait 1 seconds
    And I click NuovoFornitore.Clessidra
    And I wait 1 seconds
    And I click NuovoFornitore.NazioneTrovata
    And I wait 1 seconds
    And I click NuovoFornitore.FormaGiuridicaButton
    And I wait 1 seconds
    And I select the 1 element from the DDL NuovoFornitore.ULFormeGiuridiche
    And I wait 1 seconds
    And I click NuovoFornitore.TipologiaFornitoreButton
    And I wait 1 seconds
    And I select the 1 element from the DDL NuovoFornitore.ULTipologieFornitore
    And I wait 1 seconds
    And I input in NuovoFornitore.RagioneSociale the text 'va'
    And I wait 1 seconds
    And I click NuovoFornitore.SearchInfoProviderButton
    And I wait 1 seconds
    And I select the 0 element from the DDL NuovoFornitore.ULFornitoriTrovati
    And I wait 1 seconds
    And I click NuovoFornitore.Crea



    And I wait 10 seconds
