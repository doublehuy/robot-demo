*** Settings ***
Library    SeleniumLibrary
Resource   ../Pages/LoginPage.robot
Resource   ../Pages/EmployeePage.robot

*** Test Cases ***
Test Add And Delete Employee
    Login To System
    Go To Employee Page
    Add New Employee
    Go To Employee Page
    Search Employee
    Delete Employee
    Close Browser
