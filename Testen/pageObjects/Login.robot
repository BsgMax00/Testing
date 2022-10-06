*** Settings ***
Resource        ../pageObjects/basePage.robot

*** Keywords ***
Login
    Wait Until Element Is Not Visible    class:css-1yo793j  10
    Sleep    10
    Wait Until Element Is Visible    id:SignInButton
    Click Element    id:SignInButton
    Wait Until Element Is Visible    id:SignIn  10
    Input Text    id:SignInEmail  ${email}
    Input Text    id:SignInPassword  ${password}
    Click Element    id:SignInButtonComplete