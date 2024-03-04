*** Settings ***
Resource    ../Utilities/General.robot
Resource    ../Keywords/TheScoreKeywords.robot
Resource    ../Pages/LoginPage.robot
Resource    ../Pages/WelcomePage.robot
Resource    ../Pages/AllowNotificationsSnackbar.robot
Resource    ../Pages/TailoredContentPopup.robot
Resource    ../Pages/AllowAccessToDeviceLocationSnackbar.robot
Resource    ../Pages/DownloadTheScoreBetPopup.robot
Resource    ../Pages/HomePage.robot
Resource    ../Pages/SearchPage.robot
Resource    ../Pages/TeamPage.robot
Library    DataDriver   ../Data/test.csv

Test Setup     Start Appium Server
Test Teardown   Stop Appium Server
Test Template    Search Team

*** Test Cases ***
Search Team functionality Test    ${team}
    [Tags]    data_driven_tests

*** Keywords ***
Search Team
    [Arguments]    ${team}
    Login to TheScore App
    Click Search Bar in Home Page
    Verify Search Page is Displayed
    Enter Text in Search Bar in Search Page    ${team}
    Click Search Result in Search Page    ${team}
    Verify Team Page is Displayed   ${team}
    Verify Tab Selected in Team Page    NEWS
    Click Tab in Team Page    TEAM STATS
    Verify Tab Selected in Team Page    TEAM STATS
    Click Navigate Back Image in Team Page
    Verify Search Page is Displayed
    Verify Tab Selected in Search Page    ALL
    Close TheScore App