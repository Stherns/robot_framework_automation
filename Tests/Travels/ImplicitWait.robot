        IMPLICIT WAIT IN ROBOT FRAMEWORK
• Set Selenium Implicit Wait
Sets the implicit wait value used by Selenium
• Get Selenium Implicit Wait
Gets the implicit wait value used by Selenium
• Set Browser Implicit Wait
Same as Set Selenium Implicit Wait but only affects the current browser

*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
Test Case to demonstrate implicit wait in Robot Framework
    [Documentation]  Test Case to demonstrate implicit wait in Robot Framework

    ${default_implicit_wait}=  Get Selenium Implicit Wait

    Set Selenium Implicit Wait  5s
    ${custom_implicit_wait}=  Get Selenium Implicit Wait

    Open Browser  https://www.sugarcrm.com/au/request-demo/  chrome
    Maximize Browser Window
    Click Button  Accept All Cookies

    Scroll Element Into View  xpath://*[@id="input_1_12_1"]

    Mouse Down  xpath://*[@id="input_1_4"]

    Mouse Up  xpath://*[@id="input_1_4"]

    Close Browser