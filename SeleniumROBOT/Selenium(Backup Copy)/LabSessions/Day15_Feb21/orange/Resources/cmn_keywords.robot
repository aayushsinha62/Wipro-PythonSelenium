*** Settings ***
Library     SeleniumLibrary
Resource        variables.robot

*** Keywords ***
Open Application

        Open Browser    ${url}      ${browser}
        Maximize Browser Window
        Set Selenium Implicit Wait    5s
        Wait Until Element Is Visible    xpath://input[@name='username']    10s
Close Application

        Close Browser