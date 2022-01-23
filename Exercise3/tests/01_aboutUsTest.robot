*** Settings ***
Resource  ../pageObjects/basePage.robot
Resource  ../pageObjects/homePage.robot
Resource  ../pageObjects/aboutUsPage.robot

Suite Setup  Open My Website
Suite Teardown  Close browser

*** Variables ***

*** Test Cases ***

Test About Us Page Contains Expected Text
    Go To About Us
    ${text}=  Get About Us Text
    Should Contain  ${text}  We are a team of technology enthusiasts and our primary goal for this website and company is to give you a platform to practice Continuous Test Automation. We are a subsidiary of seleniumframework.com


Test About Us Page Testimonials Contains Expected Header
    Go To About Us
    ${text}=  Get About Us Testimonial Header Text
    Should Contain  ${text}  TESTIMONIALS

