*** Settings ***
Resource    ../Utilities/General.robot

*** Variables ***
${whileUsingTheAppButton}     //*[@resource-id='com.android.permissioncontroller:id/permission_allow_foreground_only_button']
${onlyThisTimeButton}  //*[@resource-id='com.android.permissioncontroller:id/permission_allow_one_time_button']
${dontAllowButtonAllowAccessToDeviceLocationSnackbar}   //*[@resource-id='com.android.permissioncontroller:id/permission_deny_button']
*** Keywords ***
Verify Allow theScore to Access this Device's Location? Snackbar is Displayed
    wait until page contains    Allow theScore to access this device’s location?

Click While Using the App Button in Allow theScore to Access this Device's Location? Snackbar
    Click   ${whileUsingTheAppButton}

Click Only This Time Button in Allow theScore to Access this Device's Location? Snackbar
    Click   ${onlyThisTimeButton}

Click Don't Allow Button in Allow theScore to Access this Device's Location? Snackbar
    Click   ${dontAllowButtonAllowAccessToDeviceLocationSnackbar}