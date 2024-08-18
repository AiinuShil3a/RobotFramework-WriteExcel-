*** Settings ***
Resource    ./resources/keywords.robot

*** Test Cases ***
Search Google with Term 1
    Open Google And Search    robot framework
    Capture Search Result    2    TC1    robot framework    Supphalak
    Close Browser

Search Google with Term 2
    Open Google And Search    selenium
    Capture Search Result    3    TC2    selenium    Supphalak
    Close Browser

Search Google with Term 3
    Open Google And Search    python
    Capture Search Result    4    TC3    python    Supphalak
    Close Browser

Search Google with Term 4
    Open Google And Search    machine learning
    Capture Search Result    5    TC4    machine learning   Supphalak
    Close Browser