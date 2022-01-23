*** Settings ***
Resource  basePage.robot

*** Variables ***
${EMAIL_LOGIN_TXT}=       id:email
${PASSWORD_LOGIN_TXT}=    id:passwd
${LOGIN_BTN}=            id:SubmitLogin
${LOGIN_ERROR}=          css:.alert.alert-danger

${EMAIL_CREATE_TXT}=      id:email_create
${CREATE_ACCOUNT_BTN}=    id:SubmitCreate
${CREATE_ACCOUNT_ERROR}=  id:create_account_error

*** Keywords ***
Log In With Account
    [Arguments]  ${emailaddress}=${EMPTY}  ${password}=${EMPTY}
    Wait Until Element Is Visible  ${EMAIL_LOGIN_TXT}
    Input Text  ${EMAIL_LOGIN_TXT}  ${emailaddress}
    Input Text  ${PASSWORD_LOGIN_TXT}  ${password}
    Click Element  ${LOGIN_BTN}

Get Login Error Message
    Wait Until Element Is Visible  ${LOGIN_ERROR}
    ${text}=  Get Text  ${LOGIN_ERROR}
    [Return]  ${text}

Create Account
    [Arguments]  ${emailaddress}=${EMPTY}
    Wait Until Element Is Visible  ${EMAIL_CREATE_TXT}
    Input Text  ${EMAIL_CREATE_TXT}  ${emailaddress}
    Click Element  ${CREATE_ACCOUNT_BTN}

Get Create Account Error Message
    Wait Until Element Is Visible  ${CREATE_ACCOUNT_ERROR}
    ${text}=  Get Text  ${CREATE_ACCOUNT_ERROR}
    [Return]  ${text}