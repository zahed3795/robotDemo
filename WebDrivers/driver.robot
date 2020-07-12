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
Library         ExcelLibrary
#Library         DataDriver        ..\Test_Data\credentials.xlsx    sheet_name=credentials

*** Variables ***
                       
${excel_location}                    ${EXECDIR}\\Test_Data\\credentials.xls
*** Keywords ***
  
Launch URL
    [Documentation]     This Key word launch URL in Chrome browser
    Set Selenium Speed	    0.5 seconds
    Open Excel     ${excel_location}        
    ${browser}               Read Cell Data By Coordinates    credentials    1    3  
    ${URL}                   Read Cell Data By Coordinates    credentials    1    4 
    ${Expected_Title}        Read Cell Data By Coordinates    credentials    1    5 
    Open Browser         ${URL}    ${browser}
    Maximize Browser Window
    Set Browser Implicit Wait           15
    ${Title}    Get Title
    Convert To String    ${Title}
    Should Be Equal    ${Title}    	${Expected_Title}
    
Close Current Browser
    [Documentation]    Only close current browser
    Close Browser
    
Close All Browser
    [Documentation]    This keyword close all the testing tab
    Close All Browser
