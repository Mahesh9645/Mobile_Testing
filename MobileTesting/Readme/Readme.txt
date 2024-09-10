To use ADB Command, Enable relaxed-security option in Appium
    Launch Appium ==> appium --relaxed-security


Note: Before running tests, update the ConfigProperties.robot file under Config directory based on your requirements.

Commands to run tests
# first execute all tests
    robot --output output.xml Tests

# then re-execute failing
    robot --rerunfailed output.xml --output rerun.xml Tests

# finally merge results
    rebot --merge output.xml rerun.xml


Software's Required
    Intellibot Plugin
    Install Tesseract OCR

Python 3.10
Pycharm  v2021.3.2
Andriod Studio with full environment setup
Java v8
Device---created emulator(Pixel 6 pro) in andriod studio