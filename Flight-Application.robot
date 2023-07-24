*** Settings ***
Resource          CommonKeywords.txt

*** Test Cases ***
TC_01LoginTC
    LoginandNavigateURL
    changeto iframe
    ObjectsonwebPage
    [Teardown]    closebrowser
