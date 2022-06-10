Feature: T015 VendorManager Nuovo Fornitore Italia "DITC - DIFFERENT SUPPLIERS/SUBAPP. CEE", supplier type= procurement , senza BVD
  Scenario: T015
    #FORME GIURIDICHE: 0= fornitori diversi/ 1 = pers giuridiche/ 2 = Professionisti/
#TIPOLOGIE FORNITORE:  0 = AFC/ 1 = PROCUREMENT / 2 = PROCUREMENT & QUALIFICA
    Given I log_in with username c.motta@reply.it and password Sysko@003
    And I wait 25 seconds
    And I click HomePage.NuovoFornitore
    And I go to the next frame
    And I wait 15 seconds
      # Complilazione del form nuovo fornitore richiesta
    And I click NuovoFornitore.NazioneApri
    And I input in NuovoFornitore.NazioneCerca the text 'Francia'
    And I click NuovoFornitore.LenteNazione
    And I select the 0 element from the DDL NuovoFornitore.NazioneLI
    And I wait 2 seconds
    And I click NuovoFornitore.FormaGiuridicaButton
    And I select the 0 element from the DDL NuovoFornitore.ULFormeGiuridiche
    And I click NuovoFornitore.TipologiaFornitoreButton
    And I click NuovoFornitore.SupplierSoloProcurement
    And I input in NuovoFornitore.RagioneSociale the text 'Prova015A'
    #Cambiare Partita iva per problema duplicati
    And I input in NuovoFornitore.PartitaIva the text '009221609400'
    And I click NuovoFornitore.SearchInfoProviderButton
    And I wait 5 seconds
    And I select the 0 element from the DDL NuovoFornitore.ULFornitoriTrovati
    #And I click NuovoFornitore.Crea
   # And I click InfoFornitore.OK
    And I wait 10 seconds
#dopo che ho creato il fornitore in draft torno nella homepage
    And I switch to defaultContentFrame
    And I click InfoFornitore.TornaIndietro
    And I wait 2 seconds
    And I click HomePage.Fornitori
    And I wait 2 seconds
    And I go to the next frame
    And I input in Fornitori.SearchBox the text '009221609400'
    And I click Fornitori.SearchIcon
    And I wait 2 seconds
