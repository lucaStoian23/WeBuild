Feature: T028 Visibiltà dati


  Scenario: T028 Visibiltà dati
    #FORME GIURIDICHE: 0= fornitori diversi/ 1 = pers giuridiche/ 2 = Professionisti/
    #TIPOLOGIE FORNITORE:  0 = AFC/ 1 = PROCUREMENT / 2 = PROCUREMENT & QUALIFICA

    Given I log_in NEW with username c.motta@reply.it and password CM.Webuild.003
    #account non ancora attivo
    #parte della licenza da accettare ancora non l'hanno implementata si passa allo step 4

    And I check that HomePage.Qualifications is displayed
    And I check that HomePage.GeneralData is displayed
    And I click HomePage.GeneralData
    And Wait if it is loading
    And I click General.OKMessage

    And I check that AnagraficaFornitore.SuppliersTableBody is displayed and enabled
    And I click AnagraficaFornitore.SupplierInfoTab

    #creo il contatto primario
    And I check that AnagraficaFornitore.ContactTab is displayed
    And I click AnagraficaFornitore.ContactTab
    And I check that AnagraficaFornitore.NuovoContatto is displayed and enabled
    And I click AnagraficaFornitore.NuovoContatto
    And I input in AnagraficaFornitore.NomeContatto the text 'Marco'
    And I input in AnagraficaFornitore.CognomeContatto the text 'Rossi'
    And I input in AnagraficaFornitore.TelefonoContatto the text '348211499123'
    And I input in AnagraficaFornitore.EmailContatto the text 'emailcontatto@outlook.com'
    And I click AnagraficaFornitore.ArrowRuolo
    And I check that AnagraficaFornitore.ULRuolo is displayed
    And I select the 0 element from the DDL InfoFornitore.ULRuolo
    And I click AnagraficaFornitore.ArrowTimezone
    And I select the 0 element from the DDL InfoFornitore.ULTimezone
    And I click AnagraficaFornitore.ArrowContattoPrimario
    And I select the 0 element from the DDL InfoFornitore.ULContattoPrimario
    And I click AnagraficaFornitore.SalvaContatto
    And I check that General.OKMessage is displayed
    And I click General.OKMessage
    And Wait if it is loading

    #Aggiungo l'ufficio operativo
    And I check that AnagraficaFornitore.OperationalOfficeTab is displayed
    And I click AnagraficaFornitore.OperationalOfficeTab
    And I check that AnagraficaFornitore.NuovoUfficioOperativo is displayed and enabled
    And I click AnagraficaFornitore.NuovoUfficioOperativo
    And I input in AnagraficaFornitore.NomeUfficioOperativo the text 'Nome Ufficio Operativo'
    And I click AnagraficaFornitore.TipoIndirizzoArrow
    And I check that AnagraficaFornitore.ULTipoIndirizzo is displayed
    And I select the 0 element from the DDL AnagraficaFornitore.ULTipoIndirizzo
    And I click AnagraficaFornitore.NazioneButton

    # allego un file
    And I check that AnagraficaFornitore.AttachmentsTab is displayed
    And I click AnagraficaFornitore.AttachmentsTab
    And I check that AnagraficaFornitore.AddDocumentButton is displayed
    And I click AnagraficaFornitore.AddDocumentButton
    And I click AnagraficaFornitore.AttachmentName
    And I input in AnagraficaFornitore.AttachmentName the text 'FileTest'
    And I check that AnagraficaFornitore.AttachmentDescription is displayed
    And I click AnagraficaFornitore.AttachmentDescription
    And I input in AnagraficaFornitore.AttachmentDescription the text 'File Test Allegato'
    And I check that AnagraficaFornitore.AttachmentFileName is displayed
    And I put the attachment cucumber.properties inside RFX.AttachmentField
    And I check that AnagraficaFornitore.AddButton is displayed
    And I click AnagraficaFornitore.AddButton
    And I check that General.OKMessage is displayed
    And I click General.OKMessage

    #controllo che siano presenti questionari
    And I check that AnagraficaFornitore.QualificationTab is displayed
    And I click AnagraficaFornitore.QualificationTab
    And I check that AnagraficaFornitore.QuestionnaireList is displayed
    And I check that AnagraficaFornitore.Questionnaire is displayed


    #NPP administrator
    And I check that HomePage.Fornitori is displayed
    And I check that HomePage.NuovoFornitore is displayed

    #Procurement Manager
    And I check that HomePage.Fornitori is displayed

    #Vendor Management Rating
    And I check that HomePage.Fornitori is displayed
    And I check that HomePage.NuovoFornitore is displayed
    And I check that HomePage.VendorRating is displayed

    #Vendor Management Registration Central,Vendor Management Specialist
    And I check that HomePage.Fornitori is displayed
    And I check that HomePage.NuovoFornitore is displayed
    And I check that HomePage.VendorRating is displayed





