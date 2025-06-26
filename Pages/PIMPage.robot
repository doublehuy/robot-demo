*** Settings ***
Library    SeleniumLibrary
Resource   ../Resources/Variables.robot

*** Keywords ***
Go To PIM Page
    Click Element    xpath=//span[text()='PIM']
    Wait Until Page Contains Element    xpath=//h6[text()='PIM']
