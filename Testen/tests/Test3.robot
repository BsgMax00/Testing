*** Settings ***
Resource  ../pageObjects/basePage.robot

Suite Setup  Open My Website
Suite Teardown  Close Browser

*** Test Cases ***
#should fail since search bar doesnt let you type in text
Use Search bar
    Wait Until Element Is Not Visible    class:css-1yo793j  10
    Sleep    10
    #cannot use id cause it changes every time you open the browser
    Wait Until Element Is Visible    	xpath://html/body/div/div/div[2]/header/div[2]/div/div/div/div/input
    Click Element    xpath://html/body/div/div/div[2]/header/div[2]/div/div/div/div/input
    Input Text   xpath://html/body/div/div/div[2]/header/div[2]/div/div/div/div/input   John
