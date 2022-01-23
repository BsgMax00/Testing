*** Settings ***
Resource  ../../Herexamen/pageObjects/apartmentPage.robot
Resource  ../../Herexamen/pageObjects/basePage.robot
Resource  ../../Herexamen/pageObjects/signInPage.robot
Resource  ../../Herexamen/pageObjects/homePage.robot

Suite Setup  Open My Website
Suite Teardown  Close browser
Test Setup  go to

*** Test Cases ***
Hide Apartment As Admin
    Log In With Account  landlord1 landlord
    Go To Apartment Page
    Hide First Apartment From Users
    Element Should Have Class
