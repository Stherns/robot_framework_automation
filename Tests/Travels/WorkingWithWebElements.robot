                             WORKING WITH WEBELEMENTS
• Get Element Attribute - Returns the value of attribute from the element locator
• Get Element Count - Returns the number of elements matching locator
• Get Element Size - Returns width and height of the element identified by locator
• Get WebElement - Returns the first WebElement matching the given locator
• Get WebElements - Returns a list of WebElement objects matching the locator
• Capture Element Screenshot - Captures a screenshot from the element and embeds it into log file
• Assign Id To Element - Assigns a temporary id to the element specified by locator
• Clear Element Text - Clears the value of the text-input-element identified by locator
• Double Click Element - Double clicks the element identified by locator
• Cover Element - Will cover elements identified by locator with a blue div without breaking page layout
• Click Element At Coordinates - Click the element locator at offset/yoffset

• Element Attribute Value Should Be - Verifies element identified by locator contains
expected attribute value
• Element Should Be Disabled - Verifies that element identified by locator is disabled
• Element Should Be Visible - Verifies that the element identified by locator is visible
• Element Should Not Be Visible - Verifies that the element identified by locator is
NOT visible
• Element Should Contain - Verifies that element locator contains text expected
• Element Should Not Contain - Verifies that element locator does not contain text expected
• Element Text Should Be - Verifies that element locator contains exact the text expected
• Element Text Should Not Be - Verifies that element locator does not contain exact the text not_expected
• Element Should Be Enabled - Verifies that element identified by locator is enabled
• Element Should Be Focused - Verifies that element identified by locator is focused

*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Test Case to demonstrate WebElement Operation Keywords
    [Documentation]     Test Case to demonstrate WebElement Operation Keywords

    Open Browser    http://google.com   Chrome      alias=ChromeRCV
    Maximize Browser Window
    Click Element  xpath: //*[@id="L2AGLb"]/div
    Sleep   2s

    ${attr} =  Get Element Attribute     xpath: (//input[@name='btnK'])[2]    class

    ${count} =  Get Element Count    xpath: (//input[@name='btnK'])[2]

    ${width} =  Get Element Size   xpath: (//input[@name='btnK'])[2]

    ${height} =  Get Element Size   xpath: (//input[@name='btnK'])[2]

#    ${width} ${height} = Get Element Size   xpath: (//input[@name='btnK'])[2]

    Get WebElement  xpath: (//input[@name='btnK'])[2]

    @{webelements} =  Get WebElements    xpath: (//input[@name='btnK'])[2]

    Capture Element Screenshot  xpath: /html/body/div[1]
    Capture Element Screenshot  xpath: /html/body/div[1]/div[3]/form

    Assign Id To Element  name: btnK  Tryid
    Page Should Contain Element  Tryid

#    Element Should Be Focused   xpath: //*[@id="APjFqb"]
    Element Should Be Visible   xpath: //*[@id="APjFqb"]

    Input Text  xpath: //*[@id="APjFqb"]  Ring Light
    Sleep  1s
    Clear Element Text  xpath: //*[@id="APjFqb"]
    Sleep  1s

    Click Element   xpath: //*[@id="gbwa"]/div/a
    Sleep  1s
    Click Element   xpath: //*[@id="gbwa"]/div/a
    Sleep  1s

    Cover Element   xpath: //*[@id="gbqfbb"]
    Sleep  1s

    Element Attribute Value Should Be   name: btnK  value  Recherche Google

    Element Should Be Enabled   name: btnK

    Element Should Not Be Visible   name:btnKgf

    Element Should Contain  xpath: /html/body/div[1]/div[6]/div/div[2]/div[1]/a[3]  Comment fonctionne

    Element Should Not Contain  xpath: /html/body/div[1]/div[6]/div/div[2]/div[1]/a[3]  Recherche Google

    Element Text Should Be  xpath: /html/body/div[1]/div[6]/div/div[2]/div[1]/a[3]  Comment fonctionne la recherche Google ?

    Element Text Should Not Be  xpath: /html/body/div[1]/div[6]/div/div[2]/div[1]/a[3]  Comment fonctionne

#    Double Click Element    xpath: //*[@id="gb_70"]

#    Click Element At Coordinates    xpath: //*[@id="identifierNext"]/div[2]  15   10

#    #Element Should Be Disabled name:btnK

    Close Browser