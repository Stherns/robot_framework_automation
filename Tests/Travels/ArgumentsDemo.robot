*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Argument demo keyword test1
    Arguments demo keyword  rcv  academy

Argument demo keyword test2
    Arguments demo keyword  test  testing

*** Keywords ***
Arguments demo keyword
    [Arguments]  ${arg1}  ${arg2}
    Log  ${arg1}
    Log  ${arg2}