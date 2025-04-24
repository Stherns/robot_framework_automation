*** Settings ***
Documentation  Basic Search functionality
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
Verify basic search functionality for eBay
    [Documentation]  This test case verifies the basic search
    [tags]  Functional

    Open browser  https://www.ebay.fr/  Chrome
    Maximize Browser Window

    Input Text  //input[@placeholder="Rechercher sur eBay"]  Mobile
#    Press Keys  //*[@id="gh-search-btn"]/span  [Enter]
    Click Button  //*[@id="gh-search-btn"]
    Page Should Contain  smartphone

    Close Browser

*** Keywords ***
