*** Settings ***
Resource    ../resources/keywords.robot

*** Test Cases ***
Search Google with Term 1
    Open Google And Search    robot framework
    Capture Search Result    2    TC1    robot framework
    Close Browser