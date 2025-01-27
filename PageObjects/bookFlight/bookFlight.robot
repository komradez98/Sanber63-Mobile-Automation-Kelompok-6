***Settings***
Documentation     Check Book Flight Related
Resource         ../base.robot
Resource         ../homePage/homePage.robot            
Variables        book_flight.yaml


*** Keywords ***
Click Button Book   
       Click Element   ${click_button_book} 
Verify Book Page Open
       Wait Until Element Is Visible    ${verify_book_page_open1} 
       Wait Until Element Is Visible    ${verify_book_page_open2}

Choose Flight Method
       Click Element    ${choose_flight_method} 

Choose From City List 
       Click Element    ${choose_from_city_list} 
Choose From City
       Wait Until Element Is Visible    ${choose_from_city_wait} 
       Click Element    ${choose_from_city} 

Verify From City Input
       Wait Until Element Is Visible    ${verify_from_city_input}

Choose To City List
       Click Element    ${choose_to_city_list} 

Choose To City
       Wait Until Element Is Visible    ${choose_to_city_wait} 
       Click Element   ${choose_to_city} 

Verify To City Input
       Wait Until Element Is Visible    ${verify_to_city_input} 

Choose Class Flight
       Click Element    ${choose_class_flight} 

Choose Class
       Wait Until Element Is Visible    ${choose_class_wait} 
       Click Element    ${choose_class} 

Verify Class Flight
       Wait Until Element Is Visible    ${verify_class_flight} 

Chose Start Date
      Click Element    ${chose_start_date} 

Verify Datepicker Start Open
      Wait Until Element Is Visible       ${verify_datepicker_start_open} 
      
Choose Date of Start
      Click Element    ${choose_date_of_start} 

Click Button Ok Date Start
      Click Element    ${click_button_ok_date_start}

Verify Date Start Choosen
      Wait Until Element Is Visible       ${verify_date_start_choosen}

Chose End Date
      Click Element    ${chose_end_date} 

Verify Datepicker End Open
      Wait Until Element Is Visible    ${verify_datepicker_end_open}       
      
Choose Date of End
      Click Element    ${choose_date_of_end} 

Click Button Ok Date End
      Click Element    ${click_button_ok_date_end}

Verify Date End Choosen
      Wait Until Element Is Visible     ${verify_date_end_choosen}      

Click Radio Button Acomodation
       Click Element    ${click_radio_button_comodation}

Choose Duration Ticket
       Click Element     ${choose_duration_ticket} 

Click Button Book has Choosen   
       Click Element    ${click_button_book_has_choosen} 

Verify Book Price to Confirm
       Wait Until Element Is Visible    ${verify_book_price_to_confirm} 

Coose Price Booking
       Click Element    ${coose_price_booking} 

Click Button Confirm Price Booking
       Click Element    ${click_button_confirm_price_booking} 

Book Reservation Has Recorded
       Wait Until Element Is Visible    ${book_reservation_has_recorded} 
