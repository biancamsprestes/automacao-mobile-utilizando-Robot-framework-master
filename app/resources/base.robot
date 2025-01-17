***Settings***
Library         AppiumLibrary
Resource        helper.robot


***Keywords***
Open Session
    Set Appium Timeout      5
    Open Application        http://localhost:4723/wd/hub
    ...                     automationName=UiAutomator2
    ...                     platformName=Android
    ...                     deviceName=Emulator
    ...                     app=${EXECDIR}/../sunflower.apk
    

Close Session
    Capture Page Screenshot
    Close Application

