*** Settings ***
Resource    ../Utilities/General.robot

*** Variables ***
${scoresTab}    //*[@resource-id='com.fivemobile.thescore:id/navigation_scores']
${searchBar}     //*[@resource-id='com.fivemobile.thescore:id/search_bar_text_view']

*** Keywords ***
Verify Scores Tab is Selected
    Verify Element is Selected  ${scoresTab}

Verify Search Bar is Displayed in Home Page
    Verify Element Visibility   ${searchBar}

Click Search Bar in Home Page
    Click   ${searchBar}