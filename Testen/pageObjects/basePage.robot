*** Settings ***
Resource  ../helpers/browser.robot

*** Keywords ***
Open My Website
    [Arguments]  ${browser}=${BROWSER}
    Open Browser  https://brightshopapp.herokuapp.com/  ${browser}
    Maximize Browser Window

