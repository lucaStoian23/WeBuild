Feature: T001 VendorManager Nuovo Fornitore Italiano, AFC, DITC - DIFFERENT SUPPLIERS/SUBAPP. CEE, SENZA BVD

  Scenario: T001 VendorManager Nuovo Fornitore
#FORME GIURIDICHE: 0= fornitori diversi/ 1 = pers giuridiche/ 2 = Professionisti/
#TIPOLOGIE FORNITORE:  0 = AFC/ 1 = PROCUREMENT / 2 = PROCUREMENT & QUALIFICA
Given I log_in with username c.motta@reply.it and password Sysko@003
And I wait 2 seconds
And I click HomePage.NuovoFornitore
And I wait 2 seconds
And I change the iFrame application-NPPSupplierCreation-Display
And I click NuovoFornitore.NazioneButton
And I input in NuovoFornitore.NazioneCerca the text 'Ita'
And I click NuovoFornitore.Clessidra
And I click NuovoFornitore.NazioneTrovata
And I click NuovoFornitore.FormaGiuridicaButton
And I select the 0 element from the DDL NuovoFornitore.ULFormeGiuridiche
And I click NuovoFornitore.TipologiaFornitoreButton
And I select the 0 element from the DDL NuovoFornitore.ULTipologieFornitore
And I input in NuovoFornitore.RagioneSociale the text 'mang'
And I click NuovoFornitore.SearchInfoProviderButton
    #senza BVD
And I click NuovoFornitore.Annulla
And I input in NuovoFornitore.PartitaIva the text '1812354'
      And I input in NuovoFornitore.CodiceFiscale the text 'STNAASD1230ASD'
      And I input in NuovoFornitore.PartitaIvaCEE the text 'CEE2323CEE2323CDD'
And I click NuovoFornitore.Crea
And I wait 2 seconds
#dopo che ho creato il fornitore in draft torno nella homepage
And I switch to defaultContentFrame
And I click InfoFornitore.TornaIndietro
And I wait 5 seconds
    And I click HomePage.Fornitori
    And I wait 2 seconds
    And I go to the next frame
    And I input in Fornitori.SearchBox the text '1812354'
    And I click Fornitori.SearchIcon
    And I wait 5 seconds
    And I search the supplier 'mang' in the tbody Fornitori.SuppliersTableBody
    And I wait 4 seconds

#inizio ad editare l'anagrafica fornitore
    And I switch to defaultContentFrame
    And I go to the next frame
And I click AnagraficaFornitore.LinguaggioButton
And I wait 1 seconds
And I select the 1 element from the DDL AnagraficaFornitore.ULLinguaggio
And I click AnagraficaFornitore.ValutaDiRiferimentoButton
And I input in AnagraficaFornitore.ValutaDiRiferimentoCerca the text 'eur'
And I click AnagraficaFornitore.ValutaDiRiferimentoLente
And I select the 0 element from the DDL AnagraficaFornitore.ValutaDiRiferimentoDDL
And I input in AnagraficaFornitore.SitoWeb the text 'nomefornitore.com'
And I scroll down
And I wait 1 seconds
 #aggiungo una commodity
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
And I select the 0 element from the DDL AnagraficaFornitore.ULNazione
And I input in AnagraficaFornitore.Indirizzo the text 'nomeIndirizzo'
And I input in AnagraficaFornitore.CodicePostale the text '21052'
And I input in AnagraficaFornitore.Citta the text 'Busto Arsizio'
And I click AnagraficaFornitore.ProvinciaButton
And I select the 0 element from the DDL AnagraficaFornitore.ULProvincia
And I click AnagraficaFornitore.SalvaUfficioOperativo
And I click General.OKMessage

And I wait 4 seconds
And I click AnagraficaFornitore.InviaProposta
And I wait 2 seconds
And I check that the element AnagraficaFornitore.Status contains the text 'Registrato AFC'
      #qui devo continuare ad editare il fornitore
  #dopo che ho creato il fornitore in draft torno nella homepage
    And I switch to defaultContentFrame
    And I click InfoFornitore.TornaIndietro
    And I wait 5 seconds
    And I click HomePage.Fornitori
    And I wait 2 seconds
    And I go to the next frame
    And I input in Fornitori.SearchBox the text '1812354'
    And I click Fornitori.SearchIcon
    And I wait 5 seconds
    And I search the supplier 'mang' in the tbody Fornitori.SuppliersTableBody
    And I wait 4 seconds
      And I go to the next frame
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