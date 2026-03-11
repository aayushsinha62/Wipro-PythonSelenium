*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem

*** Variables ***
${url}            https://the-internet.herokuapp.com/upload
${download_dir}   C:/Users/rionb/Downloads
${file_name}      upload.txt

*** Test Cases ***
Verify file upload
    # Open browser with custom download directory
    Open Browser    ${url}    edge
    Maximize Browser Window

    # Click the file link (your XPath)
    Wait Until Element Is Visible    xpath://input[@id='file-upload']
    Choose File    xpath://input[@id='file-upload']     C://Users/rionb/PycharmProjects/IMG_8075.jpg
    Capture Element Screenshot    xpath://input[@id='file-submit']    Robo6.png
    Log To Console    Successfully captured element screenshot: Robo6.png
    Click Element    xpath://input[@id='file-submit']

    # Wait for download to complete
    Sleep    3s
    Element Text Should Be    xpath://h3[normalize-space()='File Uploaded!']    File Uploaded!
    Capture Page Screenshot    Robo5.png
    Log To Console    \nSuccessfully captured full page screenshot: Robo5.png
    Sleep    2s

    Close Browser