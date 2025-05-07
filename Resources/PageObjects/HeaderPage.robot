*** Settings ***
Library  SeleniumLibrary
Variables  ../WebElements.py

*** Variables ***

#${search_text}  Mobile
#@{search_text}  Robot  Travel  Books  Gift         # List Variables in Robot Framework
#&{search_text}   abc=books  bcd=travel              #  Dictionary Variable in Robot Framework

*** Keywords ***
#Input Search Text and Click Search
#    Input Text  xpath://*[@id="gh-ac"]  ${search_text}[-2]      # from List
#    Input Text  xpath://*[@id="gh-ac"]  ${search_text.bcd}       #  from Dictionary
#    Input Text  xpath://*[@id="gh-ac"]  ${search_text}[abc]      #  from Dictionary
#    Press Keys  xpath://*[@id="gh-search-btn"]    RETURN


# or let us try a different approach

Input Search Text and Click Search
    [Arguments]  ${search_text}
    Input Text  ${HomePageSearchTextBox}  ${search_text}
    Press Keys  ${HomePageSearchButton}    RETURN

Click on Advanced Search Link

#    Click Link  Advanced
    Click Element   ${HomePageAdvancedSearchLink}
