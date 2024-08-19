*** Settings ***
Resource    ../resources/keywords.robot

*** Test Cases ***
Search Google with Term 2
    Open Google And Search    selenium
    Capture Search Result    3    TC2    selenium
    Close Browser