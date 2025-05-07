#*** Settings ***
#Library  SeleniumLibrary
#
#*** Keywords ***
#Verify Search Results
#    Input Text  xpath://*[@id="gh-ac"]  Mobile
#    Press Keys    xpath://*[@id="gh-search-btn"]    RETURN      #  ENTER  or  [Enter]  or  [Return]  or  Click Button    id=gh-search-btn
#    Page Should Contain    results for Mobile
#
#Filter Results By Condition
#    Click Element  (//button[@type='button'])[23]
##    Sleep  2s
##    Click Element   (//span[@class='btn__cell'])[2]
##    Sleep  2s
#
##Verify Filter Results
##    Element Should Contains    xpath:***********