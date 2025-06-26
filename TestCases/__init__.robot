*** Settings ***
Suite Setup     Setup Suite
Suite Teardown  Close Browser
Resource        ../Pages/LoginPage.robot

*** Keywords ***
Setup Suite
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Login To System
