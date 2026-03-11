*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Library     Collections

*** Variables ***
${url}            https://the-internet.herokuapp.com/drag_and_drop
${file_dir}   C://Users/rionb/PycharmProjects/IMG_8075.jpg


*** Test Cases ***
Verify drag drop
    # Open browser with custom download directory
    Open Browser    ${url}    edge
    Maximize Browser Window

    # Click the file link (your XPath)
    Wait Until Element Is Visible    xpath://div[@id='column-a']
    Sleep    2s
    Drag And Drop    xpath://div[@id='column-a']    xpath://div[@id='column-b']
    Sleep    2s
    Close Browser