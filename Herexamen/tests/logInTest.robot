*** Settings ***
Resource    ../pageObjects/homePage.robot
Resource    ../pageObjects/signInPage.robot

Suite Setup  Open My Website
Suite Teardown  Close browser
Test Setup  Go To Login Page

*** Test Cases ***
Login As Admin
    Log In With Account  landlord1 Landlord1
    Welcome Page Should Be Open