*** Settings ***
Library      AppiumLibrary
Resource    ../PageObjects/loginPage/loginPage.robot
Resource    ../PageObjects/bookFlight/bookFlight.robot
Resource    ../PageObjects/checkBookFlight/checkBookFlight.robot
Resource    ../PageObjects/searchPage/SearchPage1.robot


*** Test Cases ***

Buka Flight Aplikasi
    Open Application    remote_url=http://127.0.0.1:4723/wd/hub 
    ...    platformName=Android
    ...    platformVersion=7.0
    ...    deviceName=emulator-5554
    ...    appPackage=com.example.myapplication
    ...    appActivity=com.example.myapplication.MainActivity

*** Test Cases ***

Search Flight
    Buka Aplikasi Mobile Flight
    Click Sign In Button
    Ketikkan Username
    Ketikkan Password
    Click Sign In Button On Login Screen
    Click Search
    Ketikkan Flight Number
    Click Search On Search Screen