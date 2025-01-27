*** Settings ***
Documentation     Check Book Flight Related
Resource         ../base.robot
Resource         ../homePage/homePage.robot            
Variables        check_Book_flight.yaml


*** Variables ***
${FLIGHT_NUMMBER}    DA935

*** Keywords ***
Click Button Search
    Click Element   ${click_button_search} 

Verify Menu Search Flight
    Wait Until Element Is Visible    ${verivy_menu_Search_flight} 

Input Flight Number
    [Arguments]   ${flight_number}
    Input Text    ${input_flight_number}     ${flight_number}

Click Button Search Flight
    Click Element    ${click_butoon_search_flight} 

Verify flight number flight search input
    Wait Until Element Is Visible    ${verify_Flight_number_search_input} 
