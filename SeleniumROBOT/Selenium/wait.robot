*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem

*** Variables ***
${url}            https://the-internet.herokuapp.com/upload
${file_dir}   C://Users/rionb/PycharmProjects/IMG_8075.jpg


*** Test Cases ***
Verify file upload
    # Open browser with custom download directory
    Open Browser    ${url}    edge
    Maximize Browser Window
    Set Selenium Implicit Wait    1s    #--->implicit wait applied to all elements
    # Click the file link (your XPath)
    Wait Until Element Is Visible    xpath:input[id='file-upload']
    Set Browser Implicit Wait    1s
    Choose File    xpath://input[@id='uploadFile']     ${file_dir}

    Click Element    xpath://input[@id='file-submit']

    # Wait for download to complete
    Sleep    3s
    Element Text Should Be    xpath://h3[normalize-space()='File Uploaded!']    File Uploaded!

    Sleep    2s

    Close Browser