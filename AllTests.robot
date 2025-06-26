*** Settings ***
Library           SeleniumLibrary
Resource          Pages/LoginPage.robot
Resource          Pages/PIMPage.robot
Resource          Pages/EmployeePage.robot
Resource          Resources/Variables.robot
Suite Setup       Open Browser To Login Page And Login
Suite Teardown    Close Browser

*** Test Cases ***

# -------------------- LOGIN ---------------------
Login With Valid Credentials
    Login To System
    Page Should Contain Element    xpath=//h6[text()='Dashboard']

Login With Invalid Password
    Login With Credentials    Admin    wrongpass
    Page Should Contain    Invalid credentials

# -------------------- ADD ---------------------
Add Employee With Valid Data
    Go To PIM Page
    Click Add Employee
    Input Employee Name    Huy    QC
    Save Employee
    Page Should Contain Element    xpath=//h6[text()='Personal Details']

# -------------------- EDIT ---------------------
Edit Employee Name Successfully
    Go To PIM Page
    Search Employee By Name    Huy
    Click Edit Employee
    Change First Name    HuyUpdated
    Save Employee
    Page Should Contain    HuyUpdated

# -------------------- DELETE ---------------------
Delete Employee Successfully
    Go To PIM Page
    Search Employee By Name    HuyUpdated
    Select Employee In List
    Delete Selected Employee
    Confirm Delete
    Page Should Not Contain    HuyUpdated

*** Keywords ***
Open Browser To Login Page And Login
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    0.5s
    Login To System
