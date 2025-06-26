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
Click Add Employee
    Click Element    xpath=//a[text()='Add Employee']

Input Employee Name
    [Arguments]    ${first_name}    ${last_name}
    Input Text     xpath=//input[@name='firstName']    ${first_name}
    Input Text     xpath=//input[@name='lastName']     ${last_name}

Change First Name
    [Arguments]    ${new_name}
    Clear Element Text    xpath=//input[@name='firstName']
    Input Text            xpath=//input[@name='firstName']    ${new_name}

Save Employee
    Click Button    xpath=//button[@type='submit']

Search Employee By Name
    [Arguments]    ${name}
    Input Text     xpath=(//input[@placeholder='Type for hints...'])[1]    ${name}
    Click Button   xpath=//button[@type='submit']
    Wait Until Page Contains    ${name}    timeout=5s

Select Employee In List
    Click Element    xpath=(//div[@role='row'])[2]

Delete Selected Employee
    Click Element    xpath=(//i[contains(@class,'trash')])[1]

Confirm Delete
    Click Button    xpath=//button[text()='Yes, Delete']
