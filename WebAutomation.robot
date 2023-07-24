*** Settings ***
Library           SeleniumLibrary
Resource          CommonlyUsedkeywords.txt

*** Test Cases ***
OpenBrowser
    Open Browser    https://ngendigital.com/practice    Chrome
    Maximize Browser Window
    Sleep    2
    Input Text    id:FromCity

AdvanceXpath
    Open Browser    https://ngendigital.com/practice    Chrome
    Maximize Browser Window
    Select Frame    id=iframe-03
    Sleep    2
    Click Element    xpath://input[@value='checkbox']'[1]
    Sleep    2

CSSSelector
    Open Browser    https://ngendigital.com/practice    Chrome
    Maximize Browser Window
    Select Frame    id=iframe-03
    Sleep    2
    Input Text
    Click Element    css:fieldset>select :last-child
    Sleep    2

WebElemnts
    Open Browser    https://affiliate.flipkart.com/login    Chrome
    Maximize Browser Window
    Sleep    1
    Input Text    xpath://input[@id='inputEmail']    nsdeepu123@gmail.com
    Sleep    1
    Input Text    xpath://input[@id='inputPassword']    nsdeepu123@gmail.com
    Sleep    1
    Click Element    xapth://*[@id="submitLogin"]
    Sleep    1
    [Teardown]    Close Browser

CheckboxTestcase
    Open Browser    https://ngendigital.com/practice    Chrome
    Maximize Browser Window
    Select Frame    id=iframe-05
    Sleep    2
    Page Should Contain Checkbox    xapth://input[@value='bmw']    Checkbox    Info

LisTest
    [Timeout]    7 seconds    # list
    Open Browser    https://ngendigital.com/practice    Chrome
    Maximize Browser Window
    Select Frame    id=iframe-05
    Sleep    2
    Page Should Contain List    css:#FromCity    nothing    Debug
    Sleep    1
    @{city}    Get List Items    css:#FromCity
    :FOR    ${cities}    IN    @{city}
    \    Log    ${cities}\n
    Sleep    1

Fligh-Application
    Open Browser    https://ngendigital.com/demo-application    Chrome
    Sleep    1
    Maximize Browser Window
    Select Frame    id=iframe-05
    LoginToFlightApplication    demo@gmail.com    demo@gmail.com
    Sleep    2
    ${result}    Get Text    xpath://*[@id="InvalidLogin"]/p/label/font
    Log    ${result}
    Close Browser
