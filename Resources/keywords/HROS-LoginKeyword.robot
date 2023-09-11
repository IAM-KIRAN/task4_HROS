*** Settings ***
Library     SeleniumLibrary
Library    AppiumLibrary
Library     Collections
Resource    ../variables/HROS-LoginVariables.robot
Resource    ../xpaths/HROS-LoginXpaths.robot



*** Keywords ***

open hros
    Open Browser        ${HrosWebsiteUrl}        ${browser}
    Maximize Browser Window
    Set Browser Implicit Wait    15
    Set Selenium Speed    1
login with google
    SeleniumLibrary.Click Element   ${Terralogic_LoginButtonPath}

switch window to google login
    builtIn.Sleep    10
    ${window_handle} =    Switch Window    Sign in - Google Accounts

enter username
    SeleniumLibrary.Input Text    //input[@id="identifierId"]    ${email}

click next on google signin
    SeleniumLibrary.Click Element    ${GoogleNextButtonPath}

enter password
    SeleniumLibrary.Input Text    ${InputPasswordPath}    ${password}
   
click next again 
    builtIn.Sleep    5
    SeleniumLibrary.Click Element    ${GoogleNextButtonPath}

verify name title
    Title Should Be    Home

HROS-Login
    open hros
    login with google
    switch window to google login
    enter username
    click next on google signin
    enter password
    click next again


open hros-timesheet
    Open Browser        ${HrosTimesheetWebsiteUrl}        ${browser}
    Maximize Browser Window
    Set Browser Implicit Wait    20
    Set Selenium Speed    2




click search icon
    builtIn.Sleep    10
    SeleniumLibrary.Switch Window       Home
    SeleniumLibrary.Click Element    ${searchIconPath}

input text into search
    SeleniumLibrary.Input Text    //input[@placeholder="Search..."]    renil

    builtIn.Sleep    15

click on renil's profile
    SeleniumLibrary.Double Click Element      //div[@class="title___1BjRX"]
    builtIn.Sleep    1

get renil's reportees
    ${elements}  SeleniumLibrary.Get WebElements  ${Element XPath}

    FOR  ${element}  IN  @{elements}
        ${text}  SeleniumLibrary.Get Text  ${element}  # Replace with the appropriate attribute or method to get the desired detail
        Append To List  ${details_list}  ${text}

    END

    Log Many  @{details_list}




Click on timesheet icon from left menu
    builtIn.Sleep    5
    SeleniumLibrary.Switch Window       Home
    builtIn.Sleep    5
    SeleniumLibrary.Go To           https://terralogic.paxanimi.ai/time-sheet

    builtIn.Sleep    5
    SeleniumLibrary.Click Element        //button[@class="ant-btn ant-btn-round ant-btn-primary ant-btn-lg MyButton__primary"]
    builtIn.Sleep    5
    SeleniumLibrary.Switch Window          Timesheet
    builtIn.Sleep    7



    