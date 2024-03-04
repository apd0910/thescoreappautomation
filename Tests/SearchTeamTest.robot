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

Suite Setup  Start Appium Server
Test Setup    Login to TheScore App
Test Teardown    Close TheScore App
Suite Teardown   Stop Appium Server

*** Test Cases ***
Test
    Click Search Bar in Home Page
    Verify Search Page is Displayed
    Enter Text in Search Bar in Search Page    Toronto Raptors
    Click Search Result in Search Page    Toronto Raptors
    Verify Team Page is Displayed   Toronto Raptors
    Verify Tab Selected in Team Page    NEWS
    Click Tab in Team Page    TEAM STATS
    Verify Tab Selected in Team Page    TEAM STATS
    Click Navigate Back Image in Team Page
    Verify Search Page is Displayed
    Verify Tab Selected in Search Page    ALL