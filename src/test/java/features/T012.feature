Feature: T012 VendorManager Nuovo Fornitore Italia "DITC - DIFFERENT SUPPLIERS/SUBAPP. CEE", supplier type= procurement , senza BVD
  Scenario: T012
    #FORME GIURIDICHE: 0= fornitori diversi/ 1 = pers giuridiche/ 2 = Professionisti/
#TIPOLOGIE FORNITORE:  0 = AFC/ 1 = PROCUREMENT / 2 = PROCUREMENT & QUALIFICA
    Given I log_in with username c.motta@reply.it and password Sysko@003
    And I wait 25 seconds
    And I click HomePage.NuovoFornitore
    And I wait 15 seconds
    And I go to the next frame
    # Complilazione del form nuovo fornitore richiesta
    And I click NuovoFornitore.NazioneApri
    And I input in NuovoFornitore.NazioneCerca the text 'Germania'
    And I click NuovoFornitore.LenteNazione
    And I click NuovoFornitore.SelezionaGermania
    And I wait 2 seconds
    And I click NuovoFornitore.FormaGiuridicaButton
    And I click NuovoFornitore.FormaGiuridicaPrimaScelta
    And I click NuovoFornitore.TipologiaFornitoreButton
    And I click NuovoFornitore.SupplierSoloProcurement
    And I input in NuovoFornitore.RagioneSociale the text 'Prova Azienda S.R.L'
    And I input in NuovoFornitore.PartitaIva the text '003584009430'
    And I click NuovoFornitore.SearchInfoProviderButton
    And I wait 5 seconds
    And I click NuovoFornitore.SelezionaProva
    And I wait 10 seconds
    # Compilazione scheda Operation Office
    And I scroll down
    And I click InfoFornitore.NuovoUfficioOperativo
    And I input in InfoFornitore.NomeUfficioOperativo the text 'Nome Prova'
    And I click InfoFornitore.TipoIndirizzoArrow
    And I click InfoFornitore.ULTipoIndirizzo
    And I click InfoFornitore.NazioneButton
    And I click InfoFornitore.ULNazione
    And I input in InfoFornitore.Indirizzo the text 'Via Prova N:5'
    And I input in InfoFornitore.CodicePostale the text '50124'
    And I input in InfoFornitore.Citta the text 'Palermo'
    And I click InfoFornitore.ProvinciaButton
    And I click InfoFornitore.ULProvincia
    And I click InfoFornitore.SalvaUfficioOperativo
    And I wait 2 seconds
    And I click InfoFornitore.OK
    And I click InfoFornitore.SubmitProposal






