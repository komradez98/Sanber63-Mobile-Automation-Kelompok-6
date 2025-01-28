*** Settings ***
Resource         ../pageObjectsAPK/base.robot
Resource         ../pageObjectsAPK/homePage/homePage.robot
Resource         ../pageObjectsAPK/loginPage/loginPage.robot
Resource         ../pageObjectsAPK/checkBookFlight/checkBookFlight.robot
Resource         ../pageObjectsAPK/chekinFlight/chekcinFlight.robot
Resource         ../pageObjectsAPK/bookFlight/bookFlight.robot
Test Setup       Run Keywords         
...              Open Flight Application
...              AND    Verify Home Page Appears     
Test Teardown    Close Application

#*** Variables ***
#${VALID_EMAIL}               support@ngendigital.com
#${VALID_PASSWORD}            abc123
#${INVALID_EMAIL}             support@.com
#${INVALID_PASSWORD}          dsa123

#*** Keywords ***


*** Test Cases ***
User open the Apk and valid login 
    #Step 1: Open the apk
    #Step 2: Verivy Home Page Appears
    #Step 3: APK Open
    Click button Signin 
    #step 4: signin menu open
    Sign in menu open
    #step 5: input username
    Input prever username     ${VALID_EMAIL}  
    #step 6: input Password
    Input prever password    ${VALID_PASSWORD}
    #step 7 : Clik Button login
    Click Butoon Login
    #step 8 : Login success
    Login success
    #Step end: APK CLose  
    

User open the Apk and invalid login
    #Step 1: Open the apk
    #Step 2: Verivy Home Page Appears
    #Step 3: APK Open
    Click button Signin 
    #step 4: signin menu open
    Sign in menu open
    #step 5: input invalid username
    Input invalid username    ${INVALID_EMAIL}
    #step 6: input invalid Password
    Input invalid password    ${INVALID_PASSWORD}
    #step 7 : Clik Button login
    Click Butoon Login
    #step 8 : Login success
    Show Invalid User
    #Step end: APK CLose  

User Check Book Flight
    User Login
    #Step 1 : user Click Button Book
    Click button Signin
    #Step 2 : Verify menu Flight Book
    Verify Menu Search Flight
    #Step 3 : Input Flight Number
    Input Flight Number    ${FLIGHT_NUMMBER} 
    #Step 4 : Click Button Search
    Click Button Search Flight
    #Step 5 : Verivy Flight Number
    Verify flight number flight search input

User Chekcin Flight
    User Login
    #step 1: user click menu chekin
    User use Chekcin Menu 

User Book Flight For One Way Method
    User Login
    #Step 2 : User Click Book Button
    Click Button Book 
    #Step 3 : Very Book Page
    Verify Book Page Open
    #Step 4 : Choose Button One Way Method
    Choose Flight Method One Way
    #Step 5 : Chose From City List Dropdown
    Choose From City List
    #Step 6 : Chose  From City
    Choose From City
    #Step 7 :  Verify City From input
    Verify From City Input
    #Step 8 : Choose City List
    Choose To City List
    #Step 9 : Choose City
    Choose To City
    #Step 10 : Verivy Choose City
    Verify To City Input
    #Step 11 : Chose Class Flight
    Choose Class Flight
    #Step 12 : Choose Class
    Choose Class
    #Step 13 : Verivy Class Flight
    Verify Class Flight
    #Step  14 : Choose Start Date
    Chose Start Date
    #Step 15 : Verivy Detepicker Open
    Verify Datepicker Start Open
    #Step 16 : Choose Date of Start
    Choose Date of Start
    #Step 17 : Click Ok Date
    Click Button Ok Date Start  
    #Step 18 : Verivy Date Start Choosen
    Verify Date Start Choosen  
     #Step  19 : Choose End Date
    Chose end Date
    #Step 20 : Verivy Detepicker Open
    Verify Datepicker End Open
    #Step 21 : Choose Date of End
    Choose Date of End
    #Step 17 : Click Ok Date
    Click Button Ok Date End  
    #Step 18 : Verivy Date End Choosen
    Verify Date end Choosen  
    #Step 19 :  Click Button  Acomodation
    Click Radio Button Acomodation
    #Step 20 : Choose Duration Ticket
    Choose Duration Ticket
    #Step 21 : Click Button Book
    Click Button Book has Choosen
    #Step 22 : Verifiy Book Price
    Verify Book Price to Confirm
    #Step 23 : Choose Price
    Coose Price Booking
    #Step 24 : Click Button Confrm
    Click Button Confirm Price Booking
    #Step  25 : Book Reservation has Recorded
    Book Reservation Has Recorded


User Book Flight For Round Trip Method
    User Login
    #Step 2 : User Click Book Button
    Click Button Book 
    #Step 3 : Very Book Page
    Verify Book Page Open
    #Step 4 : Choose Button One Way Method
    Choose Flight Method Round Trip  
    #Step 5 : Chose From City List Dropdown
    Choose From City List
    #Step 6 : Chose  From City
    Choose From City
    #Step 7 :  Verify City From input
    Verify From City Input
    #Step 8 : Choose City List
    Choose To City List
    #Step 9 : Choose City
    Choose To City
    #Step 10 : Verivy Choose City
    Verify To City Input
    #Step 11 : Chose Class Flight
    Choose Class Flight
    #Step 12 : Choose Class
    Choose Class
    #Step 13 : Verivy Class Flight
    Verify Class Flight
    #Step  14 : Choose Start Date
    Chose Start Date
    #Step 15 : Verivy Detepicker Open
    Verify Datepicker Start Open
    #Step 16 : Choose Date of Start
    Choose Date of Start
    #Step 17 : Click Ok Date
    Click Button Ok Date Start  
    #Step 18 : Verivy Date Start Choosen
    Verify Date Start Choosen  
     #Step  19 : Choose End Date
    Chose end Date
    #Step 20 : Verivy Detepicker Open
    Verify Datepicker End Open
    #Step 21 : Choose Date of End
    Choose Date of End
    #Step 17 : Click Ok Date
    Click Button Ok Date End  
    #Step 18 : Verivy Date End Choosen
    Verify Date end Choosen  
    #Step 19 :  Click Button  Acomodation
    Click Radio Button Acomodation
    #Step 20 : Choose Duration Ticket
    Choose Duration Ticket
    #Step 21 : Click Button Book
    Click Button Book has Choosen
    #Step 22 : Verifiy Book Price
    Verify Book Price to Confirm
    #Step 23 : Choose Price
    Coose Price Booking
    #Step 24 : Click Button Confrm
    Click Button Confirm Price Booking
    #Step  25 : Book Reservation has Recorded
    Book Reservation Has Recorded


    


