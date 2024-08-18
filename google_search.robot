*** Settings ***
Resource    ./resources/keywords.robot

*** Test Cases ***
Search Google with Term 1
    [Tags]    Search
    [Documentation]    This test case searches for the term 'robot framework' on Google and verifies that the page title contains the search term.
    Open Google And Search    robot framework
    Capture Search Result    2    TC1    robot framework    Supphalak
    Close Browser

Search Google with Term 2
    [Tags]    Search
    [Documentation]    This test case searches for the term 'selenium' on Google and verifies that the page title contains the search term.
    Open Google And Search    selenium
    Capture Search Result    3    TC2    selenium    Supphalak
    Close Browser

Search Google with Term 3
    [Tags]    Search
    [Documentation]    This test case searches for the term 'python' on Google and verifies that the page title contains the search term.
    Open Google And Search    python
    Capture Search Result    4    TC3    python    Supphalak
    Close Browser

Search Google with Term 4
    [Tags]    Search
    [Documentation]    This test case searches for the term 'machine learning' on Google and verifies that the page title contains the search term.
    Open Google And Search    machine learning
    Capture Search Result    5    TC4    machine learning   Supphalak
    Close Browser