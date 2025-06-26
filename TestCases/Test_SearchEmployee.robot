*** Settings ***
Library           SeleniumLibrary
Resource          ../Pages/LoginPage.robot
Resource          ../Pages/EmployeePage.robot
Resource          ../Resources/Variables.robot
Suite Setup       Open Browser To Login Page And Login
Suite Teardown    Close Browser

*** Test Cases ***
Search Employee Successfully
    Go To PIM Page
    Search Employee By Name    Huy
    Page Should Contain    Huy

*** Keywords ***
Open Browser To Login Page And Login
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    0.5s
    Login To System
