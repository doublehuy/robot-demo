*** Settings ***
Suite Setup     Setup Suite
Suite Teardown  Close Browser
Resource        ../Pages/LoginPage.robot

*** Keywords ***
Setup Suite
    Open Browser And Go To Login Page
    Login To System
