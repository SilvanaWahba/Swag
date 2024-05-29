*** Settings ***
Library    SeleniumLibrary
Library    Selenium2Library
Resource    ../Resources/common.robot
Suite Setup     open_website
Suite Teardown    close browser


*** Variables ***
${title}    id:header_container

*** Test Cases ***
Filter Check
    set selenium speed    1seconds
    login with valid credentials
    title should be    Swag Labs
    Filter (A-Z)
    scroll up
    Filter (Z-A)
    scroll up
    Filter low to high
    scroll up
    Filter high to low







