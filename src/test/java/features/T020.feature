Feature: T020 VendorManager Registration supplier procurement and qualification Italia GITC - PROFES. PERS. GIUR. ITALIA CEE without BVD, rejected
  Scenario Outline: T020 VendorManager Nuovo Fornitore Italia "DITC - DIFFERENT SUPPLIERS/SUBAPP. CEE", supplier type= procurement , senza BVD
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
    And I input in NuovoFornitore.RagioneSociale the text <RagSociale>
    #cambiare partita iva per il controllo dei duplicati
    And I input in NuovoFornitore.PartitaIva the text 'inserire PIVA'
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
    And I wait 5 seconds
    And I input in Fornitori.SearchBox the text <RagSociale>
    And I click Fornitori.SearchIcon
    And I click Fornitori.SearchFirstChoice
    And I wait 5 seconds
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
    And I input in AnagraficaFornitore.NazioneInput the text 'Italia'
    And I select the 0 element from the DDL AnagraficaFornitore.ULNazione
    And I input in AnagraficaFornitore.Indirizzo the text 'Via Prova 100'
    And I input in AnagraficaFornitore.CodicePostale the text '50524'
    And I input in AnagraficaFornitore.Citta the text 'Milano'
    And I click AnagraficaFornitore.ProvinciaButton
    And I input in AnagraficaFornitore.ProvinciaInput the text 'Milano'
    And I select the 0 element from the DDL AnagraficaFornitore.ULProvincia
    And I click AnagraficaFornitore.SalvaUfficioOperativo
    And I wait 2 seconds
    And I click General.OKMessage
      #qui aggiungo a mano un attachment
    And I wait 30 seconds
    And I click Request.add
    And I wait 30 seconds
    And I click InfoFornitore.SubmitProposal
  #a questo punto ho un problema e non posso inviare la proposta
   #torno nella homepage
    And I switch to defaultContentFrame
    And I click General.Logo
  #appro tile MyInbox e Approve la richiesta di cambio stato
    And I click HomePage.LaMiaInbox
    And I wait 10 seconds
    And I go to the next frame
    And I select the 0 element from the DDL LaMiaInbox.DDLProposte
    And I click LaMiaInbox.Approve
    And I wait 30 seconds
    #torno a Fornitori
    And I switch to defaultContentFrame
    And I click General.logo
    And I wait 5 seconds
    And I click HomePage.Fornitori
    And I wait 10 seconds
    And I go to the next frame
    And I input in Fornitori.SearchBox the text <RagSociale>
    And I click Fornitori.SearchIcon
    And I wait 5 seconds
    And I search the supplier 'mang' in the tbody Fornitori.SuppliersTableBody
    And I wait 4 seconds
    And I go to the next frame


    Examples:
      | RagSociale     |
      | "Test"         |