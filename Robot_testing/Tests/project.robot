*** Settings ***
Documentation                           This is a basic test
Library                                 Selenium2Library


*** Variables ***

*** Test Cases ***
User can open home page
    [Documentation]                     As a user I ...

    open browser                        http://www.airbnb.pt   firefox
    wait until page contains            Reserve
    close browser

User can open test page from rest api
    [Documentation]                     As a user I ...

    open browser                        http://localhost:4000/greeting   firefox
    wait until page contains            Hello
    close browser

User can open personalized test page from rest api
    [Documentation]                     As a user I ...

    open browser                        http://localhost:4000/greeting?name=John   firefox
    wait until page contains            John
    close browser

*** Keywords ***
