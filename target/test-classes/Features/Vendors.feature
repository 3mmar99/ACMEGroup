Feature:Vendors

@VendorsAccessability 
 Scenario: check the page title 
    Given  The user open add vendors page
    Then   The page title should be is "Vendors - Add Vendor"
    
@successfulAdd
 Scenario Outline:add new vendor successfully
    Given the user access add vendors page
    
    And entered the vendor tax "<idnumber>"
    And entered the "<name>"
    And the user entered the Address"<address>"
    And add the city "<city>"
    And entered the country "<country>"
    Then the user clicked save vender button
    Then a "<confirmation message>" appear and the user click ok button.

    Examples:
    | idnumber    |name|address|city|country| confirmation message|
    |  123456789  |max |cairo   |giza|Egypt |  Vendor was saved!  |

@FailuerScenario1
 Scenario Outline:add only Vendor IDtax number
 Given the user accessed the add vendor pageAnd the user add only the vender "<idnumber>"
 And clicked save button
 Then the system should appear "<error message>"
 Examples:
 |idnumber|error message                                             |
 |223311  |Please fill in all the fields, as they are all required!  |

@FailuerScenario2
 Scenario Outline:add only Vendor name
 Given the user accessed the add vendor pageAnd the user add only the vender "<name>"
 And clicked save button
 Then the system should appear "<error message>"
 Examples:
  |name    |error message                                            |
  |max car | Please fill in all the fields, as they are all required!|

@FailuerScenario3
 Scenario Outline:add only Vendor address
 Given the user accessed the add vendor pageAnd the user add only the vender "<address>"
 And clicked save button
 Then the system should appear "<error message>"
 Examples:
 |address   | error message                                            |
 |cairo     | Please fill in all the fields, as they are all required!   |

@FailuerScenario4
 Scenario Outline:add only Vendor city
 Given the user accessed the add vendor pageAnd the user add only the vender "<city>"
 And clicked save button
 Then the system should appear "<error message>"
 Examples:
 |city   |error message                                            |
 | giza  | Please fill in all the fields, as they are all required!|

@FailuerScenario5
 Scenario Outline:add only Vendor country
 Given the user accessed the add vendor pageAnd the user add only the vender "<country>"
 And clicked save button
 Then the system should appear "<error message>"
 Examples:
 |country  | error message                                            |
 |Egypt    | Please fill in all the fields, as they are all required!|

@FailuerScenario
 Scenario:click add with no data entered
 Given the user accessed the add vendor page and click directly save with no entered data
 Then the system should appear the following error message "Please fill in all the fields, as they are all required!"

@EnterAllDataAsNumbers 
 Scenario Outline:add data as numbers only
    Given the user access add vendors page
    
    And entered the vendor tax "<idnumber>"
    And entered the "<name>"
    And the user entered the Address"<address>"
    And add the city "<city>"
    And entered the country "<country>"
    Then the user clicked save vender button
    Then a "<confirmation message>" appear and the user click ok button.

    Examples:
    | idnumber    |name|address|city|country| confirmation message|
    |  123456789  |123 |5555   |2222|222222 |  Vendor was saved!  |

    @AllfieldsAreEmptyAftersave
 Scenario:make sure all fields are empty after clicking save button
    Given the user access add vendors page
    And entered the vendor tax "123456789"
    And entered the "max"
    And the user entered the Address"cairo"
    And add the city "giza"
    And entered the country "Egypt"
    Then the user clicked save vender button
    Then a "Vendor was saved!" appear and the user click ok button.
    Then the user should see all fields are empty

 



 





    