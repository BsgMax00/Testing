*** Settings ***
Resource  basePage.robot

*** Variables ***
${SIGNIN_LNK}=       css:.header_user_info > a

*** Keywords ***
Go To Signin Page
    Click Element  ${SIGNIN_LNK}

