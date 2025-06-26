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



Click Add Employee
    Click Element    ${ADD_EMPLOYEE_BUTTON}

Click Edit Employee
    Click Element    xpath=(//i[contains(@class,'edit')])[1]
    Wait Until Page Contains    Personal Details    timeout=10s

Select Employee In List
    # Chọn dòng nhân viên đầu tiên (tùy thuộc vào giao diện thực tế)
    Click Element    xpath=(//div[@role='row'])[2]  # hàng đầu tiên sau header


Search Employee By Name
    [Arguments]    ${name}
    Input Text     ${SEARCH_INPUT}    ${name}
    Click Button   ${SEARCH_BUTTON}
    Wait Until Page Contains    ${name}    timeout=5s


