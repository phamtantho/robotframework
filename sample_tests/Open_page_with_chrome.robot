*** Settings ***
Test Teardown     Close Browser
Library           SeleniumLibrary

*** Test Cases ***
Open_page_with_chrome
    [Tags]    Open_page_with_chrome
    Log To Console    Open page https://www.google.com/ with browser chrome
    Open Browser    https://www.google.com/    chrome
    Input Text    name=q    robot framework
    Press Keys    None    ENTER
    Wait Until Page Contains Element    link=Robot Framework    10s
    Click Link    Robot Framework
    Log To Console    Successfully opened page