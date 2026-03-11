*** Settings ***
Library    SeleniumLibrary

*** Keywords ***

Update First Name
    [Arguments]    ${firstname}

    Wait Until Element Is Visible    xpath://input[@name='firstName']    10s
    Clear Element Text      xpath://input[@name='firstName']
    Input Text    xpath://input[@name='firstName']    ${firstname}

    Run Keyword And Ignore Error
    ...    Wait Until Element Is Not Visible
    ...    xpath://div[contains(@class,'oxd-form-loader')]
    ...    10s

    Click Button    xpath:(//button[@type='submit'])[1]

    Wait Until Element Is Visible    xpath://div[contains(@class,'oxd-toast')]    10s

Verify Personal Details Saved
    Wait Until Element Is Visible
    ...    xpath://div[contains(@class,'oxd-toast')]
    ...    10s
    Element Should Contain
    ...    xpath://div[contains(@class,'oxd-toast')]
    ...    Successfully