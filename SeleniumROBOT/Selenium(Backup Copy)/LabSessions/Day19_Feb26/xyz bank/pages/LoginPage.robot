*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/variables.robot

*** Keywords ***
Click Bank Manager Login
    Wait Until Element Is Visible    ${BANK_MANAGER_BTN}    10s
    Sleep    3s
    Click Element    ${BANK_MANAGER_BTN}

Click Customer Login
    Click Element    ${CUSTOMER_LOGIN_BTN}

Click Home
    Click Element    ${HOME_BTN}

Select Customer
    [Arguments]    ${name}
    Select From List By Label    ${USER_DROPDOWN}    ${name}

Click Login
    Click Element    ${LOGIN_BTN}

Get Welcome Text
    ${text}=    Get Text    ${WELCOME_TEXT}
    RETURN    ${text}