*** Settings ***
Resource    ../Utilities/General.robot

*** Variables ***
${theScoreBetImage}     //*[@resource-id='com.fivemobile.thescore:id/sportsbook_logo']
${dismissImage}     //*[@resource-id='com.fivemobile.thescore:id/dismiss_modal']

*** Keywords ***
Verify The Score Bet App Download Now Popup & Dismiss if Displayed
    ${status}   run keyword and return status    wait until page contains element    ${theScoreBetImage}    timeout=5
    IF    ${status}
        Click   ${dismissImage}
    ELSE
        log   The Score Bet App Download Now Popup is Not Displayed
    END