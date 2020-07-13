*** Settings ***
Library         SeleniumLibrary
Library         Collections
Library         String
Library         OperatingSystem
Library         BuiltIn
Library         Collections
Library         String
Library         OperatingSystem
Library         BuiltIn
Library         DateTime
Library         Easter
Library         Process
Library         Reserved
Library         XML
Library         Telnet
Library         Screenshot
Resource        ../WebDrivers/driver.robot
#Library         DataDriver        ..\Test_Data\credentials.xlsx    sheet_name=credentials
*** Keywords ***
log
    Log To Console    gg    



