*** Settings ***
Library     SeleniumLibrary
*** Variables ***
${URL}              https://www.saucedemo.com/
${USERNAME}         standard_user
${PASSWORD}         secret_sauce

*** Test Cases ***
Verify SauceDemo Purchase Flow
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Sleep    2s

    # Login
    Input Text    xpath://input[@id='user-name']    ${USERNAME}
    Input Text    xpath://input[@id='password']     ${PASSWORD}
    Click Element  xpath://input[@id='login-button']
    Sleep    3s

    # Add first product to cart
    Click Element  xpath://button[@id='add-to-cart-sauce-labs-backpack']
    Sleep    3s

    # Go to cart
    Click Element  xpath://a[@class='shopping_cart_link']
    Sleep    3s

    # Checkout
    Click Element  xpath://button[@id='checkout']
    Sleep    3s

    # Enter checkout details
    Input Text    xpath://input[@id='first-name']    Priyansu
    Input Text    xpath://input[@id='last-name']     Mohanty
    Input Text    xpath://input[@id='postal-code']   751022
    Sleep    3s

    Click Element  xpath://input[@id='continue']
    Sleep    3s

    # Finish purchase
    Click Element  xpath://button[@id='finish']
    Sleep    3s

    # Verify order completion & go back home
    Click Element  xpath://button[@id='back-to-products']
    Sleep    3s

    Close Browser