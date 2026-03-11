*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem

*** Variables ***
${url}    https://www.amazon.in/


*** Test Cases ***
Verify link texts
    Open Browser    ${url}    firefox
    # maximize the browser window
    Maximize Browser Window
    Set Selenium Implicit Wait    5s
    Click Element    link=Click Here
    @{windows}=    Get Window Handles
    Log To Console    ${windows}
    @{titles}=     Get Window Titles
    Log To Console    ${titles}
    Switch Window    title=New Window
    Element Text Should Be    xpath://h3[contains(text(),'New Window')]    New Window
    Switch Window    MAIN
    # close browser
    Close Browser