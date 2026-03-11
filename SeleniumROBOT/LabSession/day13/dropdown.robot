*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://www.tutorialspoint.com/selenium/practice/selenium_automation_practice.php

*** Test Cases ***
Verify drop downs
    Open Browser    ${url}    chrome
    Maximize Browser Window

    Wait Until Element Is Visible    id=state

    @{labels}=    Get Selected List Labels    id=state
    Log    ${labels}

    # select by label - visible text
    Select From List By Label    id=state    Uttar Pradesh
    Sleep    2s

    # select by index
    Select From List By Index    id=state    2
    Sleep    2s

    # select by value
    Select From List By Value    id=state    Uttar Pradesh
    Sleep    2s


    Wait Until Element Is Visible    id=city

    @{labels}=    Get Selected List Labels    id=state
    Log    ${labels}

    # select by label - visible text
    Select From List By Label    id=city    Lucknow
    Sleep    2s

    # select by index
    Select From List By Index    id=city    2
    Sleep    2s

    # select by value
    Select From List By Value    id=city    Lucknow
    Sleep    2s

    Close Browser
