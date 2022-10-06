*** Settings ***
Resource  ../pageObjects/basePage.robot

Suite Setup  Open My Website
Suite Teardown  Close Browser

*** Variables ***
${username}=  bram
${lastname}=  Engels
${email}=  sBram.Bengels@hotmail.com
${extraEmail}=  sram.Bengels@hotmail.com
${password}=  123456

*** Test Cases ***
Register Account With Wrong Passwords
    Wait Until Element Is Not Visible    class:css-1yo793j  10
    Sleep    10
    Wait Until Element Is Visible    id:RegisterButton
    Click Element    id:RegisterButton
    Input Text    id:RegisterFirstName  ${username}
    Sleep    5
    Input Text    id:RegisterLastName  ${lastname}
    Sleep    5
    Input Text    id:RegisterEmail  ${extraEmail}
    Sleep    5
    Input Text    id:RegisterPassword  ${password}
    Sleep    5
    Input Text    id:RegisterRePassword  ${extraEmail}
    Click Element    id:RegisterButtonComplete
    Wait Until Element Is Visible   xpath://*[@id="Register"]/div/form/div[2]/div/code
    ${text}=  Get Text    xpath://*[@id="Register"]/div/form/div[2]/div/code
    Should Contain    ${text}  Passwords don't match.