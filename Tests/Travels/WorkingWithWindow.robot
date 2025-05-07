                        WORKING WITH WINDOWS
• Get Window Handles - Returns all current window handles as a list
• Get Window Identifiers - Returns and logs id attributes of all known browser
windows
• Get Window Names - Returns and logs names of all known browser windows
• Get Window Titles - Returns and logs titles of all known browser windows
• Set Window Position - Sets window position using x and y coordinates
• Get Window Position - Returns current window position
• Set Window Size - Sets current windows size to given width and height
• Get Window Size - Returns current window width and height as integers
• Select Window - DEPRECATED in SeleniumLibrary 4.0. use Switch Window
• Switch Window - Switches to browser window matching locator
• Close Window - Closes currently opened and selected browser window/tab
• Close browser - Closes the current browser
• Close All Browsers - Closes all open browsers and resets the browser cache. Should be used in Test or Suite teardown to ensure all open browsers are closed
• Get Browser Ids - Returns index of all active browser as list
• Maximise Browser Window - Maximizes current browser window
• Get Browser Alias - Returns aliases of all active browser that has an alias as NormalizedDict
• Switch Browser - Switches between active browsers using index_or_alias

*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
TC to demonstrate Browser Window Operation Keywords in Robot FW
    [Documentation]     TC to demonstrate Browser Window Operation Keywords in Robot FW

    Open Browser    https://trello.com/fr   Chrome    alias=Chrome_Djh
    Maximize Browser Window
    Sleep  1s
    Click Button    Accepter tous les cookies

    Wait Until Element Is Visible   xpath = //*[@id="skip-target"]/section[1]/div/div/div/div/div/p/a
    Click Element  xpath = //*[@id="skip-target"]/section[1]/div/div/div/div/div/p/a

    ${WindowHandles} =  Get Window Handles
#    Sleep   1s

    ${WindowIdentifier} =  Get Window Identifiers
#    Sleep   1s

    ${WindowNames} =  Get Window Names
#    Sleep   1s

    ${WindowTitle} =  Get Window Titles
#    Sleep   1s

    Set Window Position     100  200

    ${x} =  Get Window Size
    ${y} =  Get Window Size
    Log     ${x}
    Log     ${y}
#    Sleep   1s

    Set Window Size     800  600

    ${width} =  Get Window Size
    ${height} =  Get Window Size
    Log     ${width}
    Log     ${height}
    Sleep   2s

#       ***************     Important notes: Switch Window can take different locators:     ***************


#             ***  MAIN — to switch back to the first opened window  ***

    Switch Window       MAIN

#             ***  NEW — to switch to the latest opened window  ***

#    Switch Window       NEW

#             ***  TITLE — to switch to opened window  ***

#    Switch Window        title = Atlassian Intelligence | AI in Atlassian Cloud products | Atlassian        # 'title=' est facultatif
#    Switch Window        title = ${WindowTitle}[1]           # 'title=' est facultatif
#    Log     title = ${WindowTitle}[1]

#             ***  URL — to switch to opened window  ***

#    Switch Window       url = https://www.atlassian.com/platform/artificial-intelligence       # 'url=' est obligatoire

#             ***  NAME — to switch to opened window  ***

#    Switch Window       undefined
#    Switch Window       name = undefined
#    Switch Window        name = ${WindowNames}[1]
#    Log     name = ${WindowNames}[1]


#             ***  HANDLE — to switch to opened window  ***

    Switch Window        ${WindowHandles}[1]
    Log     handle = ${WindowHandles}[1]

#       ***************         ***************         ***************         ***************

    Sleep  2s

    Click Button    Accepter tous les cookies
    Sleep   1s

    Close Window
    Sleep   1s

    Switch Window   ${WindowHandles}[0]
    Log     ${WindowHandles}[0]

    Sleep   1s
    Close Window