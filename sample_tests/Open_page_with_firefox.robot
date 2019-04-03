*** Settings ***
Test Teardown     Close Browser
Library           SeleniumLibrary

*** Test Cases ***
Open_page_with_firefox
    [Tags]    Open_page_with_firefox
    Log To Console    Open page https://www.google.com/ with browser firefox
    Open Browser    https://www.google.com/    firefox
    Input Text    name=q    robot framework
    Press Keys    None    ENTER
    Wait Until Page Contains Element    link=Robot Framework    10s
    Click Link    Robot Framework
    Log To Console    Successfully opened page