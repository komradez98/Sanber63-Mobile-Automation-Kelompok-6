*** Settings ***
Library      AppiumLibrary
Resource    ../PageObjects/loginPage/loginPage.robot
Resource    ../PageObjects/searchPage/searchPage.robot
Resource    ../PageObjects/bookFlight/bookFlight.robot
Resource    ../PageObjects/checkBookFlight/checkBookFlight.robot
Resource    ../PageObjects/searchPage/searchPage.robot


*** Test Cases ***

<<<<<<< HEAD
Buka Aplikasi Flight
    Open Application    remote_url=http://127.0.0.1:4723/wd/hub 
    ...    platformName=Android
    ...    platformVersion=7.0
    ...    deviceName=emulator-5554
    ...    appPackage=com.example.myapplication
    ...    appActivity=com.example.myapplication.MainActivity

=======
Search Flight
    Buka Aplikasi Flight
    Click Sign In Button
    Masukkan Username
    Masukkan Password
    Click Sign In Button On Login Screen
    Click Search
    Masukkan Number Flight
    Click Search On Search Screen
>>>>>>> e761b18f30b126b1729bb9c6bc6203be04d1d850
