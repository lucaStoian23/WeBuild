Feature: T027 creazione fornitore procurement and qualification
  Scenario Outline: T027 creazione fornitore procurement and qualification
    #FORME GIURIDICHE: 0= fornitori diversi/ 1 = pers giuridiche/ 2 = Professionisti/
#TIPOLOGIE FORNITORE:  0 = AFC/ 1 = PROCUREMENT / 2 = PROCUREMENT & QUALIFICA
    Given I log_in NEW with username c.motta@reply.it and password CM.Webuild.003
    And I check that HomePage.VendorRating is displayed
    And I click HomePage.VendorRating
    And I go to the next frame

    #entro in vendor rating e filtro gli elementi
    And I check that VendorRating.SupplierNameButton is displayed and enabled
    And I check that VendorRating.StatusArrow is displayed and enabled
    And I click VendorRating.StatusArrow
    And I check that VendorRating.StatusUL is displayed
    And I select the 1 element from the DDL NuovoFornitore.StatusUL
    And I click VendorRating.SearchButton

    #scelgo il form in draft manualmente

    #compilo i campi per creare il survey e faccio partire la campagna
    And I check that VendorRating.CampaignName is displayed
    And I check that VendorRating.CampaignStartDate is displayed
    And I check that VendorRating.CampaignEndDate is displayed
    And I check that VendorRating.CampaignAddUser is displayed
    And I input in VendorRating.CampaignName the text 'CampagnaProva'
    And I input in VendorRating.CampaignStartDate the text '07/30/2022'
    And I input in VendorRating.CampaignEndDate the text '09/20/2022'
    And I click VendorRating.CampaignAddUser
    And I check that VendorRating.CampaignUserArrow is displayed
    And I check that VendorRating.CampaignSurveyArrow is displayed
    And I check that VendorRating.NewUserRegister is displayed
    And I click VendorRating.CampaignUserArrow
    And I check that VendorRating.CampaignUserUL is displayed
    And I check that NuovoFornitore.StatusUL is displayed
    And I input in VendorRating.CampaignUserSearch the text 'Sara Zouhri(P000290)'
    And I click VendorRating.CampaignSurveyArrow
    And I check that VendorRating.CampaignSurveyUL is displayed
    And I select the 0 element from the DDL NuovoFornitore.StatusUL
    And I click VendorRating.NewUserRegister
    And I check that General.OKMessage is displayed
    And I click General.OKMessage
    And I check that General.OKMessage is not displayed
    And I click VendorRating.NewUserCancel
    And I click VendorRating.StartCampaign

    #adesso il vendor non apparirà piu' in ma come survey assegnata

    #sloggo con l'attuale account e riloggo con l'account associato nel survey

    And I switch to defaultContentFrame
    And I click General.BackToHome
    And I check that General.MenuUtente is displayed
    And I click General.MenuUtente
    And I wait 1 seconds
    And I click General.Logout
    And I check that General.OKMessage is displayed
    And I click General.OKMessage
    And I check that General.LogInAgain is displayed
    And I click General.LogInAgain
    And I wait 5 seconds
    Given I log_in NEW with username s.zouhri@reply.it and password NPP.webuild1







    Examples:
      | Contract     |
      | "4677133333" |