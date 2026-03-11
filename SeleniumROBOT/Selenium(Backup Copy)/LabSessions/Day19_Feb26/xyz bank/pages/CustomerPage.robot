*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/variables.robot
*** Keywords ***
Deposit Amount
    [Arguments]    ${amount}
    Click Element    ${DEPOSIT_TAB}
    Input Text    ${AMOUNT_INPUT}    ${amount}
    Click Element    ${DEPOSIT_BTN}

Withdraw Amount
    [Arguments]    ${amount}
    Click Element    ${WITHDRAW_TAB}
    Input Text    ${AMOUNT_INPUT}    ${amount}
    Click Element    ${WITHDRAW_BTN}

Validate Balance
    [Arguments]    ${expected}
    ${balance}=    Get Text    ${BALANCE_TEXT}
    Should Be Equal    ${balance}    ${expected}