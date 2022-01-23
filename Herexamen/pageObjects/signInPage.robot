*** Settings ***
Resource  basePage.robot

*** Variables ***
${USERNAME_LOGIN_TXT}=      id:username
${PASSWORD_LOGIN_TXT}=      id:password
${PASSWORD2_LOGIN_TXT}=     id:confirmpasword
${REGISTER_BTN}=            class:login-account
${HOME_TITLE}=              Home


*** Keywords ***
Log In With Account
    [Arguments]  ${username}=${EMPTY}  ${password}=${EMPTY}
    Wait Until Element Is Visible  ${USERNAME_LOGIN_TXT}
    Input Text  ${USERNAME_LOGIN_TXT}  ${username}
    Input Text  ${PASSWORD_LOGIN_TXT}  ${password}
    Click Element  ${LOGIN_BTN}

Register With Account
    [Arguments]  ${username}=${EMPTY}  ${password}=${EMPTY}
    Wait Until Element Is Visible  ${USERNAME_LOGIN_TXT}
    Input Text  ${USERNAME_LOGIN_TXT}  ${username}
    Input Text  ${PASSWORD_LOGIN_TXT}  ${password}
    Input Text  ${PASSWORD2_LOGIN_TXT}  ${password}
    Click Element  ${LOGIN_BTN}

Welcome Page Should Be Open
    Title Should Be  ${HOME_TITLE}