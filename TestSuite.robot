*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${var1}           4    # This is my First Scaler variable
${var2}           4    # This is my second variable
@{USER}           Deepu    Abhi
&{Credentials}    username=deepika    password=deepika











@{city}


*** Test Cases ***
TC01
    Should Be Equal    ${var1}    ${var2}

TC02
    Should Not Be Equal As Strings    @ {USER} [0]    @ {USER} [1]

TC03
    [Tags]    Login
    Should Be Equal As Strings    & {Credentials} [username]    & {Credentials} [password]

TC04
    Should be True    4    4

AssignIDToElement
    Set Selenium Speed    0.5
    Open Browser    https://ngendigital.com/practice    Chrome
    Select Frame    id=iframe-05
    Assign Id To Element    xpath:/html/body/fieldset[7]/table/tbody/tr[4]/td[3]    pm
    ${output}    Get Text    pm
    Log    ${output}
    Capture Page Screenshot
