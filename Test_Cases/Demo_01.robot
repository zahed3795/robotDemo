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
HMS Test 00: Test demo
   [Documentation]    <----Demo test---->
   [Tags]     foundbug     smoke
    Log To Console    hello world 
    
HMS Test 02: Test demo
   [Documentation]    <----Demo fail test---->
   [Tags]     foundbug     smoke  
   Log To Console    wellcome  
         

       
#C:\Users\zahed\OneDrive\Documents\robot\robotDemo\advanced_execution\jenkins_run.bat