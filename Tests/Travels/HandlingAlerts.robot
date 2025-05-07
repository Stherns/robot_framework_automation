                    HANDLING ALERTS
• Handle Alert
Handles the current alert and returns its message.
• Input Text Into Alert
Types the given text into an input field in an alert.
• Alert Should Be Present
Verifies that an alert is present and by default, accepts it
• Alert Should Not Be Present
Verifies that no alert is present.

*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Test Case to demonstrate how to handle Alerts in Robot Framework
    [Documentation]    Test Case to demonstrate how to handle Alerts in Robot Framework

    Open Browser    https://www.w3schools.com/js/tryit.asp?filename=tryjs_alert  chrome
    Maximize Browser Window
    Click Element  xpath://*[@id="accept-choices"]
    Select Frame    id:iframeResult
    Click Button    xpath://body/button
    Sleep   2s
    Handle Alert    action=ACCEPT  timeout= 5s

    Go To  https://www.w3schools.com/js/tryit.asp?filename=tryjs_alert
    Select Frame    iframeResult
    Maximize Browser Window
    Click Button    xpath://body/button
    Sleep  2s
    ${message1}=  Handle Alert  action=ACCEPT  timeout=2s

    Go To  https://www.w3schools.com/js/tryit.asp?filename=tryjs_confirm
    Select Frame  iframeResult
    Click Button  xpath://body/button
    Sleep  2s
    ${message2}=  Handle Alert  DISMISS  2s

    Go To  https://www.w3schools.com/js/tryit.asp?filename=tryjs_prompt
    Select Frame  iframeResult
    Click Button  xpath://body/button
    Sleep  2s
    Input Text Into Alert  DjheryTraining  action=DISMISS
    Sleep  2s

    Go To  https://www.w3schools.com/js/tryit.asp?filename=tryjs_alert2
    Select Frame  iframeResult
    Click Button  xpath://body/button
    Sleep  2s
    Alert Should Be Present  text=Hello How are you?  action=ACCEPT

    Go To  https://www.sugarcrm.com/au/request-demo
    Sleep  2s
    Alert Should Not Be Present  action=ACCEPT  timeout=2s

    Close Browser