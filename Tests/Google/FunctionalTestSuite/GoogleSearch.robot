*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
This is a sample test case
    [documentation]  Google test
    [tags]  regression

    Open Browser  https://www.google.com  Chrome
    Close Browser

*** Keywords ***