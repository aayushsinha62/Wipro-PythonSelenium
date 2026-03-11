*** Settings ***
Library           DataDriver    ../data/test_data.xlsx
Resource          ../resources/common.resource
Resource          ../pages/LoginPage.robot
Resource          ../pages/ManagerPage.robot
Resource          ../pages/CustomerPage.robot
Test Setup        Open Application
Test Teardown     Close Application
Test Template     Execute Flow


*** Test Cases ***
XYZ Bank E2E


*** Keywords ***
Execute Flow
    ${fullname}=    Set Variable    ${first_name} ${last_name}

    Click Bank Manager Login
    Click Add Customer Tab
    Add Customer    ${first_name}    ${last_name}    ${postcode}
    ${alert}=    Handle Alert And Get Text
    Should Contain    ${alert}    Customer added successfully

    Click Open Account Tab
    Open Account    ${fullname}
    Handle Alert

    Click Customers Tab
    Verify And Scroll Customer    ${first_name}    ${last_name}

    Click Home
    Click Customer Login
    Select Customer    ${fullname}
    Click Login

    Deposit Amount    ${deposit}
    Validate Balance    ${deposit}

    Withdraw Amount    ${withdraw}
    ${expected}=    Evaluate    ${deposit} - ${withdraw}
    Validate Balance    ${expected}