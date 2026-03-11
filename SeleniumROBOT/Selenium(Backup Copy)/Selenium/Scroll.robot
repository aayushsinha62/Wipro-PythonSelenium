*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Library     Collections

*** Variables ***
${url}            https://www.amazon.in/
${file_dir}   C://Users/rionb/PycharmProjects/IMG_8075.jpg


*** Test Cases ***
Verify rightclickdoubleclick
    # Open browser with custom download directory
    Open Browser    ${url}    edge
    Maximize Browser Window
    Sleep    2s
    Scroll Element Into View    link=Sell on Amazon
    Sleep    2s
    # Click the file link (your XPath)
    Click Element    link=Sell on Amazon
    Sleep    2s
    Title Should Be    Amazon.in: Selling on Amazon - Start Selling Now

    Close Browser