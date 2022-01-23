*** Settings ***
Resource  ../pageObjects/homePage.robot
Resource  ../pageObjects/signInPage.robot
Resource  ../pageObjects/createAccountPage.robot

Suite Setup  Open My Website
Suite Teardown  Close browser
Test Setup  Go To Signin Page

*** Test Cases ***

Register without email
    Create Account
    ${errorMessage}=  Get Create Account Error Message
    Should Contain  ${errorMessage}  Invalid email address

Register with invalid email
    Create Account  bla
    ${errorMessage}=  Get Create Account Error Message
    Should Contain  ${errorMessage}  Invalid email address

Register with valid email
    Create Account  test2001@gmail.com
    ${loaded}=  Create Account Page Is Loaded
    Should Be True  ${loaded}
