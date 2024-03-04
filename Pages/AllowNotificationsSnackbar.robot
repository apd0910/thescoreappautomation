*** Settings ***
Resource    ../Utilities/General.robot

*** Variables ***
${allowNotificationText}  //*[@resource-id='com.android.permissioncontroller:id/permission_message']
${allowButton}     //*[@resource-id='com.android.permissioncontroller:id/permission_allow_button']
${dontAllowButton}  //*[@resource-id='com.android.permissioncontroller:id/permission_deny_button']
*** Keywords ***
Verify Allow theScore to send you notifications? Snackbar is Displayed
    Verify Element Visibility   ${allowNotificationText}

Click Allow Button
    Click   ${allowButton}

Click Don't Allow Button
    Click   ${dontAllowButton}