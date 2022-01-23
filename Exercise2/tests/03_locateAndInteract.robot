*** Settings ***
Resource            ../pageObjects/basePage.robot

Suite Setup  Open My Website
Suite Teardown  Close browser

*** Variables ***

*** Test Cases ***

Selenium Test Locate And Interact
    Click Element  css:[title='About us']
    Sleep  5s

