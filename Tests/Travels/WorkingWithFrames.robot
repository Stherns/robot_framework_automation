                    WORKING WITH FRAMES
• Select Frame
Sets frame identified by locator as the current frame
• Unselect Frame
Sets the main frame as the current frame.
• Frame Should Contain
Verifies that frame identified by locator contains text
• Current Frame Should Contain
Verifies that the current frame contains text
• Current Frame Should Not Contain
Verifies that the current frame does not contain text

*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
TC to demonstrate working with frames in Robot FW
    [Documentation]     TC to demonstrate working with frames in Robot FW

    Open Browser    https://www.w3schools.com/js/tryit.asp?filename=tryjs_alert  Chrome
    Maximize Browser Window
    Sleep  1s
    Click Element  id:accept-choices

    Select Frame    id:iframeResult

    Current Frame Should Contain    JavaScript Alert

    Current Frame Should Not Contain  JavaScript Confirm Box Two

    Unselect Frame

    Frame Should Contain  id:iframeResult  JavaScript Alert

    Sleep  1s

    Delete All Cookies

    Close Browser

