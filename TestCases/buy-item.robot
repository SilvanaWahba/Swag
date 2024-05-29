*** Settings ***
Library    SeleniumLibrary
Library    Selenium2Library
Resource    ../Resources/common.robot
Suite Setup     open_website
Suite Teardown    close browser

*** Variables ***

*** Test Cases ***
add item to the cart
    set selenium speed    1seconds
    login with valid credentials
    addItemToCart





