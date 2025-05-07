            EXPLICIT WAIT IN ROBOT FRAMEWORK
• Wait Until Page Contains
Waits until text appears on the current page
• Wait Until Page Contains Element
Waits until the element locator appears on the current page
• Wait Until Page Does Not Contain
Waits until text disappears from the current page
• Wait Until Page Does Not Contain Element
Waits until the element locator disappears from the current page
• Wait Until Location Is
Waits until the current URL is expected
• Wait Until Location Is Not
Waits until the current URL is not location
• Wait Until Location Contains
Waits until the current URL contains expected
• Wait Until Location Does Not Contain
Waits until the current URL does not contains location

• Wait Until Element Contains
aits until the element locator contains text
• Wait Until Element Does Not Contain
Waits until the element locator does not contain text
• Wait Until Element Is Enabled
Waits until the element locator is enabled
• Wait Until Element Is Not Visible
Waits until the element locator is not visible
• Wait Until Element Is Visible
Waits until the element locator is visible

*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
Test Case to demonstrate explicit wait in Robot Framework
    [Documentation]  Test Case to demonstrate explicit wait in Robot Framework

    Open Browser  https://www.sugarcrm.com/au/request-demo/  chrome
    Maximize Browser Window
    Click Button  Accept All Cookies

    Scroll Element Into View  xpath://*[@id="input_1_12_1"]

    Wait Until Page Contains  SugarCRM is very flexible
    Wait Until Page Contains Element  xpath://*[@id="menu-item-19419"]/a
    Wait Until Page Does Not Contain  SugarCRM is very flexibles
    Wait Until Page Does Not Contain Element  xpath://*[@id="menu-item-19419"]/abch

    Wait Until Location Is  https://www.sugarcrm.com/au/request-demo/
    Wait Until Location Is Not  https://www.sugarcrm.com/au/request-demo/abc
    Wait Until Location Contains  request-demo
    Wait Until Location Does Not Contain  request-demos

    Wait Until Element Contains  xpath://*[@id="menu-item-19419"]/a  Deployment Options  timeout=10s  error=Found Text
    Wait Until Element Does Not Contain  xpath://*[@id="menu-item-19419"]/a  random text
    Wait Until Element Is Enabled  xpath://*[@id="menu-item-19419"]/a
    Wait Until Element Is Not Visible  xpath://*[@id="menu-item-19419"]/a/b
    Wait Until Element Is Visible  xpath://*[@id="menu-item-19419"]/a

    Close Browser