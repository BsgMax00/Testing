*** Settings ***
Resource            ../pageObjects/basePage.robot

Suite Setup  Open My Website
Suite Teardown  Close browser

*** Variables ***

*** Test Cases ***

Selenium Test Locate And Interact And Verify
    Click Element  css:[title='About us']
    Wait Until Element Is Visible  css:#center_column > div > div > div:nth-child(1) > div
    ${text}=  Get Text  css:#center_column > div > div > div:nth-child(1) > div
    Should Contain  ${text}  We are a team of technology enthusiasts and our primary goal for this website and company is to give you a platform to practice Continuous Test Automation. We are a subsidiary of seleniumframework.com
