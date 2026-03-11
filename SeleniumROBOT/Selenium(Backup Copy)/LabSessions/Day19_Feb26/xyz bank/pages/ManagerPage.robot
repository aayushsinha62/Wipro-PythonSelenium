*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/variables.robot
*** Keywords ***
Click Add Customer Tab
    Click Element    ${ADD_CUSTOMER_TAB}

Add Customer
    [Arguments]    ${fname}    ${lname}    ${postcode}
    Input Text    ${FIRST_NAME}    ${fname}
    Input Text    ${LAST_NAME}     ${lname}
    Input Text    ${POSTCODE}      ${postcode}
    Click Element    ${ADD_CUSTOMER_BTN}

Handle Alert And Get Text
    ${alert_text}=    Handle Alert    ACCEPT
    RETURN      ${alert_text}

Click Open Account Tab
    Click Element    ${OPEN_ACCOUNT_TAB}

Open Account
    [Arguments]    ${fullname}
    Select From List By Label    ${CUST_DROPDOWN}    ${fullname}
    Select From List By Label    ${CURRENCY_DROPDOWN}    Dollar
    Click Element    ${PROCESS_BTN}

Click Customers Tab
    Click Element    ${CUSTOMERS_TAB}

Verify And Scroll Customer
    [Arguments]    ${fname}    ${lname}
    ${locator}=    Set Variable    xpath=//table//tr[td[text()='${fname}'] and td[text()='${lname}']]
    Wait Until Element Is Visible    ${locator}
    Scroll Element Into View    ${locator}
    Element Should Be Visible    ${locator}