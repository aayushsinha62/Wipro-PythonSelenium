*** Settings ***
Resource    ../Resources/cmn_keywords.robot
Resource    ../Resources/variables.robot
Resource    ../Pages/login_page.robot

Test Setup       Open Application
Test Teardown    Close Application

*** Test Cases ***

TC_02 Invalid Login
    Login With Credentials    ${valid_username}    ${invalid_pass}
    Verify Login Error Message