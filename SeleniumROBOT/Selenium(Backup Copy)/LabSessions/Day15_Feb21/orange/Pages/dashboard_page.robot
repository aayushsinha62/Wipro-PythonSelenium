*** Settings ***
Library     SeleniumLibrary
*** Keywords ***
Verify Dashboard Is Visible
        Wait Until Element Is Visible    xpath://h6[normalize-space()='Dashboard']    10s
Navigate To Personal Details
    Wait Until Element Is Visible    xpath://span[normalize-space()='My Info']    10s
    Click Element                    xpath://span[normalize-space()='My Info']
    Wait Until Element Is Visible    xpath://input[@name='firstName']    10s