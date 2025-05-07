              WORKING WITH BROWSER
Open Browser - Opens a new browser instance to the optional url
Examples:
Open Browser http://example.com Chrome
Open Browser http://example.com Firefox alias=RCV
Open Browser about:blank
Open Browser browser=Chrome

• Close browser - Closes the current browser
• elose All Browsers - Closes all open browsers and resets the browser cache. Should be used in Test or Suite teardown to ensure all open browsers are closed
• Get Browser Ids - Returns index of all active browser as list
• Maximise Browser Window - Maximizes current browser window
• Get Browser Alias - Returns aliases of all active browser that has an alias as Normalized Dict
• Switch Browser - Switches between active browsers using index_or_alias

*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
TC to demonstrate Browser Operation Keywords in Robot Framework
    [Documentation]  TC to demonstrate Browser Operation Keywords in Robot Framework

    Open Browser    http://google.com  Chrome  alias=Smith_A_gc
    Click Button    id:L2AGLb
    Maximize Browser Window

    Open Browser    about:blank  ff  alias=Smith_B_ff

    &{alias}    Get Browser Aliases

    Log     @{alias} [1]

    @{browser_ID}  Get Browser Ids

    Log  @{browser_ID} [1]

    Switch Browser   1
#    Sleep  3s

    Input Text  //*[@id="APjFqb"]  Comment devenir Testeur Logiciel en 2025

    Sleep  4s

#    Switch Browser  ${2}
    Switch Browser  Smith_B_ff
#    Switch Browser   2

    Go To   http://salesforce.com

    Close All Browsers