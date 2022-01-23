*** Settings ***
Resource    ../pageObjects/homePage.robot
Resource    ../pageObjects/signInPage.robot

Suite Setup  Open My Website
Suite Teardown  Close browser
Test Setup  Go To Register Page

*** Test Cases ***
Register With Account
    Log In With Account  landlord1 Landlord1
    Welcome Page Should Be Open