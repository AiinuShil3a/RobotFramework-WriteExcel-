*** Settings ***
Resource    ../resources/keywords.robot

*** Test Cases ***
Search Google with Term 3
    Open Google And Search    python
    Capture Search Result    4    TC3    python
    Close Browser