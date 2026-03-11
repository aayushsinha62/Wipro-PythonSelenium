*** Settings ***
Library     SeleniumLibrary
*** Variables ***
${url}      https://www.tutorialspoint.com/selenium/practice/alerts.php
${url2}     https://rahulshettyacademy.com/AutomationPractice/
*** Test Cases ***
Verify alerts (practice)

    Open Browser    ${url}    chrome
    Maximize Browser Window

    Wait Until Element Is Visible    xpath=(//button)[6]
    Click Element    xpath=(//button)[6]

    # Informational alert - accept is for OK button
    Handle Alert    action=ACCEPT    timeout=3
    Sleep    5s

    Click Element    xpath=(//button)[7]

    # Confirmational alert - accept is for OK button, dismiss is for Cancel button
    Handle Alert    action=ACCEPT    timeout=5
    Sleep    5s


    Click Element    xpath=(//button)[8]

    # Confirmational alert - accept is for OK button, dismiss is for Cancel button
    Handle Alert    action=DISMISS    timeout=5
    Sleep    5s

    # Prompt alert - no need to give handle alert in this as Input Text Into Alert handles automatically
    Click Element    xpath=(//button)[9]
    Input Text Into Alert    Hello
    Sleep    2s

    Close Browser
*** Test Cases ***
Verify drop downs
    Open Browser    ${url2}    chrome
    Maximize Browser Window

    Wait Until Element Is Visible    id=alertbtn
    Click Element    id=alertbtn

    # Informational alert - accept is for OK button
    Handle Alert    action=ACCEPT    timeout=3
    Sleep    5s

    Click Element    id=confirmbtn

    # Confirmational alert - accept is for OK button, dismiss is for Cancel button
    Handle Alert    action=DISMISS    timeout=5
    Sleep    5s