Feature: T001 VendorManager atterraggio HomePage

  Scenario: T001 VendorManager atterraggio HomePage

    Given I navigate to WeBuild page
    And I wait 1 seconds
    And I click WeBuildLogInPage.DefaultIdentityProvider
    And I wait 1 seconds
    And I input in WeBuildLogInPage.LogInField the text "c.motta@reply.it"
    And I wait 1 seconds
    And I click WeBuildLogInPage.Continuare
    And I wait 1 seconds
    And I input in WeBuildLogInPage.PasswordField the text "Sysko@003"
    And I wait 1 seconds
    And I click WeBuildLogInPage.SignIn
    And I wait 20 seconds
