*** Settings ***
Library         SeleniumLibrary
Resource        ../../Resources/xpaths/LeftMenu_PO.robot
Resource        ../../Resources/xpaths/Time_sheet_PO.robot
*** Keywords ***
click on the social
    SeleniumLibrary.Click Element    ${Path_LeftMenu_HOME_SOCAIL}
    builtIn.Sleep    5
Click on the directory icon
    SeleniumLibrary.Click Element    ${Path_LeftMenu_Directory}
    builtIn.Sleep    3
Fetch the emp details 
    [Arguments]  ${EMPID}
    SeleniumLibrary.Click Element   ${Path_LeftMenu_Directory_Search}
    SeleniumLibrary.Input Text   ${Path_LeftMenu_Directory_Search}  ${EMPID}
    builtIn.Sleep    6
    SeleniumLibrary.Press Keys   None   ENTER
    builtIn.Sleep    10
Click on the timesheet icon
    SeleniumLibrary.Click Element    ${Path_LeftMenu_Timesheet}
    builtIn.Sleep    5
click on the add task button
    SeleniumLibrary.Click Element    ${Path_Timesheet_Addtask}
    builtIn.Sleep    3
Click on the Weekly timesheets
    SeleniumLibrary.Mouse Over    //div[@class="tabNameTooltip___z-w-c"]
    SeleniumLibrary.Click Element     ${Path_Timesheet_Weekly}
    builtIn.Sleep    3
Enter the start and end date
    Set Selenium Implicit Wait    8
    [Arguments]   ${Start}   ${End}
    SeleniumLibrary.Click Element    ${Path_Timesheet_Startdate}
    SeleniumLibrary.Input Text    ${Path_Timesheet_Startdate}    ${Start}
    builtIn.Sleep    2
    SeleniumLibrary.Click Element     ${Path_Timesheet_Enddate}
    SeleniumLibrary.Input Text    ${Path_Timesheet_Enddate}    ${End}
    SeleniumLibrary.Press Keys   None     ENTER
    builtIn.Sleep    4
Enter the start and end time 
    Set Selenium Implicit Wait    8
    [Arguments]   ${start_time}     ${end_time}
    #Click Element    ${Path_Timesheet_Sarttime}
    SeleniumLibrary.Input Text    ${Path_Timesheet_Sarttime}    ${start_time}
    SeleniumLibrary.Press Keys   None     ENTER
    builtIn.Sleep    3
    #Click Element    ${Path_Timesheet_Endtime}
    SeleniumLibrary.Input Text    ${Path_Timesheet_Endtime}     ${end_time}
    SeleniumLibrary.Press Keys  None   ENTER
    builtIn.Sleep    5
Select the Project
    Set Selenium Implicit Wait    8
    [Arguments]   ${Pojectname}
    #Click Element    ${Path_Timesheet_Projectname}
    SeleniumLibrary.Input Text   ${Path_Timesheet_Projectname}     ${Pojectname}
    SeleniumLibrary.Press Keys  None    ENTER
    builtIn.Sleep    2
Enter the task name
    Set Selenium Implicit Wait    8
    [Arguments]  ${taskname}
    SeleniumLibrary.Input Text    ${Path_Timesheet_TASkname}    ${taskname}
    builtIn.Sleep    3
Enter description of the task
    Set Selenium Implicit Wait    8
    [Arguments]  ${Description}
    SeleniumLibrary.Input Text    ${Path_Timesheet_Description}    ${Description}
    builtIn.Sleep    4
SUBMIT
    Set Selenium Implicit Wait    8
    SeleniumLibrary.Click Element    ${Path_Timesheet_Submitbutton}
    builtIn.Sleep    8
click the date
    Set Selenium Implicit Wait    8
    #Click Element    ${Path_Timesheet_Selectdate}
    Sleep    3
Clear the textt 
    Set Selenium Implicit Wait    8
    SeleniumLibrary.Click Element    ${Path_Timesheet_Selectdate}
    SeleniumLibrary.Press Keys  ${Path_Timesheet_Selectdate}   CTRL+a
    builtIn.Sleep    2
    SeleniumLibrary.Press Keys  None   BACKSPACE
    builtIn.Sleep    5
Enter the date
    [Arguments]  ${date}
    Set Selenium Implicit Wait    8
    SeleniumLibrary.Input Text    ${Path_Timesheet_Selectdate}   ${date}
    builtIn.Sleep    2
    SeleniumLibrary.Press Keys   None     ENTER
    builtIn.Sleep    2
click the eddit icon
    Set Selenium Implicit Wait    8
    SeleniumLibrary.Click Element    ${Path_Timesheet_EDITicon}
    builtIn.Sleep    2

Click the delete icon
    Set Selenium Implicit Wait    8
    SeleniumLibrary.Click Element    ${Path_Timesheet_DELETEicon}
    builtIn.Sleep    3
    SeleniumLibrary.Click Element    ${Path_Timesheet_Submitbutton}
    builtIn.Sleep    3
    
click on the week
    Set Selenium Implicit Wait    8
    builtIn.Sleep    3
    SeleniumLibrary.Mouse Over    ${Path_Timesheet_Weeklydel_hover}
    builtIn.Sleep    3
click on the deleteiconweek
    Set Selenium Implicit Wait    8
    SeleniumLibrary.Click Element    ${Path_Timesheet_weeklydelpress}[${i}]
    builtIn.Sleep    3
    SeleniumLibrary.Click Element    ${Path_Timesheet_weeklydelok}
    builtIn.Sleep    5
click on the editiconweek
    Set Selenium Implicit Wait    8
    SeleniumLibrary.Click Element    ${Path_Timesheet_weeklyeditpress}[${i}]
    builtIn.Sleep    3
click arrow
    SeleniumLibrary.Click Element    //img[@src="/static/ic_arrow_right_gray.aaf9b4aa.svg"]
Enter the week start and end date
    Set Selenium Implicit Wait    8
    [Arguments]   ${Start}   ${End}
    SeleniumLibrary.Click Element    (//input[@placeholder="Start date"])[2]
    SeleniumLibrary.Input Text   (//input[@placeholder="Start date"])[2]    ${Start}
    builtIn.Sleep    2
    SeleniumLibrary.Click Element     (//input[@placeholder="End date"])[2]
    SeleniumLibrary.Input Text    (//input[@placeholder="End date"])[2]    ${End}
    SeleniumLibrary.Press Keys   None     ENTER
    builtIn.Sleep    4
editsweek
    FOR    ${i}    IN RANGE    1    6
        Set Selenium Implicit Wait    8
        Sleep    3
        SeleniumLibrary.Click Element    (//span[@class="hourValue___vv8Tf"])[${i}]
        SeleniumLibrary.Mouse Over    (//div[@class="ant-row ant-row-middle tableRow___2BpeN"])[${i}]
        SeleniumLibrary.Click Element    (${Path_Timesheet_weeklyeditpress})[${i}]
        Enter description of the task      edited the time sheet weekly
        SUBMIT
    END
deleteweek
   FOR    ${i}    IN RANGE    1    6
        Set Selenium Implicit Wait    8
        SeleniumLibrary.Click Element    (//span[@class="hourValue___vv8Tf"])[${i}]
        SeleniumLibrary.Mouse Over    (//div[@class="ant-row ant-row-middle tableRow___2BpeN"])[1]
        SeleniumLibrary.Click Element    (${Path_Timesheet_weeklydelpress} )[1]
        builtin.Sleep    3
        SeleniumLibrary.Click Element    ${Path_Timesheet_weeklydelok}
        builtIn.Sleep    5
    END



    