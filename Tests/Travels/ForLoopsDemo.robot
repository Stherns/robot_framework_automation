        USING LOOPS IN ROBOT FRAMEWORK
• Loops allow us to iterate over a sequence
• You can use Loops to
Loop through a list of elements
Repeat a single keyword several times
Loop through range of numbers (1-10)
• Loops begin with "FOR"
• Example:
    FOR ${var} IN @(list)
        Keyword ${var}
    END

*** Settings ***
Library  SeleniumLibrary  #5s

*** Variables ***
${url}  https://www.google.com/
${browser}  chrome
#${CHROME PROFILE}    --user-data-dir=/path/to/your/chrome/profile

*** Test Cases ***
Test Case to demonstrate FOR Loop in Robot Framework
    [Documentation]  Test Case to demonstrate FOR Loop in Robot Framework
    Set Selenium Implicit Wait  5s

    Open Browser  ${url}  ${browser}  #options=${CHROME PROFILE}
    Sleep  2s
    Maximize Browser Window
    Sleep  3s
    Click Element  xpath://*[@id="L2AGLb"]/div
    Sleep  2s
    Input Text  name:q  Djhery Moussavou
    Sleep  3s
    Press Keys  xpath://*[@id="APjFqb"]  RETURN
    Sleep  2s

    Wait Until Element Is Visible    xpath://iframe[@title="reCAPTCHA"]
    Select Frame    xpath://iframe[@title="reCAPTCHA"]
    Wait Until Element Is Visible    xpath://*[@id="recaptcha-anchor"]
    Sleep  2s
    Click Element    xpath://*[@id="recaptcha-anchor"]
    Unselect Frame
    Sleep  12s

#    Wait Until Location Contains  Djhery
    @{results_on_page}=  Get WebElements  xpath://*[@id="rso"]/div

    FOR  ${element}  IN  @{results_on_page}
          ${text}=  Get Text  ${element}
    END

    Close Browser