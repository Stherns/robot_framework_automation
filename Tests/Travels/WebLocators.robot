How to Find Webelement by ID or Name
Click WebElement by LinkText or PartialLinkText


*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TC to demonstrate Weblocators in Robot FW
    [Documentation]     This is sample test case to demonstrate Weblocators in Robot FW
    Open Browser    https://www.ebay.com      Chrome
    Maximize Browser Window
#    Input Text  id:gh-ac    travel
#    Input Text  name:_nkw  Ring light
#    Click Button    Accept All Cookies
#    Click Link  link:Start selling
    Click Link  partial link:ler Cen
    Sleep   1s
    Close Browser