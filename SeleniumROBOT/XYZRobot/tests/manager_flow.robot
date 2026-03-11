*** Settings ***
Resource    ../resources/browser.robot
Suite Setup    Open XYZ Bank Browser
Suite Teardown    Close XYZ Bank Browser

*** Test Cases ***
Manager Add Customer And Open Account
    Click Button    Bank Manager Login
    Wait Until Page Contains    Add Customer

    Click Button    Add Customer
    Input Text    xpath=//input[@placeholder='First Name']    Aayush
    Input Text    xpath=//input[@placeholder='Last Name']     Sinha
    Input Text    xpath=//input[@placeholder='Post Code']     110011
    Click Button    xpath=//button[@type='submit']
    Handle Alert

    Click Button    Open Account
    Select From List By Label    id=userSelect    Aayush Sinha
    Select From List By Label    id=currency      Dollar
    Click Button    Process
    Handle Alert