*** Settings ***
Documentation     Check Chekin Flight
Resource         ../base.robot
Resource         ../homePage/homePage.robot            
Variables        chekin_flight.yaml

*** Keywords ***
User use Chekcin Menu
    Click Element    ${chekin_menu}

