Feature: T010 VendorManager Nuovo Fornitore Italia "DITC - DIFFERENT SUPPLIERS/SUBAPP. CEE", supplier type= procurement , senza BVD
  Scenario Outline: T010 VendorManager Nuovo Fornitore
    #FORME GIURIDICHE: 0= fornitori diversi/ 1 = pers giuridiche/ 2 = Professionisti/
#TIPOLOGIE FORNITORE:  0 = AFC/ 1 = PROCUREMENT / 2 = PROCUREMENT & QUALIFICA
    And I delete the supplier with <RagioneSociale>

    Given I log_in NEW with username c.motta@reply.it and password CM.Webuild.003


    And I check that HomePage.NuovoFornitore is displayed
    And I click HomePage.NuovoFornitore
    And Wait if it is loading
    And I go to the next frame
    And Wait if it is loading
    And I check that NuovoFornitore.NazioneButton is displayed
    And I click NuovoFornitore.NazioneButton
    And I check that NuovoFornitore.NazioneCerca is displayed
    And I input in NuovoFornitore.NazioneCerca the text 'Italy'
    And I click NuovoFornitore.Clessidra
    And I click NuovoFornitore.NazioneTrovata
    And I click NuovoFornitore.FormaGiuridicaButton
    And I select the 0 element from the DDL NuovoFornitore.ULFormeGiuridiche
    And I click NuovoFornitore.TipologiaFornitoreButton
    And I check that NuovoFornitore.ULTipologieFornitore is displayed
    And I select the 0 element from the DDL NuovoFornitore.ULTipologieFornitore
    And I input in NuovoFornitore.RagioneSociale the text <RagioneSociale>
    And I click NuovoFornitore.SearchInfoProviderButton
    And Wait if it is loading
    And I check that NuovoFornitore.ULFornitoriTrovati is displayed
    #senza BVD
    And I click NuovoFornitore.Annulla
    #la partita iva deve essere un numero reale
    And I input in NuovoFornitore.PartitaIva the text <PartitaIva>
    And I input in NuovoFornitore.CodiceFiscale the text <CodiceFiscale>
    And I input in NuovoFornitore.PartitaIvaCEE the text <PartitaIvaCEE>
    And Wait if it is loading
    And I click NuovoFornitore.Crea
    And Wait if it is loading
    And I check that General.OKMessage is displayed
    And I click General.OKMessage
    And I wait 3 seconds


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
    And I click InfoFornitore.SalvaContatto
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
    And I click InfoFornitore.SalvaUfficioOperativo
    And I wait 3 seconds
    And I click General.OKMessage

    #invio la proposta
    And I wait 4 seconds
    And I click InfoFornitore.InviaProposta
    And I wait 5 seconds
    And I click General.OKMessage
    #controllo il nuovo status
    And I wait 2 seconds
    And I check that the element AnagraficaFornitore.Status contains the text 'Registrato AFC'

   #dopo che ho creato il fornitore in draft torno nella homepage
    And I switch to defaultContentFrame
    And I click InfoFornitore.TornaIndietro
    And I wait 5 seconds
    And I click HomePage.Fornitori
    And I wait 10 seconds
    And I go to the next frame
    And I input the codFiscale in Fornitori.SearchBox
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
    #devo fargli una richiesta di cambio stato afc proc
    #0=cessato,1=duplicato,2=fallito,3=afc>proc,4=derogaRFX,5=incorporato,6=modificheVM,7=revocato,8=sospeso
    And I click AnagraficaFornitore.TabRequest
    And I click AnagraficaFornitore.AddRequest
    And I click Request.arrowChose
    And I select the 3 element from the DDL Request.DDLChoseStatus
    And I input in Request.addNotes the text 'test richiesta di cambio stato duplicato'
    #qui aggiungo a mano un attachment
    And I wait 30 seconds
    And I click Request.add
    And I wait 4 seconds
#ora aspetto devo approvare la richiesta, devo approvarla usando tantissimi account diversi.
  #torno nella homepage
    And I switch to defaultContentFrame
    And I click General.Logo
  #appro tile MyInbox e approvo la richiesta di cambio stato
    And I click HomePage.LaMiaInbox
    And I wait 4 seconds
    And I go to the next frame
    And I select the 0 element from the DDL LaMiaInbox.DDLProposte
    And I click LaMiaInbox.Approve
    And I wait 5 seconds
  #torno nella vendor List
    And I switch to defaultContentFrame
    And I click General.logo
    And I wait 5 seconds
    And I click HomePage.Fornitori
    And I wait 4 seconds
    And I go to the next frame
    And I input the codFiscale in Fornitori.SearchBox
    And I click Fornitori.SearchIcon
    And I wait 5 seconds
    And I search the supplier 'mang' in the tbody Fornitori.SuppliersTableBody
    And I wait 4 seconds
    And I go to the next frame

    Examples:
      | CodiceFiscale       | PartitaIvaCEE | PartitaIva      | RagioneSociale   |
      | "STFSLA41A73AB5h9Z" | ""            | "009341609460"  | "TestVendor10"   |