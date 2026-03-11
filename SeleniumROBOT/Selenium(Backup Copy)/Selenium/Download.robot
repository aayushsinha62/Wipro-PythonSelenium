*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem

*** Variables ***
${url}            https://the-internet.herokuapp.com/download
${download_dir}   C:/Users/rionb/Downloads
${file_name}      upload.txt

*** Test Cases ***
Verify file download
    # Open browser with custom download directory
    Open Browser    ${url}    edge
    Maximize Browser Window

    # Click the file link (your XPath)
    Wait Until Element Is Visible    xpath://a[normalize-space()='upload.txt']
    Click Element    xpath://a[normalize-space()='upload.txt']

    # Wait for download to complete
    Sleep    3s

    # Verify file is downloaded
    File Should Exist    ${download_dir}/${file_name}

    Close Browser