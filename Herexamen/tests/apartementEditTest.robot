*** Settings ***
Resource  ../pageObjects/homePage.robot
Resource  ../pageObjects/signInPage.robot
Resource  ../pageObjects/apartmentPage.robot
Resource  ../pageObjects/apartmentDetailPage.robot

Suite Setup  Open My Website
Suite Teardown  Close browser
Test Setup  Go To Login Page

*** Test Cases ***
Edit Apartment Name As Admin
    Log In With Account  admin  admin
    Go To Apartment Page
    Click First Apartment Card
    Change Adress Of Apartment to xxxx
    ${adres}=  Get Apartment Adress
    Should Contain  ${adres}    Xxxx