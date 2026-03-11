*** Settings ***
Library     SeleniumLibrary
*** Keywords ***
Enter Username
        [Arguments]     ${username}
        Wait Until Element Is Visible    xpath://input[@name='username']        10s
        Input Text    xpath://input[@name='username']       ${username}
Enter Password
        [Arguments]     ${password}
        Wait Until Element Is Visible    xpath://input[@name='password']        10s
        Input Text    xpath://input[@name='password']    ${password}
Click Login Button
        Wait Until Element Is Enabled    xpath://button[@type='submit']     10s
        Click Button    xpath://button[@type='submit']
Login With Credentials
        [Arguments]     ${username}     ${password}
        Enter Username    ${username}
        Enter Password    ${password}
        Click Login Button
Verify Login Error Message
        Wait Until Element Is Visible       xpath://p[contains(@class,'oxd-alert-content-text')]        10s
        Element Should Contain      xpath://p[contains(@class,'oxd-alert-content-text')]        Invalid