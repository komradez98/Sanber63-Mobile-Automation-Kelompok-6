*** Settings ***
Library      AppiumLibrary
Resource    ../PageObjects/loginPage/loginPage.robot
Resource    ../PageObjects/searchPage/searchPage.robot
Resource    ../PageObjects/bookFlight/bookFlight.robot
Resource    ../PageObjects/checkBookFlight/checkBookFlight.robot
Resource    ../PageObjects/searchPage/searchPage.robot


*** Test Cases ***

Search Flight
    Buka Aplikasi Flight
    Click Sign In Button
    Masukkan Username
    Masukkan Password
    Click Sign In Button On Login Screen
    Click Search
    Masukkan Number Flight
    Click Search On Search Screen
    





