<cfscript>	
	
	qFacultyDetailsXLS	 = request.event.getArg('qFacultyDetailsXLS');
	s = spreadsheetNew();
	spreadsheetAddRow(s, "Name,Zumber,Email,Department,Rank,Employment Status,Tenure Status,Qualification");
	spreadsheetFormatRow(s,   {
                bold=true,
                fgcolor="lemon_chiffon",
                fontsize=14
            }, 1);

	//writeDump(var='#qFacultyDetailsXLS#', abort="true");
	spreadsheetAddRows(s,qFacultyDetailsXLS);
</cfscript>
 
 <cfheader name="content-disposition" value="attachment; filename=#qFacultyDetailsXLS.znumber#.xls">
 <cfcontent type="application/msexcel" variable="#spreadsheetReadBinary(s)#" reset="true">