*** Settings ***
Library      AppiumLibrary
Resource    ../PageObjects/loginPage/loginPage.robot
Resource    ../PageObjects/searchPage/searchPage.robot
Resource    ../PageObjects/bookFlight/bookFlight.robot
Resource    ../PageObjects/checkBookFlight/checkBookFlight.robot
Resource    ../PageObjects/searchPage/searchPage.robot


*** Test Cases ***

Open Flight Application
    Open Application    remote_url=http://127.0.0.1:4723/wd/hub 
    ...    platformName=Android
    ...    platformVersion=7.0
    ...    deviceName=emulator-5554
    ...    appPackage=com.example.myapplication
    ...    appActivity=com.example.myapplication.MainActivity

Click Sign In Button
    Wait Until Element Is Visible    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/login"]
    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/login"]

Input Username
    Wait Until Element Is Visible    locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/username"]
    Input Text    locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/username"]        text=support@ngendigital.com

Input Password
    Wait Until Element Is Visible    locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/password"]
    Input Text    locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/password"]    text=abc123

Click Sign In Button On Login Screen
    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/signIn"]

Click Search
    Wait Until Element Is Visible      locator=//android.widget.Button[@resource-id="com.example.myapplication:id/search_flight"]
    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/search_flight"]

Input Flight Number
    Wait Until Element Is Visible    locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/flight_number"]
    Input Text    locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/flight_number"]    text=DA935

Click Search On Search Screen
    Wait Until Element Is Visible    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/searchFlight"]
    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/searchFlight"]