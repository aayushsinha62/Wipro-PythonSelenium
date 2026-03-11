*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/CommonKeywords.robot
Resource   ../resources/Variables.robot

Test Setup       Open Browser And Launch Application
Test Teardown    Close Application


*** Test Cases ***
TC_01 Verify Successful Employee Login
    # ---- Enter Username ----
    Input Text        xpath=//input[@name="username"]    ${VALID_USER}

    # ---- Enter Password ----
    Input Password    xpath=//input[@name="password"]    ${VALID_PASS}

    # ---- Click Login ----
    Click Button      xpath=//button[@type="submit"]

    # ---- Verify Successful Login ----
    Sleep    20s
    Wait Until Page Contains Element    xpath=//span[text()='Dashboard']


TC_02 Verify Error Message On Invalid Login
    # ---- Enter Username ----
    Input Text        xpath=//input[@name="username"]    ${VALID_USER}

    # ---- Enter Invalid Password ----
    Input Password    xpath=//input[@name="password"]    wrong

    # ---- Click Login ----
    Click Button      xpath=//button[@type="submit"]

    # ---- Verify Error Message ----
    Wait Until Page Contains    Invalid credentials