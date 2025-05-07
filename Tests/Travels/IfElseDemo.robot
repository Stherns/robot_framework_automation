                HOW TO USE IF/ELSE IN ROBOT FRAMEWORK
• If/Else - Conditional statement which runs a different set of statements depending on whether an expression is true or false
• Robot Framework has builtin library for this functionality
• You can also use multiple "ELSE IF" clause
• It can also have "ELSE" clause
        Run Keyword If ${condition} == "Some Data" Keyword1
        ... ELSE IF ${condition} == "Some Other Data" Keyword2
        •• ELSE Keyword3

*** Settings ***
Library  SeleniumLibrary  5s

*** Variables ***
${url}  https://www.saucedemo.com/
${browser}  chrome

*** Test Cases ***

Test Case to demonstrate IF/ELSE in Robot Framework
    [Documentation]  Test Case to demonstrate IF/ELSE in Robot Framework
    Open Browser  ${url}  ${browser}
    Maximize Browser Window
    Input Text  id:user-name  standard_user
    Input Text  id:password  secret_sauce
    Click Button  Login
    Sleep  2s

    ${items_on_page}=  Get Element Count  xpath://*[@class="inventory_list"]/div

    Run Keyword If  ${items_on_page} == 10  Test Keyword 1
    ...  ELSE IF ${items_on_page} < 10 and ${items_on_page} > 6  Test Keyword 2
    ...  ELSE  Test Keyword 3

*** Keywords ***
Test Keyword 1
    Log To Console  Executed Keyword1 - Found Items as expected
    Close Browser

Test Keyword 2
    Log To Console  Executed Keyword2 - Found less than expected Items
    Close Browser

Test Keyword 3
    Log To Console  Executed Keyword - Exception
    Close Browser
