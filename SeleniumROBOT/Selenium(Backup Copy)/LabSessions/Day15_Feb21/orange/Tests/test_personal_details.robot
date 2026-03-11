*** Settings ***
Resource    ../Resources/cmn_keywords.robot
Resource    ../Resources/variables.robot
Resource    ../Pages/login_page.robot
Resource    ../Pages/dashboard_page.robot
Resource    ../Pages/personal_details_page.robot

Test Setup       Open Application
Test Teardown    Close Application

*** Test Cases ***

TC_03 Modify Personal Details
    Login With Credentials    ${valid_username}    ${valid_pass}
    Verify Dashboard Is Visible
    Navigate To Personal Details
    Update First Name    ${updated_fname}
    Verify Personal Details Saved
