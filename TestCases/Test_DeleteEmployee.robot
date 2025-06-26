*** Settings ***
Library           SeleniumLibrary
Resource          ../Pages/LoginPage.robot
Resource          ../Pages/PIMPage.robot
Resource          ../Pages/EmployeePage.robot
Resource          ../Resources/Variables.robot
Suite Setup       Open Browser To Login Page And Login
Suite Teardown    Close Browser

*** Test Cases ***
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
