*** Settings ***
Library     SeleniumLibrary
Library     AppiumLibrary
Resource    Resources/variables/HROS-LoginVariables.robot
Resource    Resources/keywords/HROS-LoginKeyword.robot
Resource    Resources/xpaths/HROS-LoginXpaths.robot

#HROS-PO

*** Test Cases ***
#HROS-Login
#    open hros
#    login with google
#    builtIn.Sleep    5
#    switch window to google login
#    enter username
#    click next on google signin
#    enter password
#    click next again
#    builtIn.Sleep    10


HROS-TopNavBar
    HROS-Login
    builtIn.Sleep    5
    SeleniumLibrary.Click Element    ${TryAnotherWayPath}
    builtIn.Sleep    5
    SeleniumLibrary.Click Element    ${enterBackupCodeButtonPath}
    SeleniumLibrary.Input Text    ${inputBackupcodePath}        ${backup-code}
    SeleniumLibrary.Click Element    ${GoogleNextButtonPath}
    builtIn.Sleep    20
    click search icon
    input text into search
    click on renil's profile
    get renil's reportees
    Click on timesheet icon from left menu
    builtIn.Sleep    50







