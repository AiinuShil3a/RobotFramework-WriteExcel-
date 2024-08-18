*** Settings ***
Resource    ../resources/keywords.robot

*** Test Cases ***
Search Google with Term 4
    Open Google And Search    machine learning
    Capture Search Result    5    TC4    machine learning   Supphalak
    Close Browser