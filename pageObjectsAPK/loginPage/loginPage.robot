*** Settings ***
Documentation     Login Page Keyword Related
Resource         ../base.robot
Resource         ../homePage/homePage.robot
Variables        login_page.yaml

*** Variables ***
${VALID_EMAIL}               support@ngendigital.com
${VALID_PASSWORD}            abc123
${INVALID_EMAIL}             support@.com
${INVALID_PASSWORD}          dsa123

*** Keywords ***
Sign in menu open
     Wait Until Element Is Visible   ${username_column}  
     Wait Until Element Is Visible   ${password_column}    
     Wait Until Element Is Visible   ${button_signin}  

Input prever username
    [Arguments]   ${preverusername}
    Input Text    ${username_column}    ${preverusername}  

Input prever password
    [Arguments]   ${preverpassword}
    Input Text    ${password_column}    ${preverpassword}     

Click Butoon Login
    Click Element    ${button_signin}  

Login success
    Wait Until Element Is Visible    ${login_element_success}

Input invalid username
    [Arguments]   ${invalidusername}
    Input Text    ${username_column}    ${invalidusername}  

Input invalid password
    [Arguments]   ${invalidpassword}
    Input Text    ${password_column}    ${invalidpassword}

Show Invalid User
    Wait Until Element Is Visible    ${login_menu_invalid_user}

User Login
    [Arguments]    ${email}=${VALID_EMAIL}    ${password}=${VALID_PASSWORD}
    Click button Signin 
    #step 4: signin menu open
    Sign in menu open
    #step 5: input username
    Input prever username     ${email} 
    #step 6: input Password
    Input prever password    ${password}
    #step 7 : Clik Button login
    Click Butoon Login
    #step 8 : Login success
    Login success
    #Step end: APK CLose 
