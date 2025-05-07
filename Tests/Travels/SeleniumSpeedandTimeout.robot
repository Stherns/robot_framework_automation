               SELENIUM SPEED AND TIMEOUTS
• Get Selenium Timeout
Gets the timeout that is used by various keywords
• Set Selenium Timeout
Sets the timeout that is used by various keywords
• Get Selenium Speed
Gets the delay that is waited after each Selenium command
• Set Selenium Speed
Sets the delay that is waited after each Selenium command

*** Settings ***
Library  SeleniumLibrary  timeout=10s

*** Variables ***

*** Test Cases ***
Test Case to Selenium Speed and Timeout in Robot Framework
    [Documentation]  Test Case to Selenium Speed and Timeout in Robot Framework
    ${default_selenium_timeout}=  Get Selenium Timeout
    ${default_selenium_speed}=  Get Selenium Speed
    Set Selenium Timeout  3s
    Set Selenium Speed  1s

    Open Browser  https://www.sugarcrm.com/au/request-demo/  chrome

    Maximize Browser Window

    Click Button  Accept All Cookies

    Scroll Element Into View  xpath://*[@id="input_1_12_1"]

    Mouse Down  xpath://*[@id="input_1_4"]

    Mouse Up  xpath://*[@id="input_1_4"]

    Scroll Element Into View  xpath://*[@id="menu-item-25338"]/a

    Mouse Down On Link  xpath://*[@id="main"]/div/div/div[9]/div/div/div[2]/a

    ${default_selenium_timeout1}=  Get Selenium Timeout
    ${default_selenium_speed1}=  Get Selenium Speed


    Close Browser