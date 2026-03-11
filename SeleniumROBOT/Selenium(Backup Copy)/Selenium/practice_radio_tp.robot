*** Settings ***
Library     SeleniumLibrary

*** Variables ***

${url}      https://www.tutorialspoint.com/selenium/practice/radio-button.php

*** Test Cases ***
Verify radio buttons

        Open Browser    ${url}      edge
        Maximize Browser Window


        #wait till the element is visible
        Wait Until Element Is Visible    xpath://a[@href='radio-button.php']
        #click Main Level 1 checkbox
        Click Element    xpath://input[@value='igotthree']

        #close browser
        Close Browser