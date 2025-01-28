*** Settings ***
Library      AppiumLibrary
Resource    ../PageObjects/loginPage/loginPage.robot
Resource    ../PageObjects/searchPage/searchPage.robot
Resource    ../PageObjects/bookFlight/bookFlight.robot
Resource    ../PageObjects/checkBookFlight/checkBookFlight.robot
Resource    ../PageObjects/searchPage/searchPage.robot


*** Test Cases ***

Search Flight
    Buka Aplikasi Mobile Flight
    Click Sign In Button
    Ketikkan Username
    Ketikkan Password
    Click Sign In Button On Login Screen
    Click Search
    Ketikkan Number Flight
    Click Search On Search Screen