*** Settings ***
Library    SeleniumLibrary
Resource   ../Pages/LoginPage.robot

*** Test Cases ***
Test Login Success
    Login To System
    Page Should Contain Element    xpath=//h6[text()='Dashboard']
    Close Browser
