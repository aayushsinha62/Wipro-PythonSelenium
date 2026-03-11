*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Library     Collections

*** Variables ***
${url}            https://www.tutorialspoint.com/selenium/practice/droppable.php
${file_dir}   C://Users/rionb/PycharmProjects/IMG_8075.jpg


*** Test Cases ***
Verify file upload
    # Open browser with custom download directory
    Open Browser    ${url}    edge
    Maximize Browser Window

    # Click the file link (your XPath)
    Wait Until Element Is Visible    xpath://div[@id='draggable']
    Sleep    2s
    Drag And Drop    xpath://div[@id='draggable']    xpath://div[@id='droppable']
    Sleep    2s
    Close Browser