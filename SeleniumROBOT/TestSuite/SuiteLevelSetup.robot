*** Settings ***
# in setting we add the external library details, resources, set up and tear down commands
# Suite Setup - Runs once before all test cases.
# Suite Teardown - Runs once after all test cases.


Resource        ../Resources/Resource.robot
Library         SeleniumLibrary
Suite Setup      Open DB
Suite Teardown   Close DB

*** Test Cases ***
# name of the testcase
Verify login with valid credentials
    Login

Verify Add to cart functionality
    Login
    Log    User selects the product
    Log    User adds the product to the cart
    Log    User verifies that the product with details is added to the cart
