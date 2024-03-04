*** Settings ***
Resource    ../Utilities/General.robot

*** Variables ***
${loginTextLoginPage}  //*[@resource-id='com.fivemobile.thescore:id/titleTextView']
${emailTextboxLoginPage}  //*[@resource-id='com.fivemobile.thescore:id/email_input_edittext']
${passwordTextboxLoginPage}  //*[@resource-id='com.fivemobile.thescore:id/password_input_edittext']
${loginButtonLoginPage}  //*[@resource-id='com.fivemobile.thescore:id/login_button']

*** Keywords ***
Verify Log In Page is Displayed
    element should contain text    ${loginTextLoginPage}    Log In

Verify Email Textbox is Displayed in Log In Page
    Verify Element Visibility    ${emailTextboxLoginPage}

Enter Email Id in Email Textbox in Log In Page
    [Arguments]    ${email}
    Enter Text    ${emailTextboxLoginPage}    ${email}

Verify Password Textbox is Displayed in Log In Page
    Verify Element Visibility    ${passwordTextboxLoginPage}

Enter Password in Email Textbox in Log In Page
    [Arguments]    ${pwd}
    Enter Text    ${passwordTextboxLoginPage}   ${pwd}

Verify Log In Button is Displayed in Log In Page
    Verify Element Visibility    ${loginButtonLoginPage}

Click Log In Button in Log In Page
    Click   ${loginButtonLoginPage}


