Feature: T027 creazione fornitore procurement and qualification
  Scenario Outline: T027 creazione fornitore procurement and qualification
    #FORME GIURIDICHE: 0= fornitori diversi/ 1 = pers giuridiche/ 2 = Professionisti/
#TIPOLOGIE FORNITORE:  0 = AFC/ 1 = PROCUREMENT / 2 = PROCUREMENT & QUALIFICA
    Given I log_in NEW with username c.motta@reply.it and password CM.Webuild.003
    And I check that HomePage.VendorRating is displayed
    And I click HomePage.VendorRating







    Examples:
      | RagSociale     |
      | "Test"         |