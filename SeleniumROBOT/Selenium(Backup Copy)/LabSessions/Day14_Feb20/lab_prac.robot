*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}       https://practice.automationtesting.in/
${BROWSER}   edge
${country}   India
${state}     Orissa

*** Test Cases ***
Verify Add To Cart And Checkout Flow

    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Implicit Wait    5s

    Wait Until Element Is Visible    xpath://a[@href='https://practice.automationtesting.in/shop/']
    Click Element                    xpath://a[@href='https://practice.automationtesting.in/shop/']

    Wait Until Element Is Visible    xpath://a[@data-product_id='160']
    ${product}=    Get WebElement    xpath=//a[@data-product_id='160']
    Execute JavaScript    arguments[0].scrollIntoView({block: 'center'});    ARGUMENTS    ${product}
    Click Element    xpath://a[@data-product_id='160']

    Wait Until Element Is Visible    xpath://a[@title='View Basket']
    Click Element    xpath://a[@title='View Basket']

    Wait Until Element Is Visible    xpath://a[@href='https://practice.automationtesting.in/checkout/']
    Click Element    xpath://a[@href='https://practice.automationtesting.in/checkout/']

    Wait Until Element Is Visible    id=billing_first_name
    Input Text    id=billing_first_name    Rion
    Input Text    id=billing_last_name     Test
    Input Text    id=billing_email         test@email.com
    Input Text    id=billing_phone         9876543210

    #Direct select (NO Select2 interaction)
    Wait Until Element Is Visible    id=billing_country
    Select From List By Label        id=billing_country    ${country}

    Wait Until Element Is Enabled    id=billing_state    timeout=10s
    Select From List By Label        id=billing_state    ${state}

    Input Text    id=billing_address_1    Test Address
    Input Text    id=billing_city         Hyderabad
    Input Text    id=billing_postcode     500001

    Click Element    id=payment_method_cod
    Click Element    id=place_order

    Wait Until Element Is Visible    xpath://p[contains(.,'Thank you')]
    Close Browser