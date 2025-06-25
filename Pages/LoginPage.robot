*** Settings ***
Library    SeleniumLibrary
Resource   ../Resources/Variables.robot

*** Keywords ***
Open Browser And Go To Login Page
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    0.5s

Login To System
    [Arguments]    ${username}=${USERNAME}    ${password}=${PASSWORD}
    Go To    ${URL}
    Input Text    xpath=//input[@name="username"]    ${username}
    Input Text    xpath=//input[@name="password"]    ${password}
    Click Button  xpath=//button[@type="submit"]
    Wait Until Element Is Visible    xpath=//h6[text()='Dashboard']
