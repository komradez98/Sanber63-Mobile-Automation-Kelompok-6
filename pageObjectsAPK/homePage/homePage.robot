*** Settings ***
Documentation     Home Page Keyword Related
Resource         ../base.robot
Variables        home_Page.yaml

*** Keywords ***
Verify Home Page Appears
    Wait Until Element Is Visible    ${verfy_home_page}

Click button Signin 
    Click Element  ${buttton_signin} 
