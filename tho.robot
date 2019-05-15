*** Settings ***
Test Teardown     Close Browser
Library           SeleniumLibrary

*** Variables ***
${remote_url}   http://10.128.224.21:4444/wd/hub
${desired_caps}    

*** Test Cases ***
Test1
    [Documentation]    User can register an account
    [Tags]    Register_an_account
    Open Browser    http://demo.guru99.com/test/newtours/index.php     chrome   remote_url=${remote_url}
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

Test2
    [Tags]    Open_page_with_chrome
    Log To Console    Open page https://www.google.com/ with browser chrome
    Open Browser    https://www.google.com/    chrome   remote_url=${remote_url}
    Input Text    name=q    robot framework
    Press Keys    None    ENTER

Test3
    [Tags]    Open_page_with_firefox
    Log To Console    Open page https://www.google.com/ with browser firefox
    Open Browser    https://www.google.com/    firefox  remote_url=${remote_url}
    Input Text    name=q    robot framework
    Press Keys    None    ENTER

Test4
    [Tags]    Open_page_with_chrome
    Log To Console    Open page https://www.google.com/ with browser chrome
    Open Browser    https://www.google.com/    chrome   remote_url=${remote_url}
    Input Text    name=q    robot framework
    Press Keys    None    ENTER
    Wait Until Page Contains Element    css=#rso > div:nth-child(1) > div > div:nth-child(1) > div > div > div.r > a > h3    10s
    Click Link    Robot Framework
    Log To Console    Successfully opened page

Test5
    [Tags]    Open_page_with_firefox
    Log To Console    Open page https://www.google.com/ with browser firefox
    Open Browser    https://www.google.com/    firefox          remote_url=${remote_url}
    Input Text    name=q    robot framework
    Press Keys    None    ENTER
    Wait Until Page Contains Element    css=#rso > div:nth-child(1) > div > div:nth-child(1) > div > div > div.r > a > h3    10s
    Click Link    Robot Framework
    Log To Console    Successfully opened page
