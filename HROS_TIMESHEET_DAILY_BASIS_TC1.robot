*** Settings ***
Library   SeleniumLibrary
#Resource   ..\\..\\Resources\\Keywords\\UI_keywords_Login.robot
Resource   Resources/xpaths/Time_sheet_PO.robot
Resource    Resources/keywords/HROS-LoginKeyword.robot

Resource   Resources/variables/Login_Variables.robot
Resource   Resources/Keywords/UI_commonkeywords.robot

Resource   Resources/keywords/UI_leftmenu_keywords.robot
Resource   Resources/xpaths/LeftMenu_PO.robot
*** Test Cases ***
HROS-Login
    open hros
    login with google
    switch window to google login
    enter username
    click next on google signin
    enter password
    click next again
    builtIn.Sleep    5
    SeleniumLibrary.Click Element    ${TryAnotherWayPath}
    builtIn.Sleep    5
    SeleniumLibrary.Click Element    ${enterBackupCodeButtonPath}
    SeleniumLibrary.Input Text    ${inputBackupcodePath}        ${backup-code}
    SeleniumLibrary.Click Element    ${GoogleNextButtonPath}
    builtIn.Sleep    20

HR_OS_TIMESHEET_ICON
    builtIn.Sleep    5
    SeleniumLibrary.Switch Window       Home
    builtIn.Sleep    5
    Click on the timesheet icon
HR_OS_TIMESHEET_DAILY_FILL
    FOR    ${I}    IN RANGE    4    9
        click on the add task button
        Enter the start and end date   2023-09-0${I}      2023-09-0${I}
        Enter the start and end time    9:00 AM      6:00 PM
        Select the Project    Rampup_Software Services
        Enter the task name    Automationtesting${I}
        Enter description of the task     Am testing the time sheet${I}
        SUBMIT
    END

HR_OS_TIMESHEET_EDIT_DAILY_FILL
    FOR    ${i}    IN RANGE    4    9
        click the date
        Clear the textt
        #MM/DD/YYYY
        Enter the date    09/0${i}/2023
        click the eddit icon
        Enter description of the task     edited the time sheet
        SUBMIT
    END

HR_OS_TIMESHEET_DELETE_DAILY_FILL
    FOR    ${i}    IN RANGE    4    9
        click the date
        Clear the textt
        #MM/DD/YYYY
        Enter the date    09/0${i}/2023
        Click the delete icon
    END

HR_OS_TIMESHEET_WEEKLY_FILL
    Click on the Weekly timesheets
    click on the add task button
    Enter the week start and end date   2023-09-11      2023-09-15
    Enter the start and end time    9:00 AM      6:00 PM
    Select the Project    Rampup_Software Services
    Enter the task name    Automationtesting1
    Enter description of the task     Am testing WEEKLY the time sheet
    SUBMIT
HR_OS_TIMESHEET_EDIT_WEEKLY_FILL
    Click on the Weekly timesheets
    #click arrow
    editsweek
HR_OS_TIMESHEET_DELETE_WEEKLY_FILL
    Click on the Weekly timesheets
    #click arrow
    deleteweek





