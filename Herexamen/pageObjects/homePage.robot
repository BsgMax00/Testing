*** Settings ***
Resource  basePage.robot

*** Variables ***
${COLLAPSE_LNK}=    css:body > nav > div > button
${APARTMENT_LNK}    css:li:nth-child(3) > a
${SIGNIN_LNK}=      css:li:nth-child(5) > a
${REGISTER_LNK}=    css:div:nth-child(6) > a


*** Keywords ***
Go To Login Page
    Click Element  ${COLLAPSE_LNK}
    Wait Until Element Is Visible   ${SIGNIN_LNK}
    Click Element  ${SIGNIN_LNK}

Go To Register Page
    Go To Login Page
    Wait Until Element Is Visible    ${REGISTER_LNK}
    Click Element    ${REGISTER_LNK}


Go To Apartment Page
    Click Element  ${COLLAPSE_LNK}
    Wait Until Element Is Visible   ${APARTMENT_LNK}
    Click Element  ${APARTMENT_LNK}