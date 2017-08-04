*** Settings ***
Documentation   Basic test on eSUB website
Library     Selenium2Library
Resource    /Users/tonydrake/Documents/ShastaAutomation/Web/ShastaAutomation/KeyWords/LoginKeywords.robot
Resource    /Users/tonydrake/Documents/ShastaAutomation/Web/ShastaAutomation/KeyWords/SelectProjectKeyword.Robot
Resource    /Users/tonydrake/Documents/ShastaAutomation/Web/ShastaAutomation/KeyWords/SideMenuKeyword.robot

*** Variables ***
${REMOTE_URL}     http://web.develop.shasta.esubonline.com/
${BROWSER VERSION}    59.0
${APP_LOCATION}      /Users/tonydrake/Documents/ShastaAutomation/Web/shasta.robot/ShastaWebAuto



*** Test Cases ***



#Invalid Login    Invalid Login

#Invalid Login then Valid Login    Invalid Login then Valid Login

Invalid Login then Valid Login    Invalid Login then Valid Login

Select Project    Select Project

Navigate through side menu
    Open Browser    http://web.develop.shasta.esubonline.com/   Chrome
    Set Window Size    ${800}    ${600}
    Wait Until Page Contains    eSUB
    Input Text    id=txtUsername    manager@esub.com
    Sleep    2s
    Input Text    id=txtPassword     Test1234
    Click Button    id=btnLogin
    Sleep    3s
    Wait Until Page Contains    Project Manager
    Click Element    id=project-card-f96d007e-c662-4b36-b81b-52ad9a287306






























