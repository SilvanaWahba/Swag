*** Settings ***
Library    SeleniumLibrary
Library    Selenium2Library
Resource    ../Resources/common.robot
Suite Setup     open_website
Suite Teardown    close browser


*** Variables ***
${title}    id:header_container

*** Test Cases ***
valid credentials
    set selenium speed    1seconds
    login with valid credentials
    title should be    Swag Labs
    logout
invalid credentials
     set selenium speed    1seconds
    login with invalid credentials
    element should not be visible    ${title}







