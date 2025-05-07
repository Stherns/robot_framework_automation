                       WORKING WITH RADIO BUTTONS
• Page Should Contain Radio Button - Verifies radio button locator is found from current page
• Page Should Not Contain Radio Button - Verifies radio button locator is not found from current page
• Select Radio Button - Sets the radio button group group_name to value
• Radio Button Should Not Be Selected - Verifies radio button group group_name has no selection
• Radio Button Should Be Set To - Sets the radio button group group_name to value

*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TC to demonstrate Radio button operation keywords
    [Documentation]  TC to demonstrate Radio button operation keywords

    Open Browser  https://www.shopify.com/fr/plus#contact-sales  Chrome
    Maximize Browser Window
    sleep  1s
    Scroll Element Into View  //button[normalize-space()='Démarrer le chat en direct']

    Page Should Contain Radio Button  id:isAgency

    Select Radio Button  is_agency  true
    Sleep  1s

    Page Should Not Contain Radio Button  xpath://*[@id="doi00"]

#    Radio Button Should Not Be Selected  is_agency

    Select Radio Button  is_agency  false
    Sleep  1s

    Radio Button Should Be Set To  is_agency  false

    Close Browser