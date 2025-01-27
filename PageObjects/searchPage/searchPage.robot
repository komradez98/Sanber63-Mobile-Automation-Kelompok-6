*** Settings ***
Library         AppiumLibrary

*** Variables ***
${APPIUM_SERVER}    http://localhost:4723/wd/hub
${PLATFORM_NAME}    Android
${PLATFORM_VERSION} 7.0
${DEVICE_NAME}      emulator-5554
${APP_PATH}         PATH_TO_YOUR.APK

${SEARCH_FIELD_ID}  //android.widget.Button[@resource-id="com.example.myapplication:id/search_flight"]
${SEARCH_BUTTON_ID} //android.widget.Button[@resource-id="com.example.myapplication:id/searchFlight"]
${RESULT_CLASS_NAME} android.widget.TextView
${SEARCH_QUERY}     Dummy Data
4{EXPECTED_RESULT}  Expected Dummy Result 

*** Test Case ***
Test Search Feature
    [Documentation]     Test the search functionality of the mobile app.
    Open Application    ${http://localhost:4723/wd/hub} platformName=${Android}
    Wait Until Page Contains Element    id=${com.example.myapplication:id/search_flight}
    Input Text id=${com.example.myapplication:id/search_flight}  ${SEARCH_QUERY}
    Click Element   id=${com.example.myapplication:id/searchFlight}
    Sleep 3s
    ${results}=     Get Webelements     class=${RESULT_CLASS_NAME}
    Should Be True  ${len(results)} > 0 No search result were found
    Should Contains ${results}[0].Text  ${EXPECTED_RESULT}  Expected result not found in search results.
    [Teardown]      Close Application