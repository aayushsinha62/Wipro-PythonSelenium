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

    # Click the file link (your XPath)
    Wait Until Element Is Visible    xpath://a[normalize-space()='Sell']
    Open Context Menu    xpath://a[normalize-space()='Sell']
    Sleep    2s
    Double Click Element    xpath://a[normalize-space()='Mobiles']
    Sleep    2s
    Close Browser