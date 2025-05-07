*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
TC to demonstrate Browser Window Operation Keywords in Robot FW
    [Documentation]     TC to demonstrate Browser Window Operation Keywords in Robot FW

    Open Browser    https://salesforce.com   Chrome    alias=Chrome_Djh
    Maximize Browser Window
#    Sleep  2s
    Click Button    Refuser tous les cookies
#    Sleep  2s

# Attendre que le composant soit chargé
    Wait Until Page Contains Element    css=hgcf-header    timeout=10s

    # Accéder au shadowRoot de 'hgcf-header' et trouver le bouton 'Essai gratuit'
    ${button}=    Execute JavaScript
    ...    return document.querySelector('hgcf-header').shadowRoot.querySelector('hgcf-button[variant="trial"]');

    Click Element    ${button}
    Sleep    3s
#
#    Wait Until Element Is Visible   xpath = //*[@id="skip-target"]/section[1]/div/div/div/div/div/p/a
#    Click Element  //*[@id="skip-target"]/section[1]/div/div/div/div/div/p/a
#
#    ${WindowHandles} =  Get Window Handles
##    Sleep   1s
#
#    ${WindowIdentifier} =  Get Window Identifiers
##    Sleep   1s
#
#    ${WindowNames} =  Get Window Names
##    Sleep   1s
#
#    ${WindowTitle} =  Get Window Titles
##    Sleep   1s
#
#    Set Window Position     100  200
#
#    ${x} =  Get Window Size
#    ${y} =  Get Window Size
#    Log     ${x}
#    Log     ${y}
##    Sleep   1s
#
#    Set Window Size     800  600
#
#    ${width} =  Get Window Size
#    ${height} =  Get Window Size
#    Log     ${width}
#    Log     ${height}
#    Sleep   2s
#
##       ***************     Important notes: Switch Window can take different locators:     ***************
#
#
##             ***  MAIN — to switch back to the first opened window  ***
#
#    Switch Window       MAIN
#
##             ***  NEW — to switch to the latest opened window  ***
#
##    Switch Window       NEW
#
##             ***  TITLE — to switch to opened window  ***
#
##    Switch Window        title = Atlassian Intelligence | AI in Atlassian Cloud products | Atlassian        # 'title=' est facultatif
##    Switch Window        title = ${WindowTitle}[1]           # 'title=' est facultatif
##    Log     title = ${WindowTitle}[1]
#
##             ***  URL — to switch to opened window  ***
#
##    Switch Window       url = https://www.atlassian.com/platform/artificial-intelligence       # 'url=' est obligatoire
#
##             ***  NAME — to switch to opened window  ***
#
##    Switch Window       undefined
##    Switch Window       name = undefined
##    Switch Window        name = ${WindowNames}[1]
##    Log     name = ${WindowNames}[1]
#
#
##             ***  HANDLE — to switch to opened window  ***
#
#    Switch Window        ${WindowHandles}[1]
#    Log     handle = ${WindowHandles}[1]
#
##       ***************         ***************         ***************         ***************
#
#    Sleep  2s
#
#    Click Button    Accepter tous les cookies
#    Sleep   1s
#
#    Close Window
#    Sleep   1s
#
#    Switch Window   ${WindowHandles}[0]
#    Log     ${WindowHandles}[0]
#
#    Sleep   1s
#    Close Window