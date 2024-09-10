*** Settings ***
Library     OperatingSystem
Library     AppiumLibrary  timeout=30  run_on_failure=Capture Page Screenshot

Resource    ../../Utilities/General.robot
Resource    ../Keywords/App_Launch_Keywords.robot

*** Test Cases ***
Turn On wifi In mobile
    Start Appium Server
    Sleep    5s
    Launch Settings app
    Click Network & internet
    Verify Title of Network & internet
    Click Internet
    Verify WIFI text
    Turn On wifi Button
