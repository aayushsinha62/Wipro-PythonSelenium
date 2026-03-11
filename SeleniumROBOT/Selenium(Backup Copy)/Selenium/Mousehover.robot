*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Library     Collections

*** Variables ***
${url}            https://the-internet.herokuapp.com/hovers
${file_dir}   C://Users/rionb/PycharmProjects/IMG_8075.jpg


*** Test Cases ***
Verify rightclickdoubleclick
    # Open browser with custom download directory
    Open Browser    ${url}    edge
    Maximize Browser Window

    # Click the file link (your XPath)
    Wait Until Element Is Visible    xpath://div[@class='example']//div[1]//img[1]
    Mouse Over    xpath://div[@class='example']//div[1]//img[1]
    Sleep    2s
    Element Should Be Visible    xpath://h5[contains(text(),'name: user1')]
    Sleep    2s
    Close Browser