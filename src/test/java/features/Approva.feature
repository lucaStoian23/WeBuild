Feature: T003 VendorManager Approva workflow

  Scenario: T003 VendorManager Approva workflow
    Given I log_in with username c.motta@reply.it and password Sysko@003
    And I wait 30 seconds
    And I click HomePage.LaMiaInbox
    And I change the iFrame application-WorkflowTaskReply-DisplayMyInboxReply
    And I select the 2 element from the DDL LaMiaInbox.DDLProposte
    And I click LaMiaInbox.Approve
    And I wait 30 seconds