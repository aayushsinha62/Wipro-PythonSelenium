*** Variables ***

# URL & Browser
${URL}    https://www.globalsqa.com/angularJs-protractor/BankingProject/#/login
${BROWSER}    Chrome

# Login Page
${BANK_MANAGER_BTN}    xpath=//button[contains(text(),'Bank Manager')]
${CUSTOMER_LOGIN_BTN}  xpath=//button[text()='Customer Login']
${HOME_BTN}            xpath=//button[text()='Home']
${USER_DROPDOWN}       id=userSelect
${LOGIN_BTN}           xpath=//button[text()='Login']
${WELCOME_TEXT}        xpath=//strong[contains(text(),'Welcome')]

# Manager Page
${ADD_CUSTOMER_TAB}    xpath=//button[@ng-click='addCust()']
${FIRST_NAME}          xpath=//input[@placeholder='First Name']
${LAST_NAME}           xpath=//input[@placeholder='Last Name']
${POSTCODE}            xpath=//input[@placeholder='Post Code']
${ADD_CUSTOMER_BTN}    xpath=//button[text()='Add Customer']
${OPEN_ACCOUNT_TAB}    xpath=//button[@ng-click='openAccount()']
${CUST_DROPDOWN}       id=userSelect
${CURRENCY_DROPDOWN}   id=currency
${PROCESS_BTN}         xpath=//button[text()='Process']
${CUSTOMERS_TAB}       xpath=//button[@ng-click='showCust()']

# Customer Page
${DEPOSIT_TAB}         xpath=//button[@ng-click='deposit()']
${WITHDRAW_TAB}        xpath=//button[@ng-click='withdrawl()']
${AMOUNT_INPUT}        xpath=//input[@placeholder='amount']
${DEPOSIT_BTN}         xpath=//button[text()='Deposit']
${WITHDRAW_BTN}        xpath=//button[text()='Withdraw']
${BALANCE_TEXT}        xpath=//strong[2]
${TRANSACTIONS_TAB}    xpath=//button[@ng-click='transactions()']