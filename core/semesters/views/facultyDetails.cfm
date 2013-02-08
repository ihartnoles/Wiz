<cfscript>	
	
	qFacultyDetails	 = request.event.getArg('qFacultyDetails');
	
</cfscript>

<cfoutput>	
	<table>
	<cfloop query="qFacultyDetails">
		<tr>
			<td>Name:</td><td>#fullname#</td>
		</tr>
		<tr>
			<td>Znumber:</td><td>#znumber#</td>
		</tr>
		<tr>
			<td>Email:</td><td>#email#</td>
		</tr>
		<tr>
			<td>Department:</td><td>#deptname#</td>
		</tr>
		<tr>
			<td>Rank:</td><td>#rank#</td>
		</tr>
		<tr>
			<td>Employment Status:</td><td>#employmentstatus#</td>
		</tr>
		<tr>
			<td>Tenure Status:</td><td>#tenurestatus#</td>
		</tr>
		<tr>
			<td>Qualification:</td><td>#qualification#</td>
		</tr>
	</cfloop>
	</table>
</cfoutput>