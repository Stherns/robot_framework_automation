*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${env}  ddt
&{url}  qa=https://www.ebay.com/  uat=https://www.uat.ebay.com/   dev=https://www.dev.ebay.com/   ddt=https://www.saucedemo.com/
${browser}  Chrome  # Edge  Safari  Firefox

*** Keywords ***
Start Test Case
#    Open browser  ${url.${env}}  ${browser}
    Open browser  ${url}[${env}]  ${browser}
    Maximize Browser Window

Finish Test Case
    Close Browser