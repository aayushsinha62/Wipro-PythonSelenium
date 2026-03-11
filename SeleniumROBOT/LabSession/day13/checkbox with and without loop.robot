#*** Settings ***
#Library    SeleniumLibrary
#
#*** Variables ***
#${url}    https://www.tutorialspoint.com/selenium/practice/check-box.php
#
#*** Test Cases ***
#Verify radio buttons
#
#    Open Browser      ${url}           chrome
#    # maximize the browser window
#    Maximize Browser Window
#    # wait till the element is loaded
#    Wait Until Element Is Visible    xpath://input[@id='c_bs_1']
#    #click on check box
#    Click Element    xpath://input[@id='c_bs_1']
#    #close browser
#    Close Browser

*** Settings ***

Library     SeleniumLibrary

*** Variables ***
${url}    https://www.tutorialspoint.com/selenium/practice/check-box.php

*** Test Cases ***
Verify multiselect check box
    Open Browser    ${url}    chrome
    Maximize Browser Window

    # identify the common elements attribute - //input[@type = 'checkbox']
    @{elements}=    Get WebElements    xpath://input[starts-with(@id,'c_bs_')]

    FOR    ${element}    IN    @{elements}
        Click Element    ${element}
        Sleep    2s
    END

    #closebrowser
    Close Browser

