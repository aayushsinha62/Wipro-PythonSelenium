*** Settings ***
Library     SeleniumLibrary

*** Variables ***

${url}      https://www.tutorialspoint.com/selenium/practice/check-box.php

*** Test Cases ***
Verify radio buttons

        Open Browser    ${url}      edge
        Maximize Browser Window


        #wait till the element is visible
        Wait Until Element Is Visible    xpath://input[@id='c_bs_1']
        #click Main Level 1 checkbox
        Click Element    xpath://input[@id='c_bs_1']
        #click on Main Level 2 checkbox
        Click Element    xpath://input[@id='c_bs_2']
        #close browser
        Close Browser