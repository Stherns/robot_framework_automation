*** Settings ***
Library  SeleniumLibrary
Resource  ./HeaderPage.robot

*** Variables ***
#${search_results} =  results for
#${search_text} =  robot

*** Keywords ***
#Verify Search Results
#    Page Should Contain  ${search results} ${search_text}[-2]        # List
#    Page Should Contain  ${search results} ${search_text.bcd}        #  Dictionary
#    Page Should Contain  ${search results} ${search_text}[abc]       #  Dictionary

# or let us try a different approach

Verify Search Results
    [Arguments]  ${search_results}  ${search_text}
    Page Should Contain  ${search_results} ${search_text}



#Select product condition
#
#Selecct delivery options

