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
Register Account
    Wait Until Element Is Not Visible    class:css-1yo793j  10
    Sleep    10
    Wait Until Element Is Visible    id:RegisterButton
    Click Element    id:RegisterButton
    Input Text    id:RegisterFirstName  ${username}
    Input Text    id:RegisterLastName  ${lastname}
    Input Text    id:RegisterEmail  ${email}
    Input Text    id:RegisterPassword  ${password}
    Input Text    id:RegisterRePassword  ${password}
    ${text}=  Get Text    id:RegisterFirstName
    Should Contain    ${text}  ${username}
    Click Element    id:RegisterButtonComplete