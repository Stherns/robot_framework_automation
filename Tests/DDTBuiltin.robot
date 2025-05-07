               WHAT IS DATA DRIVEN TESTING
• Data driven testing means running automated tests with different input data
• Data-driven testing helps to achieve better test coverage
• Data-driven tests will read data from data storages (Built-in, external files, Database)
• Data-driven test approach provides better code maintainability
• You can use data-driven test approach to prepare testdata

                ROBOT FRAMEWORK - BUILT IN

*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/CommonFunctionality.robot
Resource  ../TestData/ConfigData.robot

Suite Setup  CommonFunctionality.Start Test Case
Suite Teardown  CommonFunctionality.Finish Test Case
Test Template  Invalid Login Scenarios

*** Test Cases ***                                       USERNAME         PASSWORD       ERROR MESSAGE
Verify Login Fails - Blank Username and Blank Password  ${EMPTY}         ${EMPTY}        Epic sadface: Username is required
Verify Login Fails - Wrong Username                     standard_us      secret_sauce    Epic sadface: Username and password do not match any user in this service
Verify Login Fails - LockedOut User                     locked_out_user  secret_sauce    Epic sadface: Sorry, this user has been locked out.
Verify Login Fails - Wrong Password                     standard_user    secret_sa      Epic sadface: Username and password do not match any user in this service
Verify Login Fails - Wrong Username and Password        standard_us      secret_s        Epic sadface: Username and password do not match any user in this service
Verify Login Fails - Blank Username and Password        ${EMPTY}         secret_sauce    Epic sadface: Username and password do not match any user in this service

*** Keywords ***
Invalid Login Scenarios
    [Arguments]  ${username}  ${password}  ${error_msg}
    Input Text  ${txtbox_username}  ${username}
    Input Text  ${txtbox_password}  ${password}
    Click Button  ${btn_login}
    Element Should Contain  ${txt_error}  ${error_msg}