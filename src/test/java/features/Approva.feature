Feature: T003 VendorManager Approva workflow

  Scenario: T003 VendorManager Approva workflow
    Given I log_in NEW with username c.motta@reply.it and password CM.Webuild.003
    And I wait 10 seconds
    And I click HomePage.Fornitori
    And I wait 10 seconds
    #And I change the iFrame 'application-NPPFornitori-Display'
    And I go to the next frame
    And I input in Fornitori.SearchBox the text 'asd'
    And I click Fornitori.SearchIcon
    And I wait 5 seconds
    And I search the supplier 'ASD' in the tbody Fornitori.SuppliersTableBody
    And I wait 31 seconds
