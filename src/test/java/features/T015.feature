Feature: T015 VendorManager Nuovo Fornitore Italia "DITC - DIFFERENT SUPPLIERS/SUBAPP. CEE", supplier type= procurement , senza BVD
  Scenario Outline: T015 VendorManager Nuovo Fornitore Italia "DITC - DIFFERENT SUPPLIERS/SUBAPP. CEE", supplier type= procurement , senza BVD
    #FORME GIURIDICHE: 0= fornitori diversi/ 1 = pers giuridiche/ 2 = Professionisti/
#TIPOLOGIE FORNITORE:  0 = AFC/ 1 = PROCUREMENT / 2 = PROCUREMENT & QUALIFICA
    Given I log_in NEW with username s.zouhri@reply.it and password NPP.webuild1
    And I wait 5 seconds
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
    #Cambiare Partita iva per problema duplicati
    And I input in NuovoFornitore.PartitaIva the text <Piva>
    And I click NuovoFornitore.SearchInfoProviderButton
    And I wait 5 seconds
    And I select the 0 element from the DDL NuovoFornitore.ULFornitoriTrovati
    And I click NuovoFornitore.Crea
    And I click InfoFornitore.OK
    And I wait 10 seconds
#dopo che ho creato il fornitore torno nella homepage
    And I switch to defaultContentFrame
    And I click InfoFornitore.TornaIndietro
    And I wait 2 seconds
    And I click HomePage.Fornitori
    And I wait 2 seconds
    And I go to the next frame
    And I input in Fornitori.SearchBox the text <Piva>
    And I click Fornitori.SearchIcon
    And I wait 2 seconds
    And I search the supplier 'Prova015A' in the tbody Fornitori.SuppliersTableBody
    And I wait 2 seconds
     #Inserimento dati nella scheda
    And I click AnagraficaFornitore.LinguaggioButton
    And I select the 0 element from the DDL AnagraficaFornitore.ULLinguaggio
    And I click AnagraficaFornitore.ValutaDiRiferimentoButton
    And I input in AnagraficaFornitore.ValutaDiRiferimentoCerca the text 'Euro'
    And I click AnagraficaFornitore.ValutaDiRiferimentoLente
    And I select the 0 element from the DDL AnagraficaFornitore.ValutaDiRiferimentoDDL
    And I click AnagraficaFornitore.AggiungiCommodity
    And I click AnagraficaFornitore.CommodityArrow
    And I select the 0 element from the DDL AnagraficaFornitore.ULCommodity
    And I click AnagraficaFornitore.RegistraCommodity
    And I click General.OKMessage
    And I click AnagraficaFornitore.AggiungiProgetti
    And I click AnagraficaFornitore.ProgettoArrow
    And I select the 0 element from the DDL AnagraficaFornitore.ULProgetto
    And I click AnagraficaFornitore.RegistraProgetto
    And I click General.OKMessage
    #registrazione contatto
    And I click AnagraficaFornitore.NuovoContatto
    And I input in AnagraficaFornitore.NomeContatto the text 'Giuseppe'
    And I input in AnagraficaFornitore.CognomeContatto the text 'Bianchi'
    And I input in AnagraficaFornitore.TelefonoContatto the text '3205568457'
    And I input in AnagraficaFornitore.EmailContatto the text 'emailcontatto@outlook.com'
    And I click AnagraficaFornitore.ArrowRuolo
    And I select the 0 element from the DDL AnagraficaFornitore.ULRuolo
    And I click AnagraficaFornitore.ArrowTimezone
    And I select the 0 element from the DDL AnagraficaFornitore.ULTimezone
    And I click AnagraficaFornitore.SalvaContatto
    And I click General.OKMessage
    # Compilazione scheda Operation Office
    And I scroll down
    And I click AnagraficaFornitore.NuovoUfficioOperativo
    And I input in AnagraficaFornitore.NomeUfficioOperativo the text 'Nome Prova'
    And I click AnagraficaFornitore.TipoIndirizzoArrow
    And I select the 0 element from the DDL AnagraficaFornitore.ULTipoIndirizzo
    And I click AnagraficaFornitore.NazioneButton
    And I input in AnagraficaFornitore.NazioneInput the text 'Francia'
    And I select the 0 element from the DDL AnagraficaFornitore.ULNazione
    And I input in AnagraficaFornitore.Indirizzo the text 'Via Prova 100'
    And I input in AnagraficaFornitore.CodicePostale the text '50524'
    And I input in AnagraficaFornitore.Citta the text 'Parigi'
    And I click AnagraficaFornitore.ProvinciaButton
    And I input in AnagraficaFornitore.ProvinciaInput the text 'Parigi'
    And I select the 0 element from the DDL AnagraficaFornitore.ULProvincia
    And I click AnagraficaFornitore.SalvaUfficioOperativo
    And I wait 2 seconds
    And I click General.OKMessage
    And I wait 2 seconds
    And I click InfoFornitore.OK
    And I click InfoFornitore.SubmitProposal
  #a questo punto ho un problema e non posso inviare la proposta
   #torno nella homepage
    And I switch to defaultContentFrame
    And I click General.Logo
  #appro tile MyInbox e SendToCompliance la richiesta di cambio stato
    And I click HomePage.LaMiaInbox
    And I wait 10 seconds
    And I go to the next frame
    And I select the 0 element from the DDL LaMiaInbox.DDLProposte
    And I click LaMiaInbox.SendToCompliance
    And I wait 30 seconds

    Examples:
      | Piva           |
      | "009354909460" |
