*** Settings ***
Test Teardown     Close Browser
Library           SeleniumLibrary

*** Test Cases ***
Register_an_account
    [Documentation]    User can register an account
    [Tags]    Register_an_account
    Open Browser    http://demo.guru99.com/test/newtours/index.php    chrome
    Title Should Be    Welcome: Mercury Tours
    Maximize Browser Window
    Log To Console    Register an account
    Click Element    link=REGISTER
    Input Text    name=firstName    Tho
    Input Text    name=lastName    Pham
    Input Text    name=phone    0908224292
    Input Text    id=userName    pttho@tma.com.vn
    Input Text    name=address1    111 Nguyen Dinh Chinh, P15
    Input Text    name=city    PN
    Input Text    name=state    HCM
    Input Text    name=postalCode    9999
    Select From List By Value    name=country    VIETNAM
    Input Text    name=email    Tho
    Input Password    name=password    123456
    Input Password    name=confirmPassword    123456
    Click Button    name=submit
    Wait Until Page Contains    Thank you for registering    10s