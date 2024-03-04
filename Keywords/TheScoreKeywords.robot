*** Settings ***
Resource    ../Utilities/General.robot
Resource    ../Pages/LoginPage.robot
Resource    ../Pages/WelcomePage.robot
Resource    ../Pages/AllowNotificationsSnackbar.robot
Resource    ../Pages/TailoredContentPopup.robot
Resource    ../Pages/AllowAccessToDeviceLocationSnackbar.robot
Resource    ../Pages/DownloadTheScoreBetPopup.robot
Resource    ../Pages/HomePage.robot
Resource    ../Pages/SearchPage.robot
Resource    ../Pages/TeamPage.robot

*** Keywords ***
Open TheScore App
    open application    ${remoteURL}    platformName=${platformName}    deviceName=${deviceName}    appPackage=${appPackage}    appActivity=${appActivity}

Close TheScore App
    execute command    adb -s ${deviceName} shell am force-stop ${appPackage}

Login to TheScore App
    Open TheScore App
    Verify Welcome Page is Displayed
    Click HAVE AN ACCOUNT? LOG IN text in Welcome Page
    Verify Log In Page is Displayed
    Enter Email Id in Email Textbox in Log In Page  ${emailid}
    Enter Password in Email Textbox in Log In Page  ${password}
    Click Log In Button in Log In Page
    Verify Allow theScore to send you notifications? Snackbar is Displayed
    Click Allow Button
    Verify Tailored Content Popup is Displayed
    Click Allow Location Button in Tailored Content Popup
    Verify Allow theScore to Access this Device's Location? Snackbar is Displayed
    Click While Using the App Button in Allow theScore to Access this Device's Location? Snackbar
    Verify The Score Bet App Download Now Popup & Dismiss if Displayed
    Verify Scores Tab is Selected
    Verify Search Bar is Displayed in Home Page