*** Settings ***
Resource    ../Utilities/General.robot

*** Variables ***
${teamNameTextTeamPage}     //*[@resource-id='com.fivemobile.thescore:id/team_name']
${navigateBackImageTeamPage}  //*[@resource-id='com.fivemobile.thescore:id/toolbar']/*[@class='android.widget.ImageButton']

*** Keywords ***
Verify Team Page is Displayed
    [Arguments]    ${name}
    Verify Element Text    ${teamNameTextTeamPage}  ${name}

Verify Navigate Back Image is Displayed in Team Page
    Verify Element Visibility   ${navigateBackImageTeamPage}

Click Navigate Back Image in Team Page
    Click   ${navigateBackImageTeamPage}

Verify Tab Selected in Team Page
    [Arguments]    ${tab}
    Verify Element is Selected    //*[@text='${tab}']

Click Tab in Team Page
    [Arguments]    ${tab}
    Click   //*[@text='${tab}']