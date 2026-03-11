*** Settings ***
#in setting we add the external library details, resources, setups
        #and teardown commands
Library     SeleniumLibrary


*** Test Cases ***
#name of the testcase
Verify login with valid credentials
        Log To Console    Enter username  #log to console displays in console not report. log displays in report
        Log To Console    Enter password
        Log To Console   Click on login button
        Log To Console    User is on the home page

Verify Add to cart functionality


