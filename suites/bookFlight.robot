*** Settings ***
Library    AppiumLibrary
Resource    ../PageObjects/base.robot
Resource    ../PageObjects/HomePage/homePage.robot
Resource    ../PageObjects/BookPage/bookPage.robot
Resource    ../PageObjects/loginPage/loginPage.robot

*** Variables ***
${REMOTE_URL}                                 http://localhost:4723/wd/hub                                 
${PLATFORM_NAME}                              Android
${PLATFORM_VERSION}                           9.0
${DEVICE_NAME}                                emulator-5554
${APP_PACKAGE}                                com.example.myapplication
${APP_ACTIVITY}                               com.example.myapplication.MainActivity

*** Keywords ***


*** Test Cases ***
User Can Login to Application
    Open Flight Application
    Click Butoon Login
    Input Username
    Input Password
    
    Click Sign Button
User can book one way flight
    Click Book Icon
    Select One Way
    Select From City
    Select Class
    Select Start Date
    Select Flight Option
    Click Book Botton
    Select Price
    Back To Home Page
User can book round trip flight
    Click Book Icon
    Select Round Trip
    Select From City
    Select End City
    Select Class
    Select Start Date
    Select Flight Option
    Click Book Botton
    Select Price
