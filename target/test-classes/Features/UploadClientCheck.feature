Feature: Upload Client Check

@not-implemented-yet
@medium    
Scenario:  Check the Checks page title
    Given  The user open the login page
    When   The user enter a valid username "<email>"
    And    The user enter a valid password "<password>"
    And    The user check the remeber me check box
    And    The user click on submit button
    Then   The system should redirect to the dashboard page with the title "ACME System 1 - Dashboard"
    Given  The user open the Checks
    And    The Checks page title is ACME System 1 -  Upload Client Check""
      Examples: 
      | email                      | password    |
      | s.mahallel99@gmail.com     | 123456789a  |


@not-implemented-yet
@medium    
Scenario:  Check the iChecks page header
    Given  The user open the login page
    When   The user enter a valid username "<email>"
    And    The user enter a valid password "<password>"
    And    The user check the remeber me check box
    And    The user click on submit button
    Then   The system should redirect to the dashboard page with the title "ACME System 1 - Dashboard"
    Given  The user open the Checks
    And    The Checks page header is "Checks - Upload Client Check"
      Examples: 
      | email                      | password    |
      | s.mahallel99@gmail.com     | 123456789a  |
      
@not-implemented-yet
@medium    
Scenario:  Check that the Select Check Copy File button opens the file browser
    Given  The user open the login page
    When   The user enter a valid username "<email>"
    And    The user enter a valid password "<password>"
    And    The user check the remeber me check box
    And    The user click on submit button
    Then   The system should redirect to the dashboard page with the title "ACME System 1 - Dashboard"
    Given  The user open the Checks
    When   The user click on Copy File button
    Then   The file browser control should be opened
      Examples: 
      | email                      | password    |
      | s.mahallel99@gmail.com     | 123456789a  |
