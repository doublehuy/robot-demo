*** Settings ***
Library           SeleniumLibrary
Resource          ../Pages/LoginPage.robot
Resource          ../Pages/EmployeePage.robot
Resource          ../Resources/Variables.robot
Suite Setup       Open Browser To Login Page And Login
Suite Teardown    Close Browser

*** Test Cases ***
Edit Employee Name Successfully
    Go To PIM Page
    Search Employee By Name    Huy
    Click Edit Employee
    Change First Name    HuyUpdated
    Save Employee
    Page Should Contain    HuyUpdated

Edit Employee With Empty First Name
    Go To PIM Page
    Search Employee By Name    HuyUpdated
    Click Edit Employee
    Clear First Name
    Save Employee
    Page Should Contain Element    xpath=//span[text()='Required']

*** Keywords ***
Open Browser To Login Page And Login
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    0.5s
    Login To System
