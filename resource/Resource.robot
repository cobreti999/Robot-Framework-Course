*** Settings ***
Library  AppiumLibrary

*** Variables ***
${ANDROID_AUTOMATION_NAME}    UIAutomator2
${ANDROID_APP}                /Users/lailson/Curso Robot/SampleApps/android/mda-2.0.1-22.apk
${ANDROID_PLATFORM_NAME}      Android
${appium:fullReset=true}     True

*** Keywords ***
Open App
    Open Application  http://127.0.0.1:4723  automationName=${ANDROID_AUTOMATION_NAME}
    ...  platformName=${ANDROID_PLATFORM_NAME}  app=${ANDROID_APP}

Close App
    Close Application

Wait and Click
    [Arguments]  ${ELEMENT}
    Wait Until Page Contains Element  ${ELEMENT}
    Click Element  ${ELEMENT}

Swipe up
    [Arguments]       ${ELEMENT}
    ${element_size}=    Get Element Size    ${ELEMENT}
    ${element_location}=    Get Element Location    ${ELEMENT}
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.7)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    #${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.3)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 4.0)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  500
    Sleep  1

Swipe down
    [Arguments]       ${ELEMENT}
    ${element_size}=    Get Element Size    ${ELEMENT}
    ${element_location}=    Get Element Location    ${ELEMENT}
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.3)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 4.0)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  500
    Sleep  1