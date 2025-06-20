*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${EMPLOYEE_MENU}          xpath=//span[text()='PIM']
${ADD_EMPLOYEE_BUTTON}    xpath=//a[text()='Add Employee']
${FIRST_NAME_INPUT}       xpath=//input[@name='firstName']
${LAST_NAME_INPUT}        xpath=//input[@name='lastName']
${SAVE_BUTTON}            xpath=//button[@type='submit']
${SEARCH_INPUT}           xpath=(//input[@placeholder='Type for hints...'])[1]
${SEARCH_BUTTON}          xpath=//button[@type='submit']
${DELETE_BUTTON}          xpath=(//i[contains(@class,'trash')])[1]

*** Keywords ***
Go To Employee Page
    Click Element  ${EMPLOYEE_MENU}
    Wait Until Page Contains Element  ${ADD_EMPLOYEE_BUTTON}

Add New Employee
    Click Element  ${ADD_EMPLOYEE_BUTTON}
    Wait Until Element Is Visible    ${FIRST_NAME_INPUT}    10s
    Input Text     ${FIRST_NAME_INPUT}     John
    Input Text     ${LAST_NAME_INPUT}      Doe
    Click Button   ${SAVE_BUTTON}
    Wait Until Page Contains    Personal Details

Search Employee
    Input Text     ${SEARCH_INPUT}    John
    Click Button   ${SEARCH_BUTTON}
    Sleep          2s

Delete Employee
    Click Element  ${DELETE_BUTTON}
    Click Button   xpath=//button[text()='Yes, Delete']
    Sleep          2s
