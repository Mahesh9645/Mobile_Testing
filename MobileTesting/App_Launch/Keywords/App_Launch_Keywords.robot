*** Settings ***
Library     OperatingSystem
Library     AppiumLibrary  timeout=30  run_on_failure=Capture Page Screenshot

Resource    ../../Utilities/General.robot

*** Variables ***
${Network & internet}   //*[@text='Network & internet']
${Internet}   //*[@text='Internet']
${wifi_button}    //*[@resource-id='android:id/switch_widget']
${Wi-Fi}   //*[@text='Wi-Fi']


*** Keywords ***
Click Network & internet
    Click   ${Network & internet}
    
Verify Title of Network & internet
    Verify Element Visibility    ${Network & internet}


Click Internet
    Click   ${Internet}

Verify Title of Internet
    Verify Element Visibility    ${Internet}

Verify WIFI text
     Verify Element Visibility     ${Wi-Fi}



Turn On wifi Button
    ${status}   run keyword and return status   element attribute should match  ${wifi_button}   checked  true
    IF    ${status} == True
         Log To Console    WIFI network enabled
    ELSE
         Click    ${wifi_button}
    END







