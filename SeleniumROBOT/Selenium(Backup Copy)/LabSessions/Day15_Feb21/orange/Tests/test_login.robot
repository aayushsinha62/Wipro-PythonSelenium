*** Settings ***
Resource    ../Resources/cmn_keywords.robot
Resource    ../Resources/variables.robot
Resource    ../Pages/login_page.robot
Resource    ../Pages/dashboard_page.robot

Test Setup       Open Application
Test Teardown    Close Application

*** Test Cases ***

TC_01 Successful Login
    Login With Credentials    ${valid_username}    ${valid_pass}
    Verify Dashboard Is Visible