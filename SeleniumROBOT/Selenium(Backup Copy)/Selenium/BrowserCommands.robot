*** Settings ***
Library     SeleniumLibrary

*** Variables ***

${url}      https://the-internet.herokuapp.com/

*** Test Cases ***
Verify Browser Commands

        Open Browser    ${url}      edge
        Maximize Browser Window
        Set Selenium Implicit Wait    3s
        Go Back
        Sleep    2s
        Go To    ${url}
        Sleep    2s
        Reload Page
        Sleep    3s
        #close browser
        Close Browser