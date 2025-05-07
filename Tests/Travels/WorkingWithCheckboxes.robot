               WORKING WITH CHECKBOXES
• Select Checkbox
Selects the checkbox identified by locator
• Unselect Checkbox
Removes the selection of checkbox identified by locator
• Checkbox Should Be Selected
Verifies checkbox locator is selected/checked
• Checkbox Should Not Be Selected
Verifies checkbox locator is not selected/checked
• Page Should Contain Checkbox
Verifies checkbox locator is found from the current page
• Page Should Not Contain Checkbox
Verifies checkbox locator is not found from the current page

*** Settings ***
Library  SeleniumLibrary
*** Test Cases ***
TC to demonstrate working with checkboxes in Robot FW
    [Documentation]     TC to demonstrate working with checkboxes in Robot FW
    Open Browser    https://www.sugarcrm.com/au/request-demo/       Chrome
    Maximize Browser Window
    Click Button    Accept All Cookies
    Sleep   1s

    Scroll Element Into View    class:mb-5
    Page Should Contain Checkbox    id:input_1_12_1

    Page Should Not Contain Checkbox    id:interest_market_c00

    Select Checkbox  id:input_1_12_1
    Checkbox Should Be Selected     id:input_1_12_1
    Capture Page Screenshot
    Sleep   1s

    Unselect Checkbox   id:input_1_12_1
    Checkbox Should Not Be Selected     id:input_1_12_1
    Capture Page Screenshot
    Sleep   1s
    Close Browser