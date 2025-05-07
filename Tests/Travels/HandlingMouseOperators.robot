                   MOUSE OPERATIONS
• Mouse Down
Simulates pressing the left mouse button on the element locator
• Mouse Down On Image
Simulates a mouse down event on an image identified by locator
• Mouse Down On Link
Simulates a mouse down event on a link identified by locator
• Mouse Up
Simulates releasing the left mouse button on the element locator
• Mouse Over
Simulates hovering the mouse over the element locator
• Mouse Out
Simulates moving the mouse away from the element locator
• Open Context Menu
Right Click Operations - Opens the context menu on the element identified by locator
• Drag And Drop
Drags the element identified by locator into the target element
• Drag And Drop By Offset
Drags the element identified with locator by offset/yoffset.

*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
Test Case to demonstrate mouse operations in Robot Framework
    [Documentation]     Test Case to demonstrate mouse operations in Robot Framework
    Open Browser    https://www.sugarcrm.com/au/request-demo/  chrome
    Maximize Browser Window
    Sleep  1s
    Click Button  Accept All Cookies
    Scroll Element Into View  xpath://*[@id="input_1_12_1"]
    Sleep  1s

    Mouse Down  xpath://*[@id="input_1_4"]
    Sleep  1s
    Mouse Up  xpath://*[@id="input_1_4"]
    Sleep  1s
    Scroll Element Into View  xpath://*[@id="menu-item-25338"]/a
    Sleep  1s

    Mouse Down On Link  xpath://*[@id="menu-item-25338"]/a
    Sleep  1s
    Mouse Down On Link  xpath://*[@id="main"]/div/div/div[9]/div/div/div[2]/a
    Sleep  1s
    Mouse Over  xpath:(//a[normalize-space()='Watch Demo'])[1]
    Sleep  1s
    Mouse Out  xpath:(//a[normalize-space()='Watch Demo'])[1]
    Sleep  1s
    Scroll Element Into View   xpath://*[@id="input_1_12_1"]
    Sleep  1s
    Mouse Down On Image  xpath://footer//div[1]/a/img
    Sleep  1s

    # Drag and drop example
    Go to  https://demoqa.com/droppable/
    Sleep  1s
    Scroll Element Into View  xpath://*[@id="app"]/div/div/div/div[1]/div/div/div[6]/span/div/div[1]
    Drag And Drop  xpath://*[@id="draggable"]  xpath://*[@id="droppable"]
    Sleep  1s

    # Right click on element
    Open Context Menu  xpath://*[@id="droppable"]
    Sleep  2s

    Close Browser