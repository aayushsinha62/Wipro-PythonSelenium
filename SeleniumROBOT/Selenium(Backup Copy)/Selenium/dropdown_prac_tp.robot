#selecting by visible test
#selecting by index
#selecting by value

*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}      https://www.tutorialspoint.com/selenium/practice/selenium_automation_practice.php

*** Test Cases ***
Verify drop downs

        Open Browser        ${url}      edge
        #maximize the browser window
        Maximize Browser Window
        Wait Until Element Is Visible    id=state
        @{labels}=      Get Selected List Labels    id=state
        Log    ${labels}
        #select by label - visible text
        Select From List By Label    id=state      Uttar Pradesh
        Sleep    2s
        @{labels1}=      Get Selected List Labels    id=city
        Log    ${labels1}
        #select by value
        Select From List By Value    id=city       Lucknow

        Sleep    2s

        Close Browser