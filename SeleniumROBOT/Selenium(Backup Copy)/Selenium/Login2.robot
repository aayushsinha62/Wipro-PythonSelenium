*** Settings ***
Library     SeleniumLibrary

*** Variables ***

${url}      https://www.saucedemo.com/

*** Test Cases ***
Verify login scenario with valid credentials

        Open Browser    ${url}      edge
        Maximize Browser Window
        #wait till the element is visible
        Wait Until Element Is Visible    xpath://input[@id='user-name']
        #enter the text in the username field
        Input Text    xpath://input[@id='user-name']    standard_user
        #enter text into the password
        Input Text    xpath://input[@id='password']    secret_sauce
        #click login button
        Click Element    xpath://input[@id='login-button']
        #validate that the user is on the home page
        Wait Until Element Is Visible    xpath://div[@class='app_logo']
        Element Should Be Visible    xpath://div[@class='app_logo']
        #close browser
        Close Browser