# Steps to Setup Test Environemnt
    1. Install Python >= 3.10.0
    2. Install Pycharm
    3. Open the project in Pycharm (File --> Open --> thescorerobot
    4. Install Hyper RobotFramework Support Plugin (File --> Settings --> Plugin --> Search Plugin --> Install Plugin)
    5. Setup Python Intrepreter for the project
        File  --> Settings --> Project --> Create new virtual environment
    5. Install Python libraries
        - Open Terminal
        - Navigate to thescorerobot\Requirements folder
        - Run command --> pip install -r requirements.txt
    6. Install Appium Command Line Version
        - If you running this tests in other operation systems other than windows, trying to update the command to
          start/stop appium by updating the Start Appium Server / Stop Appium Sever in Utilities --> General.robot file.

# Step to Run the Test
    - Precondition
        1. Run only for actual devices not on emualtors
        2. Enable Developer options --> Enable USB debugging on the device
        3. TheScore app should be installed --> Find apk under thescorerobot/APK/ folder
        4. User has already registered and has login credentials
        5. Update the neccessary details in ConfigProperties.robot file under thescorerobot/Config/ folder(if required)
            - deviceName
            - emailid
            - password
            - remoteURL --> Appium server & port
        6. Run Appium Server 
            - If you are using command line to run appium, the test will start the appium server itself. 
              so ignore starting appium
            - If you are using any other means of starting appium, comment out the below lines in SearchTeamDataDrivenTest.robot
                Test Setup     Start Appium Server
                Test Teardown   Stop Appium Server
    
    - Run the test <WINDOWS>
        1. Open Terminal
        2. Navigate to thescorerobot\TestRunner folder
        3. Run ExecuteRunner.bat file with <unique identifier for the execution> as argument
        4. Find the results in the thescorerobot/Results folder with folder created with <unique identifier for the execution>

    - Run the test <OTHER OS>
        1. Open Terminal
        2. Navigate to thescorerobot\Tests folder
        3. Run command - robot -d ../Results/<execution_name> -i data_driven_tests ../Tests/SearchTeamDataDrivenTest.robot
        4. Find the results in the thescorerobot/Results folder with folder created with <execution_name>
