Feature: T001 VendorManager atterraggio HomePage

  Scenario: T001 VendorManager atterraggio HomePage

    Given I navigate to CUCUMBER page
    And I avoid the banner HookPage.AgreePrivacy2
    And I check that HookPage.Title is displayed
    And I click HookPage.ThreeDots
    And I click HookPage.SpringRestTutorial
    And I wait 5 seconds