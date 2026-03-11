*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}      https://www.globalsqa.com/angularJs-protractor/BankingProject/#/login
${BROWSER}  chrome

*** Keywords ***
Open XYZ Bank Browser
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

Close XYZ Bank Browser
    Close Browser