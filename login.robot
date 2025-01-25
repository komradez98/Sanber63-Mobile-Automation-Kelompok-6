*** Settings ***
Library    AppiumLibrary

*** Variables ***
${REMOTE_URL}                                 http://localhost:4723/wd/hub                                 
${PLATFORM_NAME}                              Android
${PLATFORM_VERSION}                           9.0
${DEVICE_NAME}                                emulator-5554
${APP_PACKAGE}                                com.example.myapplication
${APP_ACTIVITY}                               com.example.myapplication.MainActivity

*** Keywords ***
Open Flight Application
    Open Application            remote_url=${REMOTE_URL}
    ...                         platformName=${PLATFORM_NAME}
    ...                         platformVersion=${PLATFORM_VERSION}
    ...                         deviceName=${DEVICE_NAME}
    ...                         appPackage=${APP_PACKAGE}
    ...                         appActivity=${APP_ACTIVITY}

Close Flight Application
    Close Application

*** Test Cases ***
User should be able to login with valid data
    Open Flight Application
    Close Flight Application
    