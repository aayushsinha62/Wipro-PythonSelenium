*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem

*** Variables ***
${url}    https://rahulshettyacademy.com/AutomationPractice/


*** Test Cases ***
Verify window
    Open Browser    ${url}    chrome
    # maximize the browser window
    Maximize Browser Window
    Set Selenium Implicit Wait    5s
    Click Element    id=openwindow
    Switch Window    title=QAClick Academy - A Testing Academy to Learn, Earn and Shine
    Title Should Be    QAClick Academy - A Testing Academy to Learn, Earn and Shine
    Switch Window    MAIN
    # close browser
    Close Browser

Verify tab
    Open Browser    ${url}    chrome
    # maximize the browser window
    Maximize Browser Window
    Set Selenium Implicit Wait    5s
    Click Element    id=opentab
    Switch Window    title=QAClick Academy - A Testing Academy to Learn, Earn and Shine
    Title Should Be    QAClick Academy - A Testing Academy to Learn, Earn and Shine
    Switch Window    MAIN
    # close browser
    Close Browser