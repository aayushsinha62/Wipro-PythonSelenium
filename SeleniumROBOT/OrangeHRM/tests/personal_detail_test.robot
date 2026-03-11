*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/CommonKeywords.robot
Resource   ../resources/Variables.robot

Suite Setup       Open Browser And Launch Application
Suite Teardown    Close Application


*** Test Cases ***
TC_03 Verify First Name Modification
    # ---- Login ----
    Input Text        xpath=//input[@name="username"]    ${VALID_USER}
    Input Password    xpath=//input[@name="password"]    ${VALID_PASS}
    Click Button      xpath=//button[@type="submit"]
    Wait Until Page Contains Element    xpath=//span[text()='Dashboard']    20s


    # ---- Navigate to My Info ----
    Click Element    xpath=//span[normalize-space()='My Info']
    Sleep    10s

    # ---- Change First Name ----
    Execute JavaScript
    ...    var input = document.getElementsByName('firstName')[0];
    ...    input.value = '';
    ...    input.dispatchEvent(new Event('input', { bubbles: true }));
    ...    input.value = 'Aayush';
    ...    input.dispatchEvent(new Event('input', { bubbles: true }));

    Scroll Element Into View    xpath=(//button[@type='submit'])[1]
    Click Button               xpath=(//button[@type='submit'])[1]

    Sleep    10s

TC_03 Verify First Name Change Verification
    Scroll Element Into View    xpath=//input[@name='firstName']
    Element Attribute Value Should Be
    ...    xpath=//input[@name='firstName']
    ...    value
    ...    Aayush

TC_03 Verify Disabled Fields
    # ---- Verify Disabled Fields ----
    Run Keyword And Continue On Failure
    ...    Element Should Be Disabled
    ...    xpath=(//input[@class='oxd-input oxd-input--active'])[2]

    Run Keyword And Continue On Failure
    ...    Element Should Be Disabled
    ...    xpath=(//input[@class='oxd-input oxd-input--active'])[1]

    Run Keyword And Continue On Failure
    ...    Element Should Be Disabled
    ...    xpath=(//input[@placeholder='yyyy-dd-mm'])[2]