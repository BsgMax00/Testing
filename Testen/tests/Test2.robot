*** Settings ***
Resource  ../pageObjects/basePage.robot
Resource  ../pageObjects/Login.robot

Suite Setup  Open My Website
Suite Teardown  Close Browser

*** Variables ***
${email}=  Bram.En@hotmail.com
${password}=  123456

*** Test Cases ***
Login Account
    Login