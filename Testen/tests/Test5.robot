*** Settings ***
Resource  ../pageObjects/basePage.robot
Resource  ../pageObjects/Login.robot

Suite Setup  Open My Website
Suite Teardown  Close Browser

*** Variables ***
${email}=  Bram.En@hotmail.com
${password}=  123456

*** Test Cases ***
Rent A Movie
    Login
    Wait Until Element Is Visible    xpath://html/body/div/div/div[2]/header/div[4]/a[2]/button
    Click Element    xpath://html/body/div/div/div[2]/header/div[4]/a[2]/button
    Wait Until Element Is Visible    id:SignIn
    Click Element    xpath://*[@id="SignIn"]/div[3]/button
    Wait Until Element Is Visible   xpath://html/body/div/div/div[2]/div[3]/div/div/div[3]/div[2]/div/form/input
    Input Text    xpath://html/body/div/div/div[2]/div[3]/div/div/div[3]/div[2]/div/form/input    254000
    Click Element    xpath://html/body/div/div/div[2]/div[3]/div/div/div[3]/div[2]/div/form/button
    Click Element    xpath://html/body/div/div/div[2]/div[3]/header/div[1]/a
    Wait Until Element Is Visible    xpath://html/body/div/div/div[2]/div[3]/div[1]/div/img[1]
    Click Element    xpath://html/body/div/div/div[2]/div[3]/div[1]/div/img[1]
    Wait Until Element Is Visible    id:RentMovieButton
    Click Element    id:RentMovieButton
    Click Element    xpath://html/body/div/div/div[2]/div[3]/header/div[4]/a[1]/button
    Wait Until Element Is Visible    xpath://html/body/div/div/div[2]/div[3]/div/div/div[3]/button