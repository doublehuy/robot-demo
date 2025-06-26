*** Settings ***
Suite Setup     Setup Suite
Suite Teardown  Close Browser
Resource        ../Pages/LoginPage.robot

*** Keywords ***
Setup Suite
    Login To System
