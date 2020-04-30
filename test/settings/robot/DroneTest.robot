*** Settings ***
Documentation  Dronelauncher tests regarding settings for the automatic use
Resource  Resources/keywords.robot
Library  SeleniumLibrary
Library  Dialogs

Test Setup  Begin web test
Test Teardown  End web test

*** Variables ***
${BROWSER}  chrome
${URL} =  http://192.168.1.216:5000/
${IP} =  return ip
${PORT} =  5000

*** Keywords ***
Begin Web Test
    Open Browser                about:blank     ${BROWSER}
    Maximize Browser Window

End Web Test
    Close Browser

#Select Browser
#    ${BROWSER}=  Get Selection From User    Select browser:    chrome      firefox

*** Test Cases ***
Change Pitch Test1
    [Documentation]             Test the "change pitch" function with negative outcome
    [Tags]                      CPtest
    Go To                       ${URL}
    Click Element               xpath:/html/body/ul/li[4]/a
    Input Text                  xpath://*[@id="settings_launch"]/div[1]/input     -1
    Click Button                xpath://*[@id="script_change_pitch"]
    Alert Should be Present     Value should be between 0 and 90

Change Pitch Test2
    [Documentation]             Test the "change pitch" function with negative outcome
    [Tags]                      CPtest
    Go To                       ${URL}
    Click Element               xpath:/html/body/ul/li[4]/a
    Input Text                  xpath://*[@id="settings_launch"]/div[1]/input     91
    Click Button                xpath://*[@id="script_change_pitch"]
    Alert Should be Present     Value should be between 0 and 90

Change Pitch Test3
    [Documentation]             Test the "change pitch" function with no negative outcome
    [Tags]                      CPtest
    Go To                       ${URL}
    Click Element               xpath:/html/body/ul/li[4]/a
    Input Text                  xpath://*[@id="settings_launch"]/div[1]/input     45
    Click Button                xpath://*[@id="script_change_pitch"]
    Alert Should Not be Present

Change Lift Test1
    [Documentation]             Test the "change lift" function with negative outcome
    [Tags]                      CLtest
    Go To                       ${URL}
    Click Element               xpath:/html/body/ul/li[4]/a
    Input Text                  xpath://*[@id="settings_launch"]/div[2]/input   131
    Click Button                xpath://*[@id="script_change_lift"]
    Alert Should be Present     Value should be between 0 and 130

Change Lift Test2
    [Documentation]             Test the "change lift" function with negative outcome
    [Tags]                      CLtest
    Go To                       ${URL}
    Click Element               xpath:/html/body/ul/li[4]/a
    Input Text                  xpath://*[@id="settings_launch"]/div[2]/input   -1
    Click Button                xpath://*[@id="script_change_lift"]
    Alert Should be Present     Value should be between 0 and 130

Change Lift Test3
    [Documentation]             Test the "change lift" function with no negative outcome
    [Tags]                      CLtest
    Go To                       ${URL}
    Click Element               xpath:/html/body/ul/li[4]/a
    Input Text                  xpath://*[@id="settings_launch"]/div[2]/input   65
    Click Button                xpath://*[@id="script_change_lift"]
    Alert Should Not be Present

Change Rotation Test1
    [Documentation]             Test the "change rotation" function with negative outcome
    [Tags]                      CRtest
    Go To                       ${URL}
    Click Element               xpath:/html/body/ul/li[4]/a
    Input Text                  xpath://*[@id="settings_launch"]/div[3]/input   181
    Click Button                xpath://*[@id="script_change_rotation"]
    Alert Should be Present     Value should be between -180 and 180

Change Rotation Test2
    [Documentation]             Test the "change rotation" function with negative outcome
    [Tags]                      CRtest
    Go To                       ${URL}
    Click Element               xpath:/html/body/ul/li[4]/a
    Input Text                  xpath://*[@id="settings_launch"]/div[3]/input   -181
    Click Button                xpath://*[@id="script_change_rotation"]
    Alert Should be Present     Value should be between -180 and 180

Change Rotation Test3
    [Documentation]             Test the "change rotation" function with no negative outcome
    [Tags]                      CRtest
    Go To                       ${URL}
    Click Element               xpath:/html/body/ul/li[4]/a
    Input Text                  xpath://*[@id="settings_launch"]/div[3]/input   80
    Click Button                xpath://*[@id="script_change_rotation"]
    Alert Should Not be Present

Change Speed Test1
    [Documentation]             Test the "change speed" function with negative outcome
    [Tags]                      CStest
    Go To                       ${URL}
    Click Element               xpath:/html/body/ul/li[4]/a
    Input Text                  xpath://html/body/div/div[1]/div[8]/div[4]/input   -1
    Click Button                xpath://*[@id="script_change_speed"]
    Alert Should be Present     Value should be between 1 and 10

Change Speed Test2
    [Documentation]             Test the "change speed" function with negative outcome
    [Tags]                      CStest
    Go To                       ${URL}
    Click Element               xpath:/html/body/ul/li[4]/a
    Input Text                  xpath://html/body/div/div[1]/div[8]/div[4]/input   11
    Click Button                xpath://*[@id="script_change_speed"]
    Alert Should be Present     Value should be between 1 and 10

Change Speed Test3
    [Documentation]             Test the "change speed" function with no negative outcome
    [Tags]                      CStest
    Go To                       ${URL}
    Click Element               xpath:/html/body/ul/li[4]/a
    Input Text                  xpath://html/body/div/div[1]/div[8]/div[4]/input   5
    Click Button                xpath://*[@id="script_change_speed"]
    Alert Should Not be Present

Change Acceleration Test1
    [Documentation]             Test the "change acceleration" function with negative outcome
    [Tags]                      CAtest
    Go To                       ${URL}
    Click Element               xpath:/html/body/ul/li[4]/a
    Input Text                  xpath://*[@id="settings_launch"]/div[5]/input   -1
    Click Button                xpath://*[@id="script_change_acceleration"]
    Alert Should be Present     Value should be between 1 and 48

Change Acceleration Test2
    [Documentation]             Test the "change acceleration" function with negative outcome
    [Tags]                      CAtest
    Go To                       ${URL}
    Click Element               xpath:/html/body/ul/li[4]/a
    Input Text                  xpath://*[@id="settings_launch"]/div[5]/input   49
    Click Button                xpath://*[@id="script_change_acceleration"]
    Alert Should be Present     Value should be between 1 and 48

Change Acceleration Test3
    [Documentation]             Test the "change acceleration" function with no negative outcome
    [Tags]                      CAtest
    Go To                       ${URL}
    Click Element               xpath:/html/body/ul/li[4]/a
    Input Text                  xpath://*[@id="settings_launch"]/div[5]/input   24
    Click Button                xpath://*[@id="script_change_acceleration"]
    Alert Should Not be Present