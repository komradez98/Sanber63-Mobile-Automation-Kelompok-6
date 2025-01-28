*** Settings ***
Documentation            Login page keywords related
Variables                bookPageLocator.yaml
Library    AppiumLibrary

*** Keywords ***
Input Username
    Wait Until Element Is Visible        locator=${field_username}
    Input Text         ${field_username}       support@ngendigital.com

Input Password
    Wait Until Element Is Visible        locator=${field_password}
    Input Text        ${field_password}        abc123

Click Sign Button
    Click Element        locator=${sign_in_btn}
    
Select One Way
    Wait Until Element Is Visible        locator=${oneway_opt}
    Click Element        locator=${oneway_opt}

Select Round Trip
    Wait Until Element Is Visible        locator=${roundtrip_opt}
    Click Element        locator=${roundtrip_opt}

Select From City
    Wait Until Element Is Visible        locator=${spinnerFrom_opt}
    Click Element       locator=${spinnerFrom_opt}
    Wait Until Element Is Visible         locator=${spinnerFrom_TR}
    Element Should Be Visible        locator=${spinnerFrom_TR}  
    Click Element       locator=${spinnerFrom_TR}
                 
Select End City
    Wait Until Element Is Visible        locator=${spinnerTo_opt}
    Click Element        locator=${spinnerTo_opt}
    Wait Until Element Is Visible        locator=${spinnerTO_Prs}
    Element Should Be Visible        locator=${spinnerTo_Prs}  
    Click Element        locator=${spinnerTo_Prs}
    
Select Class
    Wait Until Element Is Visible        locator=${spinnerClass_opt}
    Click Element        locator=${spinnerClass_opt}
    Wait Until Element Is Visible        locator=${spinnerClass_Bsn}
    Element Should Be Visible        locator=${spinnerClass_Bsn}
    Click Element        locator=${spinnerClass_Bsn}

Select Start Date
    Wait Until Element Is Visible        locator=${startDate_view}
    Click Element        locator=${startDate_view}
    Wait Until Element Is Visible        locator=${TC1_+_startDate}        
    Click Element        locator=${TC1_+_startDate}
    Click Element        locator=${dateOk_btn}

Select Price
    Wait Until Element Is Visible        locator=${TC1_+_price}
    Click Element        locator=${TC1_+_price}
    Click Element        locator=${priceConfirm_btn}
    Wait Until Element Is Visible        locator=${successBook_msg}

Select Flight Option
    Wait Until Element Is Visible        locator=${option_1_btn}
    Click Element        locator=${option_1_btn}

Click Book Botton
    Wait Until Element Is Visible        locator=${booking_btn}
    Click Element        locator=${booking_btn}

 Back To Home Page
     Press Keycode             4
     Press Keycode             4
     Press Keycode             4         
    