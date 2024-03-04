*** Settings ***
Resource    ../Utilities/General.robot

*** Variables ***
${welcomeIconWelcomePage}  //*[@resource-id='com.fivemobile.thescore:id/icon_welcome']
${haveAnAccountLogInTextWelcomePage}     //*[@resource-id='com.fivemobile.thescore:id/txt_sign_in']

*** Keywords ***
Verify Welcome Page is Displayed
    Verify Welcome Icon is Displayed in Welcome Page

Verify Welcome Icon is Displayed in Welcome Page
    Verify Element Visibility    ${welcomeIconWelcomePage}

Verify HAVE AN ACCOUNT? LOG IN Text is Displayed in Welcome Page
    Verify Element Visibility   ${haveAnAccountLogInTextWelcomePage}

Click HAVE AN ACCOUNT? LOG IN text in Welcome Page
#    click element at coordinates    750     1700
    ${ele_loc}        Get Element Rect    ${haveAnAccountLogInTextWelcomePage}
    Log    ${ele_loc}
    ${x}    evaluate    ${ele_loc}[x] + ${ele_loc}[width]-15
    ${y}    evaluate    ${ele_loc}[y] + ${ele_loc}[height]-5
    Log Many        ${x}    ${y}
    click element at coordinates    ${x}     ${y}