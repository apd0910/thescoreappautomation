*** Settings ***
Resource    ../Utilities/General.robot

*** Variables ***
${tailedContentTitle}  //*[@resource-id='com.fivemobile.thescore:id/location_title']
${allowLocationButton}     //*[@resource-id='com.fivemobile.thescore:id/btn_allow']
${maybeLaterButton}  //*[@resource-id='com.fivemobile.thescore:id/btn_disallow']
*** Keywords ***
Verify Tailored Content Popup is Displayed
    Verify Element Visibility   ${tailedContentTitle}

Click Allow Location Button in Tailored Content Popup
    Click   ${allowLocationButton}

Click Don't Allow Button in Tailored Content Popup
    Click   ${maybeLaterButton}