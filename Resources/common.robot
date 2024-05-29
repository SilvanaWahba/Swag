*** Settings ***
Library    SeleniumLibrary
Library    Selenium2Library
*** Variables ***
${browser}  chrome
${URL}    https://www.saucedemo.com/v1/index.html


*** Keywords ***
open_website
    open browser       ${URL}      ${browser}
    maximize browser window
login with valid credentials
        click element    xpath://*[@id="user-name"]
        input text    id:user-name     standard_user
        click element    xpath://*[@id="password"]
        input password    id:password    secret_sauce
        click button    xpath://*[@id="login-button"]

login with invalid credentials
        click element    xpath://*[@id="user-name"]
        input text    id:user-name     test
        click element    xpath://*[@id="password"]
        input password    id:password    test@123
        click button    xpath://*[@id="login-button"]
logout
     click button    xpath:/html/body/div/div[1]/div/div[3]/div/button
     click element    id:logout_sidebar_link

access menu bar
     click button    xpath:/html/body/div/div[1]/div/div[3]/div/button

access "All items" from menu bar
     mouse over     xpath://*[@id="inventory_sidebar_link"]
     click element    id:inventory_sidebar_link

access "About" from menu bar
     mouse over     xpath://*[@id="about_sidebar_link"]
     click element    id:about_sidebar_link
addItemToCart
    click element    xpath:(//button[contains(.,'ADD TO CART')])[1]
    click element    xpath:/html/body/div/div[2]/div[1]/div[2]/a
    click element    xpath://a[contains(@class,'button')]
    input text     id:first-name    quality
    input text     id:last-name     test
    input text     id:postal-code    12345
    click button     xpath:/html/body/div/div[2]/div[3]/div/form/div[2]/input
    page should contain link    xpath://*[@id="item_4_title_link"]
    scroll element into view    xpath:/html/body/div/div[2]/div[3]/div/div[2]/div[8]
    click element     xpath:/html/body/div/div[2]/div[3]/div/div[2]/div[8]/a[2]

Filter (A-Z)
    mouse over     xpath://select[contains(@class,'product_sort_container')]
    click element    xpath://select[contains(@class,'product_sort_container')]
    scroll element into view    xpath:/html/body/div/div[2]/div[2]/div/div[2]/div/div[6]

Filter (Z-A)
    mouse over     xpath://select[contains(@class,'product_sort_container')]
    click element    xpath://select[contains(@class,'product_sort_container')]
    click element    xpath:/html/body/div/div[2]/div[2]/div/div[1]/div[3]/select/option[2]
    scroll element into view    xpath:/html/body/div/div[2]/div[2]/div/div[2]/div/div[6]

Filter low to high
    mouse over     xpath://select[contains(@class,'product_sort_container')]
    click element    xpath://select[contains(@class,'product_sort_container')]
    click element     xpath:/html/body/div/div[2]/div[2]/div/div[1]/div[3]/select/option[3]
    scroll element into view    xpath:/html/body/div/div[2]/div[2]/div/div[2]/div/div[6]

Filter high to low
    mouse over     xpath://select[contains(@class,'product_sort_container')]
    click element    xpath://select[contains(@class,'product_sort_container')]
    click element     xpath:/html/body/div/div[2]/div[2]/div/div[1]/div[3]/select/option[4]
    scroll element into view    xpath:/html/body/div/div[2]/div[2]/div/div[2]/div/div[6]

scroll up
    scroll element into view    xpath:/html/body/div/div[2]/div[2]/div/div[1]
