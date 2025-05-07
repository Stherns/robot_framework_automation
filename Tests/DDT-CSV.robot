                   WHAT IS DATA DRIVEN TESTING
• Data driven testing means running automated tests with different input data
• Data-driven testing helps to achieve better test coverage
• Data-driven tests will read data from data storages (Built-in, external files, Database)
• Data-driven test approach provides better code maintainability
• You can use data-driven test approach to prepare testdata

                EXTERNAL CSV FILE

*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/CommonFunctionality.robot
Resource  ../TestData/ConfigData.robot
Library  DataDriver  ../TestData/TestData.csv

Suite Setup  CommonFunctionality.Start TestCase
Suite Teardown  CommonFunctionality.Finish TestCase
Test Template  Invalid Login Scenarios

*** Test Cases ***
Verify Login Fails with Invalid Creds  ${username}  ${password}  ${error_msg}

*** Keywords ***
Invalid Login Scenarios
    [Arguments]  ${username}  ${password}  ${error_msg}
    Input Text  ${txtbox_username}  ${username}
    Input Text  ${txtbox_password}  ${password}
    Click Button  ${btn_login}
    Sleep  0.5s
    Element Should Contain  ${txt_error}  ${error_msg}