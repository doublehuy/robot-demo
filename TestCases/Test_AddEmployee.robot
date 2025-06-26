*** Settings ***
Library           SeleniumLibrary
Resource          ../Pages/LoginPage.robot
Resource          ../Pages/EmployeePage.robot
Resource          ../Resources/Variables.robot
Suite Setup       Open Browser To Login Page And Login
Suite Teardown    Close Browser

*** Test Cases ***
Add Employee With Valid Data
    Go To PIM Page
    Click Add Employee
    Input Employee Name    Huy    QC
    Save Employee
    Page Should Contain Element    xpath=//h6[text()='Personal Details']

Add Employee With Empty First Name
    Go To PIM Page
    Click Add Employee
    Input Employee Name    ${EMPTY}    QC
    Save Employee
    Page Should Contain Element    xpath=//span[text()='Required']

*** Keywords ***
Open Browser To Login Page And Login
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    0.5s
    Login To System
