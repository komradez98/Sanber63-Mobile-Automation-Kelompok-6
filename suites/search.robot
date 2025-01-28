*** Settings ***
Library      AppiumLibrary
Resource    ../PageObjects/loginPage/loginPage.robot
Resource    ../PageObjects/searchPage/searchPage.robot
Resource    ../PageObjects/bookFlight/bookFlight.robot
Resource    ../PageObjects/checkBookFlight/checkBookFlight.robot


*** Test Cases ***

Buka Flight Aplikasi
    Open Application    remote_url=http://127.0.0.1:4723/wd/hub 
    ...    platformName=Android
    ...    platformVersion=7.0
    ...    deviceName=emulator-5554
    ...    appPackage=com.example.myapplication
    ...    appActivity=com.example.myapplication.MainActivity


Search Flight
    Buka Flight Aplikasi
    Click Sign In Button
    Buat Username
    Buat Password
    Click Sign In Button On Login Screen
    Click Search
    Buat Number Flight
    Click Search On Search Screen

