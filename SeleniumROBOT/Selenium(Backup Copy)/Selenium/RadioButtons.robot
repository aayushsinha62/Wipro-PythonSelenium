*** Settings ***
Library     SeleniumLibrary

*** Variables ***

${url}      https://rahulshettyacademy.com/AutomationPractice/

*** Test Cases ***
Verify radio buttons

        Open Browser    ${url}      edge
        Maximize Browser Window


        #wait till the element is visible
        Wait Until Element Is Visible    xpath://input[@value='radio1']
        #click radio(1) button
        Click Element    xpath://input[@value='radio1']
        #click on checkbox(3)
        Click Element    xpath://input[@id='checkBoxOption3']
        #close browser
        Close Browser