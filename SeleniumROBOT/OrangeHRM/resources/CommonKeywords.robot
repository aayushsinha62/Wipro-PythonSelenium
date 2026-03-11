*** Settings ***
Library    SeleniumLibrary
Variables  Variables.robot

*** Keywords ***
Open Browser And Launch Application
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Sleep    10s
    Wait Until Page Contains Element    xpath=//input[@name="username"]

Close Application
    Close Browser