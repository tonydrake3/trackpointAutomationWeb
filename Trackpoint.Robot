*** Settings ***
Documentation  All of trackpoint lives in here for Automation testing
Library    Selenium2Library


*** Variables ***
${URL}    https://www.esubonline.com/TRACKpoint/


*** Test Cases ***

Enter Valid Username and Password After Password Request    Enter Valid Username and Password After Password Request


*** Keywords ***

Invalid Subscriber
    Open Browser    https://www.esubonline.com/TRACKpoint/    Firefox
    Sleep     3s
    Input Text    id=loginName    support@esubinc.com
    Sleep    1s
    Click Button    id=Image1
    Capture Page Screenshot    Filename=SubscriberInvalid.png

Forgot Password
    Open Browser    https://www.esubonline.com/TRACKpoint/    Chrome
    Sleep     3s
    Input Text    id=loginName    TrialDiaz
    Sleep    1s
    Click Button    id=Image1
    Sleep    2s
    Wait Until Page Contains    eSUB
    Input Text    id=Text1    mynamemeansnothing
    Sleep    2s
    #Click Button    id=Image1
    #Sleep    3s
    Click Element    Xpath=//*[@id="content"]/form/table/tbody/tr[1]/td[2]/div/font/a

Request Password Invalid Email Address
    Open Browser    https://www.esubonline.com/TRACKpoint/    Chrome
    Sleep     3s
    Input Text    id=loginName    TrialDiaz
    Sleep    1s
    Click Button    id=Image1
    Sleep    2s
    Wait Until Page Contains    eSUB
    Input Text    id=Text1    mynamemeansnothing
    Sleep    2s
    #Click Button    id=Image1
    #Sleep    3s
    Click Element    Xpath=//*[@id="content"]/form/table/tbody/tr[1]/td[2]/div/font/a
    Wait Until Page Contains    eSUB
    Input Text    id=text1    mrWRONGemail@email.com
    Sleep    2s
    Click Button    id=Submit1
    Sleep    2s
    Capture Page Screenshot    Filname=pwWithInvalidEmail.png
    Sleep    2s
    Close Browser


Request Password Valid Email Address
    Open Browser    https://www.esubonline.com/TRACKpoint/    Chrome
    Sleep     3s
    Input Text    id=loginName    TrialDiaz
    Sleep    1s
    Click Button    id=Image1
    Sleep    2s
    Wait Until Page Contains    eSUB
    Input Text    id=Text1    mynamemeansnothing
    Sleep    2s
    Click Element    Xpath=//*[@id="content"]/form/table/tbody/tr[1]/td[2]/div/font/a
    Wait Until Page Contains    eSUB
    Input Text    id=text1    support@esubinc.com
    Sleep    2s
    Click Button    id=Submit1
    Sleep    2s
    Capture Page Screenshot    Filname=pwWithIvalidEmail.png
    Sleep    2s
    Close Browser

Enter Valid Username and Password After Password Request
    Open Browser    https://www.esubonline.com/TRACKpoint/    Chrome
    Sleep     3s
    Input Text    id=loginName    TrialDiaz
    Sleep    1s
    Click Button    id=Image1
    Sleep    2s
    Wait Until Page Contains    eSUB
    Input Text    id=Text1    mynamemeansnothing
    Sleep    2s
    Click Element    Xpath=//*[@id="content"]/form/table/tbody/tr[1]/td[2]/div/font/a
    Wait Until Page Contains    Request Password
    Input Text    id=text1    support@esubinc.com
    Sleep    2s
    Input Text    id=Submit1
    Sleep    2s
    Wait Until Page Contains    eSUB

    Sleep    3s
    Capture Page Screenshot    Filename=successfulreentry.png


Valid Subscriber
    Open Browser    https://www.esubonline.com/TRACKpoint/   Firefox
    Sleep     3s
    Input Text    id=loginName    TrialDiaz
    Sleep    1s
    Click Button    id=Image1
    Capture Page Screenshot    Filename=SubscriberValid.png

Login with Invalid then Valid Subscriber
    Open Browser    https://www.esubonline.com/TRACKpoint/    Firefox
    Sleep     3s
    Input Text    id=loginName    mynamemeansnothing
    Sleep    2s
    Click Button    id=Image1
    Wait until page contains    You have entered an invalid company code
    Capture Page Screenshot    Filename=subscribernamewrong.png
    Sleep    2s
    #Clear Element Text    id=loginName    mynamemeansnothing
    #Sleep    3s
    Input Text    id=loginName    TrialDiaz
    Sleep    3s
    Click Button    id=Image1
    Capture Page Screenshot    Filename=namemeanssomething.png
    Sleep    3s
    Close Browser


Blank Login Attempt
    Open Browser    https://www.esubonline.com/TRACKpoint/   Firefox
    Sleep     3s
    Click Button    id=Image1
    Capture Page Screenshot    Filename=BlankLogin.png
    Close Browser


Subscriber with All Caps
    Open Browser    https://www.esubonline.com/TRACKpoint/   Firefox
    Sleep     3s
    Input Text    id=loginName    TRIALDIAZ
    Sleep    1s
    Click Button    id=Image1
    Sleep     2s
    Wait Until Page Contains    Welcome to eSUB
    Capture Page Screenshot    Filename=EnterNameinAllCaps.png


Enter Invalid Username and Password
    Open Browser    https://www.esubonline.com/TRACKpoint/   Firefox
    Sleep     3s
    Input Text    id=loginName    TrialDiaz
    Sleep    2s
    Click Button    id=Image1
    Sleep     2s
    Wait Until Page Contains    eSUB
    Sleep    1s
    Input Text    id=Text1    suppor@esubinc.com
    Sleep    2s
    Input Text    id=Password1    evere$t16
    Sleep    1s
    Click Button    id=Image1
    Capture Page Screenshot    Filename=EnterNameinAllCaps.png


Retry Login
    Open Browser    https://www.esubonline.com/TRACKpoint/    Safari
    Sleep     3s
    Input Text    id=loginName    TrialDiaz
    Sleep    2s
    Click Button    id=Image1
    Sleep     2s
    Wait Until Page Contains    eSUB
    Sleep    1s
    Input Text    id=Text1    suppor@esubinc.com
    Sleep    2s
    Input Text    id=Password1    evere$t16
    Sleep    1s
    Click Button    id=Image1
    Sleep    1s
    Click Element    Xpath=/html/body/font/div[3]/center/b/i/font/a[1]
    Capture Page Screenshot    Filename=invalidUsernameAndPassword.png
    Sleep    2s
    Close Browser

Valid Username and Password
    Open Browser    https://www.esubonline.com/TRACKpoint/   Firefox
    Sleep     3s
    Input Text    id=loginName    TrialDiaz
    Sleep    2s
    Click Button    id=Image1
    Sleep     2s
    Wait Until Page Contains    eSUB
    Sleep    1s
    Input Text    id=Text1    support@esubinc.com
    Sleep    2s
    Input Text    id=Password1    evere$t16
    Sleep    1s
    Click Button    id=Image1
    Wait Until Page Contains    Select Project

    Capture Page Screenshot    Filename=ValidUsernameAndPassword.png




