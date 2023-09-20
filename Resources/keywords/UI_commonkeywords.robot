*** Settings ***
Library         SeleniumLibrary
Resource        ../xpaths/LeftMenu_PO.robot
Resource        ../xpaths/Time_sheet_PO.robot
Resource        ../variables/Login_Variables.robot

*** Keywords ***
LOGINHROS
    Open Browser  ${url}     ${browser}
    Maximize Browser Window
    Sleep    3
    Click Element    ${Path_login_elmt}
    Sleep    4
    Switch Window    New
    Maximize Browser Window
    Input Text    ${Path_email_elmnt}    ${email}
    Click Element    ${Path_next_elemnt}
    Sleep    4
    Input Text    ${Path_psd_elmnt}   ${pwd}
    Click Element    ${Path_next_elemnt}
    Sleep    40
    Switch Window    MAIN