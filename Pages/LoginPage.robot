*** Settings ***
Library    SeleniumLibrary
Resource   ../Resources/Variables.robot

*** Variables ***
${USERNAME_INPUT}   xpath=//input[@name="username"]
${PASSWORD_INPUT}   xpath=//input[@name="password"]
${LOGIN_BUTTON}     xpath=//button[@type="submit"]

*** Keywords ***
Input Username
    Input Text    ${USERNAME_INPUT}    ${USERNAME}

Input Password
    Input Text    ${PASSWORD_INPUT}    ${PASSWORD}

Click Login
    Click Button  ${LOGIN_BUTTON}

Login To System
    Open Browser   ${BASE_URL}   chrome
    Maximize Browser Window

    # chờ cho đến khi web load ô username xuất hiện trên trang
    Wait Until Element Is Visible    xpath=//input[@name="username"]    10s

    Input Username
    Input Password
    Click Login
    Wait Until Page Contains Element   xpath=//h6[text()='Dashboard']


