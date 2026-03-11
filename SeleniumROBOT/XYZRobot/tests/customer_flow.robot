*** Settings ***
Resource    ../resources/browser.robot
Suite Setup    Open XYZ Bank Browser
Suite Teardown    Close XYZ Bank Browser

*** Test Cases ***
Customer Transaction Flow
    Click Button    Customer Login
    Wait Until Element Is Visible    id=userSelect

    Select From List By Label    id=userSelect    Hermoine Granger
    Click Button    Login
    Wait Until Page Contains    Welcome

    ${before}=    Get Text    xpath=//strong[2]

    Click Button    Deposit
    Input Text
    ...    xpath=//form[contains(@ng-submit,'deposit')]//input
    ...    1000
    Click Button    xpath=//button[@type='submit']
    Wait Until Page Contains    Deposit Successful

    Click Button    Withdraw
    Input Text
    ...    xpath=//form[contains(@ng-submit,'withdrawl')]//input
    ...    200
    Click Button    xpath=//button[normalize-space()='Withdraw']
    Wait Until Page Contains    Transaction

    ${after}=    Get Text    xpath=//strong[2]

    Click Button    Logout
    Click Button    Home