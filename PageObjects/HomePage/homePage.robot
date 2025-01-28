*** Settings ***
Documentation            Home page keywords related
Variables                homePageLocator.yaml
Library    ../../.venv/Lib/site-packages/AppiumLibrary/__init__.py

*** Keywords ***
Verify Home Screen Appears
    Wait Until Element Is Visible        locator=${app_icon}

Click Login Icon
    Click Element        locator=${login_btn}

Click Search Icon
    Wait Until Element Is Visible        locator=${book_btn}
    Click Element        locator=${book_btn}