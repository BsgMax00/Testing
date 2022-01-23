*** Settings ***
Resource  basePage.robot

*** Variables ***
${SHOWN_BTN}=           css:body > section > div > div > div.col-6.col-md-7.col-xl-9.mt-2 > div > div:nth-child(1) > form > button
${CLASSNAME}=           btn.btn-success.btn-danger
${APARTMENT_CRD}=       css:body > section > div > div > div.col-6.col-md-7.col-xl-9.mt-2 > div > div:nth-child(1) > div > a

*** Keywords ***
Hide First Apartment From Users
    Wait Until Element Is Visible   ${SHOWN_BTN}
    Click Element   ${SHOWN_BTN}

Element Should Have Class
    Wait Until Page Contains Element    ${SHOWN_BTN}.${CLASSNAME}

Click First Apartment Card
    Click Element   ${APARTMENT_CRD}