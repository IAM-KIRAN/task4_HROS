*** Variables ***
${Path_Timesheet_Addtask}   //div[contains(text(),"Add Task")]
${Path_Timesheet_Startdate}  //input[@placeholder="Start date"]
${Path_Timesheet_Weekly}     (//span[contains(text(),"Weekly")])[2]
${Path_Timesheet_Enddate}  //input[@placeholder="End date"]
${Path_Timesheet_Sarttime}  //input[@id="basic_tasks_0_startTime"]
${Path_Timesheet_Endtime}   //input[@id="basic_tasks_0_endTime"]


${Path_Timesheet_Projectname}  //input[@id="basic_tasks_0_projectId"]
${Path_Timesheet_TASkname}    //input[@id="basic_tasks_0_taskName"]
#${Path_Timesheet_Description}  //textarea[@id="basic_tasks_0_notes"]
${Path_Timesheet_Description}  //textarea[contains(@id, "basic_tasks_0_notes") or contains(@placeholder, "Enter the description")]
${Path_Timesheet_Submitbutton}   //button[@type="submit"]


${Path_Timesheet_Selectdate}   //input[@placeholder="Select date"]
${Path_Timesheet_EDITicon}   (//img[contains(@src,"/static/ic_edit.8cd75d9f.svg")] )
${Path_Timesheet_DELETEicon}  (//img[contains(@src,"/static/ic_delete.10ddaf87.svg")] )

${Path_Timesheet_Weeklydel_hover}  //div[contains(@class,"ant-col ant-col-18 taskName___3snNn")]
${Path_Timesheet_weeklydelpress}  //div[contains(@class,"actionBtn___2Orw3")] //img[2]
${Path_Timesheet_weeklyeditpress}  //div[contains(@class,"actionBtn___2Orw3")] //img[1]
${Path_Timesheet_weeklydelok}   //div[contains(text(),"Ok")]
${Path_Timesheet_weeklydel}  (//span[@class="hourValue___vv8Tf"])[2]