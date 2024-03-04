*** Settings ***
Resource    ../Utilities/General.robot

*** Variables ***
${searchBarSearchPage}     //*[@resource-id='com.fivemobile.thescore:id/search_src_text']
${navigateBackImageSearchPage}  //*[@resource-id='com.fivemobile.thescore:id/toolbar']/*[@class='android.widget.ImageButton']

*** Keywords ***
Verify Search Page is Displayed
    Verify Search Bar is Displayed in Search Page

Verify Search Bar is Displayed in Search Page
    Verify Element Visibility   ${searchBarSearchPage}

Verify Navigate Back Image is Displayed in Search Page
    Verify Element Visibility   ${navigateBackImageSearchPage}

Click Navigate Back Image in Search Page
    Click   ${navigateBackImageSearchPage}

Enter Text in Search Bar in Search Page
    [Arguments]    ${txt}
    Enter Text    ${searchBarSearchPage}    ${txt}

Click Search Result in Search Page
    [Arguments]    ${txt}
    Click    //*[@text="${txt}" and @resource-id='com.fivemobile.thescore:id/txt_name']

Verify Tab Selected in Search Page
    [Arguments]    ${tab}
    Verify Element is Selected    //*[@text='${tab}']

Click Tab in Search Page
    [Arguments]    ${tab}
    Click   //*[@text='${tab}']