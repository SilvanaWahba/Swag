*** Settings ***
Library    SeleniumLibrary
Library    Selenium2Library
Resource    ../Resources/common.robot
Suite Setup     open_website
Suite Teardown    close browser


*** Variables ***

*** Test Cases ***
check that you can access items from menu bar
    set selenium speed    1seconds
    login with valid credentials
    access menu bar
    access "All items" from menu bar
    addItemToCart








