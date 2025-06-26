*** Settings ***
Library    SeleniumLibrary
Resource   ../Resources/Variables.robot

*** Keywords ***
Login To System
    [Arguments]    ${username}=${USERNAME}    ${password}=${PASSWORD}
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    0.5s
    Input Text    xpath=//input[@name="username"]    ${username}
    Input Text    xpath=//input[@name="password"]    ${password}
    Click Button  xpath=//button[@type="submit"]
    Wait Until Element Is Visible    xpath=//h6[text()='Dashboard']
