*** Settings ***
Library         SeleniumLibrary
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
Library         ExcelLibrary
#Library         DataDriver        ../Test_Data/credentials.xlsx    sheet_name=credentials
#Resource        ../keywords/staticKeywords.robot
Resource        ../WebDrivers/driver.robot

Test Setup      Launch URL 
Test Teardown     Close Current Browser
   
*** Test Cases ***
HMS Test 01: Test demo 
    [Documentation]    Get current time
    [Tags]    smoke
    ${date}    Get Current Date    
    Log To Console    ${date}    
    