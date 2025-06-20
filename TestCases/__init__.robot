*** Settings ***
Suite Setup     Setup Suite
Suite Teardown  Close Browser
Resource        ../Pages/LoginPage.robot

*** Keywords ***
Setup Suite
    Set Selenium Speed    0.5s
    Login To System
