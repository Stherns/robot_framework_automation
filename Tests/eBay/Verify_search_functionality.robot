What are Key Section of Robot Framework
Basics of Locating Web Page Element
How to Create User Defined keywords
Move User Defined keywords to Resource File
Robot Framework Test Setup and Teardown
Page Object Model(POM) in Robot Framework
Implement POM in Robot Framework
Scalar Variable in Robot Framework
List Variable in Robot Framework
Dictionary Variable in Robot Framework
Arguments in Robot Framework
Pass Variables from Command Line
Refactor Selenium Webelement Locators

*** Settings ***
Documentation  Basic Search functionality
Resource  ../../Resources/CommonFunctionality.robot
Resource  ../../Resources/PageObjects/HeaderPage.robot
Resource  ../../Resources/PageObjects/SearchResultsPage.robot

Test Setup  CommonFunctionality.Start Test Case
Test Teardown  CommonFunctionality.Finish Test Case

*** Variables ***

*** Test Cases ***
Verify basic search functionality1
    [Documentation]  This test case verifies the basic search
    [Tags]  Functional

    HeaderPage.Input Search Text and Click Search  robot
    SearchResultsPage.Verify Search Results  results for  robot

#Verify basic search functionality2
#    [Documentation]  This test case verifies the basic search
#    [Tags]  Functional
#
#    HeaderPage.Input Search Text and Click Search   books
#    SearchResultsPage.Verify Search Results  results for   books
#
#Verify basic search functionality3
#    [Documentation]  This test case verifies the basic search
#    [Tags]  Functional
#
#    HeaderPage.Input Search Text and Click Search   travel
#    SearchResultsPage.Verify Search Results  results for  travel

Verify Advanced Search Functionality
    [Documentation]  This test case verifies the advanced search
    [Tags]  Functional

    HeaderPage.Click on Advanced Search Link



#    eBay_UserDefinedKeybords.Verify Search Results
#    eBay_UserDefinedKeybords.Filter Results By Condition
#    eBay_UserDefinedKeybords.Verify Filter Results





