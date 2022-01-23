*** Settings ***
Resource  basePage.robot

*** Variables ***
${ABOUTUS_TXT}=                     css:#center_column > div > div > div:nth-child(1) > div
${ABOUTUS_TESTIMONIAL_HEADER_TXT}=  css:#center_column > div > div > div:nth-child(3) > div > h3

*** Keywords ***
Get About Us Text
    Wait Until Element Is Visible  ${ABOUTUS_TXT}
    ${text}=  Get Text  ${ABOUTUS_TXT}
    [Return]  ${text}

Get About Us Testimonial Header Text
    Wait Until Element Is Visible  ${ABOUTUS_TESTIMONIAL_HEADER_TXT}
    ${text}=  Get Text  ${ABOUTUS_TESTIMONIAL_HEADER_TXT}
    [Return]  ${text}