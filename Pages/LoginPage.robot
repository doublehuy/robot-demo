*** Settings ***
Library    SeleniumLibrary
Resource   ../Resources/Variables.robot

*** Keywords ***
Login To System
    Set Selenium Speed    0.5s
    Wait Until Element Is Visible    xpath=//input[@name="username"]    timeout=10s
    Input Text    xpath=//input[@name="username"]    ${USERNAME}
    Input Text    xpath=//input[@name="password"]    ${PASSWORD}
    Click Button  xpath=//button[@type="submit"]
    Wait Until Element Is Visible    xpath=//h6[text()='Dashboard']    timeout=10s



Login With Credentials
    [Arguments]    ${username}=    ${password}=
    Go To    ${URL}
    Wait Until Element Is Visible    xpath=//input[@name="username"]    timeout=10s
    Input Text    xpath=//input[@name="username"]    ${username}
    Input Text    xpath=//input[@name="password"]    ${password}
    Click Button  xpath=//button[@type="submit"]


