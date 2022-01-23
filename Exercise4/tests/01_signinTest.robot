*** Settings ***
Resource  ../pageObjects/homePage.robot
Resource  ../pageObjects/signInPage.robot

Suite Setup  Open My Website
Suite Teardown  Close browser
Test Setup  Go To Signin Page

*** Test Cases ***
Login Without Email Address
    Log In With Account
    ${errorMessage}=  Get Login Error Message
    Should Contain  ${errorMessage}  An email address required.

Login With Invalid Email Address
    Log In With Account  INVALID  password
    ${errorMessage}=  Get Login Error Message
    Should Contain  ${errorMessage}  Invalid email address.

Login With Unexisting Account
    Log In With Account  notanaccount@gmail.com  password
    ${errorMessage}=  Get Login Error Message
    Should Contain  ${errorMessage}  Authentication failed.

Login With Short Password
    Log In With Account  notanaccount@gmail.com  pw
    ${errorMessage}=  Get Login Error Message
    Should Contain  ${errorMessage}  Invalid password.

Login Without Password
    Log In With Account  notanaccount@gmail.com
    ${errorMessage}=  Get Login Error Message
    Should Contain  ${errorMessage}  Password is required.









