*** Settings ***
Documentation     User try click logout
Resource         ../base.robot
Resource         ../homePage/homePage.robot            
Variables        logout_page.yaml

*** Keywords ***
User try click logout
    Click Element    ${logout_button}