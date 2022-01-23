*** Settings ***
Resource  basePage.robot

*** Variables ***
${SIGNIN_LNK}=       css:.header_user_info > a
${ABOUTUS_LNK}=      css:[title='About us']

*** Keywords ***

Go To About Us
    Wait Until Element Is Visible  ${ABOUTUS_LNK}
    Click Element  ${ABOUTUS_LNK}
