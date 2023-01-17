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
      
@not-implemented-yet
@medium    
Scenario:  Check that clicking on the Upload Check Copy button with empty fields appear with an error message 
    Given  The user open the login page
    When   The user enter a valid username "<email>"
    And    The user enter a valid password "<password>"
    And    The user check the remeber me check box
    And    The user click on submit button
    Then   The system should redirect to the dashboard page with the title "ACME System 1 - Dashboard"
    And    The user open the Checks
    Given  The user enter a Client Request ID "<clientRequestID>"
    And    The user enter a Check Number "<checkNumber>"
    And    The user click on Copy File button
    And    The user Select a file "<fileName>"
    When   The user click on Copy File button
    Then   An error message should appear "Plase fill in the fields which are required!"
      Examples: 
      | email                      | password    | clientRequestID  | checkNumber | fileName
      | s.mahallel99@gmail.com     | 123456789a  |                  | 123         | image.pdf
      | s.mahallel99@gmail.com     | 123456789a  | 123              |             | image.pdf
      | s.mahallel99@gmail.com     | 123456789a  | 123              | 123         | 

@not-implemented-yet
@important
Scenario:  Check that clicking on the Upload Check Copy button with full fields appear with a successful message 
    Given  The user open the login page
    When   The user enter a valid username "<email>"
    And    The user enter a valid password "<password>"
    And    The user check the remeber me check box
    And    The user click on submit button
    Then   The system should redirect to the dashboard page with the title "ACME System 1 - Dashboard"
    And    The user open the Checks
    Given  The user enter a Client Request ID "<clientRequestID>"
    And    The user enter a Check Number "<checkNumber>"
    And    The user click on Copy File button
    And    The user Select a file "<fileName>"
    When   The user click on Copy File button
    Then   An error message should appear "xxxx"
      Examples: 
      | email                      | password    | clientRequestID  | checkNumber | fileName
      | s.mahallel99@gmail.com     | 123456789a  | 123              | 123         | image.pdf

      
      
