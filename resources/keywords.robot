*** Settings ***
Resource    ./setting.robot
Resource    ./variables.robot

*** Keywords ***
Open Google And Search
    [Arguments]    ${search_term}
    Open Browser    https://www.google.com/    ${BROWSER}
    Input Text      name=q                 ${search_term}
    Press Keys      name=q                 ENTER

Capture Search Result
    [Arguments]    ${row}    ${TestCase}    ${search_term}
    ${actual_result}=    Get Title
    ${status}=    Run Keyword And Return Status    Should Contain    ${actual_result}    ${search_term}
    ${final_status}=    Run Keyword If    ${status}    Set Variable    pass    ELSE    Set Variable    fail
    ${date}    Get Current Date    result_format=%d-%m-%Y
    Write Test Result To Excel    ${row}    ${TestCase}    ${search_term}    ${final_status}    ${date}    ${NAME}    ${actual_result}    ${EXCEL_FILE}

Write Test Result To Excel
    [Arguments]    ${row}    ${TestCase}    ${Username}    ${status}    ${date}    ${TESTER_NAME}    ${actual_result}    ${EXCEL_FILE}
    ${row} =    Evaluate    int(${row})
    IF    ${row} == 2
        Create Excel Document    ${EXCEL_FILE}
        Write Excel Cell    1   1   Test Cases
        Write Excel Cell    1   2   Search Term
        Write Excel Cell    1   3   Actual
        Write Excel Cell    1   4   Result (pass, fail)
        Write Excel Cell    1   5   Date
        Write Excel Cell    1   6   Tester
    ELSE
        Open Excel Document    ${EXCEL_FILE}    doc_id=doc1
    END
    Write Excel Cell    ${row}   1   ${TestCase}
    Write Excel Cell    ${row}   2   ${Username}
    Write Excel Cell    ${row}   3   ${actual_result}
    Write Excel Cell    ${row}   4   ${status}
    Write Excel Cell    ${row}   5   ${date}
    Write Excel Cell    ${row}   6   ${NAME}
    Save Excel Document    ${EXCEL_FILE}
    Close All Excel Documents