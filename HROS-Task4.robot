*** Settings ***
Library         SeleniumLibrary
Resource        Resources/variables/HROS-LoginVariables.robot
Resource        Resources/xpaths/HROS-LoginXpaths.robot
Resource        Resources/keywords/HROS-LoginKeyword.robot

*** Test Cases ***

HROS-LOGIN
    HROS-Login
    builtIn.Sleep    5
    SeleniumLibrary.Click Element    ${TryAnotherWayPath}
    builtIn.Sleep    5
    SeleniumLibrary.Click Element    ${enterBackupCodeButtonPath}
    SeleniumLibrary.Input Text    ${inputBackupcodePath}        ${backup-code}
    SeleniumLibrary.Click Element    ${GoogleNextButtonPath}
    builtIn.Sleep    20
    Click on timesheet icon from left menu
