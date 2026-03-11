*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${URL}    https://www.globalsqa.com/angularJs-protractor/BankingProject/#/login
${BROWSER}    chrome


*** Keywords ***
Open Application
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    0.5s
    Wait Until Page Contains Element    xpath=//button[contains(text(),'Manager')]    10s
    Sleep    3s

Close Application
    Sleep    3s
    Close Browser