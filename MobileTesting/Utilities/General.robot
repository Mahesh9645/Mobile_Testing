*** Settings ***
Library     AppiumLibrary    timeout=60    run_on_failure=Capture Page Screenshot
Library     OperatingSystem
Library    Process
Library    ../Utilities/CustomLibrary.py
Resource    ../Config/Config.robot



*** Keywords ***
Launch Settings app
    Open Application    ${remote_URL}    platformName=${platform_Name}    deviceName=${device_Name}    appPackage=${settings_App_Package}    appActivity=${settings_App_Activity}    automationName=${automation_Name}  adbExecTimeout=360000   newCommandTimeout=360000    uiautomator2ServerLaunchTimeout=360000  launchTimeout=360000    uiautomator2ServerInstallTimeout=360000


Start Appium Server
     Execute Command  start cmd /C appium --base-path /wd/hub --relaxed-security --log-timestamp

Click
    [Arguments]  ${element}
    click element  ${element}

Verify Element Visibility
    [Arguments]  ${element}
    wait until page contains element  ${element}   10s



