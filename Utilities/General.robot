*** Settings ***
Library    AppiumLibrary    timeout=20     run_on_failure=Capture Page Screenshot
Library    ./utility.py
Resource    ../Config/ConfigProperties.robot
*** Variables ***

*** Keywords ***
Start Appium Server
    ${os}   is_platform_windows
    log to console  ${os}
    IF  '${os}' == 'windows'
        Stop Appium Server
        execute command  start cmd /C appium --base-path /wd/hub --relaxed-security --log-timestamp
    END

Stop Appium Server
    ${os}   is_platform_windows
    IF  '${os}' == 'windows'
        execute command  taskkill /F /IM node.exe /T
    END

Click
    [Arguments]    ${ele}
    wait until page contains element    ${ele}  timeout=${pageloadtimeout}
    click element    ${ele}

Verify Element Text
    [Arguments]    ${ele}   ${val}
    element text should be    ${ele}    ${val}

Verify Element Visibility
    [Arguments]    ${ele}
    wait until page contains element     ${ele}  timeout=${pageloadtimeout}

Verify Element is Selected
    [Arguments]    ${ele}
    Verify Element Visibility   ${ele}
    element attribute should match    ${ele}    selected    true

Verify Element is Not Selected
    [Arguments]    ${ele}
    Verify Element Visibility   ${ele}
    element attribute should match    ${ele}    selected    false

Enter Text
    [Arguments]    ${ele}   ${val}
    Verify Element Visibility    ${ele}
    input text    ${ele}    ${val}

Tap Back Button
    execute command    adb -s ${deviceName} shell input keyevent 4

