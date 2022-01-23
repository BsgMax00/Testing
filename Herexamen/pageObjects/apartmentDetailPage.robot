*** Settings ***
Resource  basePage.robot

*** Variables ***
${EDIT_BTN}=        class:edit-button
${ADRESS_TXT}=      id:apartmentAddress
${SUBMIT_EDIT}=     class:submit-edit
${ADRESS_TITLE}=   css:body > section > div > div.row.justify-content-center > div > h2:nth-child(3)

*** Keywords ***
Change Adress Of Apartment to xxxx
    Click Element   ${EDIT_BTN}
    Wait Until Element Is Visible   ${ADRESS_TXT}
    Input Text  ${ADRESS_TXT}   xxxx
    Click Element   ${SUBMIT_EDIT}

Get Apartment Adress
    Wait Until Element Is Visible   ${ADRESS_TITLE}
    ${text}=  Get Text   ${ADRESS_TITLE}
    [Return]  ${text}