                               WORKING WITH LISTS
• Get List Items - Returns all labels or values of selection list locator
• Get Selected List Label - Returns the label of selected option from selection list locator
• Get Selected List Value - Returns the value of selected option from selection list locator
• Select From List By Index - Selects options from selection list locator by indexes
• Select From List By Label - Selects options from selection list locator by labels
• Select From List By Value - Selects options from selection list locator by values
• Select All From List - Selects all options from multi-selection list locator
• Get Selected List Labels • Returns labels of selected options from selection list locator
• Get Selected List Values - Returns values of selected options from selection list locator
• Unselect From List By Index - Unselects options from selection list locator by indexes
• Unselect From List By Label - Unselects options from selection list locator by labels
• Unselect From List By Value - Unselects options from selection list locator by values
• Unselect All From List - Unselects all options from multi-selection list locator
• List Selection Should Be - Verifies selection list locator has expected options selected
• List Should Have No Selections - Verifies selection list locator has no options selected
• Page Should Contain List - Verifies selection list locator is found from current page
• Page Should Not Contain List - Verifies selection list locator is not found from current page

*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://www.sugarcrm.com/au/request-demo/
${browser}  chrome

*** Test Cases ***
Test Case to demonstrate List Operation Keywords in Robot FW
    [Documentation]     Test Case to demonstrate List Operation Keywords in Robot FW

    Open Browser  ${url}  ${browser}
    Maximize Browser Window
    Click Button    Accept All Cookies

    Scroll Element Into View    xpath://*[@id="gform_submit_button_1"]

    Page Should Contain List    xpath://*[@id="input_1_8"]
    Page Should Not Contain List    xpath://*[@id="input_1_8"]/div/select

    @{AllItems}=  Get List Items     xpath://*[@id="input_1_8"]
    ${ListLabel}=  Get Selected List Label    xpath://*[@id="input_1_8"]
    ${ListValue}=  Get Selected List Value    xpath://*[@id="input_1_8"]

    List Selection Should Be    xpath://*[@id="input_1_8"]  Company Size*

    Select From List By Index   xpath://*[@id="input_1_8"]  2
    ${LLabel1}=  Get Selected List Label     xpath://*[@id="input_1_8"]
#    Sleep  2s

    Select From List By Label   xpath://*[@id="input_1_8"]  51 - 100 employees
    ${LLabel2}=  Get Selected List Label     xpath://*[@id="input_1_8"]
#    Sleep  2s

    Select From List By Value   xpath://*[@id="input_1_8"]  level5
    ${LLabel3}=  Get Selected List Label     xpath://*[@id="input_1_8"]
#    Sleep  2s

    # Multiselect lists

    Go to   https://www.w3schools.com/tags/tryit.asp?filename=tryhtml_select_multiple

    Click Element   xpath://*[@id="accept-choices"]
#    Sleep  0.5s
    Select frame  id:iframeResult

    Select All From List    xpath://*[@id="cars"]
#    Sleep  0.5s
    @{ListLabels}=  Get Selected List Labels    xpath://*[@id="cars"]
#    Sleep  0.5s
    Unselect From List By Value     xpath://*[@id="cars"]  audi
    Sleep  0.5s
    Unselect From List By Index     xpath://*[@id="cars"]  1
    Sleep  0.5s
    Unselect From List By Label     xpath://*[@id="cars"]  Volvo
    Sleep  0.5s
    @{ListValues}=  Get Selected List Values     xpath://*[@id="cars"]
    Sleep  0.5s
    Unselect All From List      xpath://*[@id="cars"]
    Sleep  0.5s
    List Should Have No Selections  xpath://*[@id="cars"]
    CLose Browser