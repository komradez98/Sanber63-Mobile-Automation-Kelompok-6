*** Settings ***
Documentation            Home page keywords related
Variables                homePageLocator.yaml

*** Keywords ***
Verify Home Screen Appears
    Wait Until Element Is Visible        locator=${app_icon}

Click Login Icon
    Click Element        locator=${login_btn}

Click Book Icon
    Wait Until Element Is Visible        locator=${book_btn}
    Click Element        locator=${book_btn}