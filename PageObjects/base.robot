*** Settings ***
Documentation            Base page keywords related

*** Keywords ***
Open Flight Application
    Open Flight Application     remote_url=${REMOTE_URL}
    ...                         platformName=${PLATFORM_NAME}
    ...                         platformVersion=${PLATFORM_VERSION}
    ...                         deviceName=${DEVICE_NAME}
    ...                         appPackage=${APP_PACKAGE}
    ...                         appActivity=${APP_ACTIVITY}

Close Flight Application
    Close Flight Application
