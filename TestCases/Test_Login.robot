*** Settings ***
Library           SeleniumLibrary
Resource          ../Pages/LoginPage.robot
Resource          ../Resources/Variables.robot
Suite Setup       Open Browser To Login Page
Suite Teardown    Close Browser

*** Test Cases ***
Login With Valid Credentials
    Login To System
    Page Should Contain Element    xpath=//h6[text()='Dashboard']

Login With Invalid Password
    Login With Credentials    Admin    wrongpass
    Page Should Contain    Invalid credentials

Login With Empty Username
    Login With Credentials    ${EMPTY}    admin123
    Page Should Contain Element    xpath=//span[text()='Required']

Login With Empty Password
    Login With Credentials    Admin    ${EMPTY}
    Page Should Contain Element    xpath=//span[text()='Required']

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    0.5s
