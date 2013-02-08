
<cfcomponent displayname="facultyDAO" hint="table ID column = id">

	<cffunction name="init" access="public" output="false" returntype="facultyDAO">
		<cfargument name="dsn" type="string" required="true">
		<cfset variables.dsn = arguments.dsn>
		<cfreturn this>
	</cffunction>
	
	<cffunction name="create" access="public" output="false" returntype="boolean">
		<cfargument name="faculty" type="faculty" required="true" />

		<cfset var qCreate = "" />
		<cftry>
			<cfquery name="qCreate" datasource="#variables.dsn#">
				INSERT INTO faculties
					(
					znumber,
					email,
					first_name,
					middle_name,
					last_name,
					title_id,
					department_id,
					rank_id,
					employmentstatus_id,
					tenurestatus_id,
					qualification_id,
					cv_onfile,
					created_at,
					updated_at
					)
				VALUES
					(
					<cfqueryparam value="#arguments.faculty.getznumber()#" CFSQLType="cf_sql_varchar" null="#not len(arguments.faculty.getznumber())#" />,
					<cfqueryparam value="#arguments.faculty.getemail()#" CFSQLType="cf_sql_varchar" null="#not len(arguments.faculty.getemail())#" />,
					<cfqueryparam value="#arguments.faculty.getfirst_name()#" CFSQLType="cf_sql_varchar" null="#not len(arguments.faculty.getfirst_name())#" />,
					<cfqueryparam value="#arguments.faculty.getmiddle_name()#" CFSQLType="cf_sql_varchar" null="#not len(arguments.faculty.getmiddle_name())#" />,
					<cfqueryparam value="#arguments.faculty.getlast_name()#" CFSQLType="cf_sql_varchar" null="#not len(arguments.faculty.getlast_name())#" />,
					<cfqueryparam value="#arguments.faculty.gettitle_id()#" CFSQLType="cf_sql_integer" null="#not len(arguments.faculty.gettitle_id())#" />,
					<cfqueryparam value="#arguments.faculty.getdepartment_id()#" CFSQLType="cf_sql_integer" null="#not len(arguments.faculty.getdepartment_id())#" />,
					<cfqueryparam value="#arguments.faculty.getrank_id()#" CFSQLType="cf_sql_integer" null="#not len(arguments.faculty.getrank_id())#" />,
					<cfqueryparam value="#arguments.faculty.getemploymentstatus_id()#" CFSQLType="cf_sql_integer" null="#not len(arguments.faculty.getemploymentstatus_id())#" />,
					<cfqueryparam value="#arguments.faculty.gettenurestatus_id()#" CFSQLType="cf_sql_integer" null="#not len(arguments.faculty.gettenurestatus_id())#" />,
					<cfqueryparam value="#arguments.faculty.getqualification_id()#" CFSQLType="cf_sql_integer" null="#not len(arguments.faculty.getqualification_id())#" />,
					<cfqueryparam value="#arguments.faculty.getcv_onfile()#" CFSQLType="cf_sql_varchar" null="#not len(arguments.faculty.getcv_onfile())#" />,
					<cfqueryparam value="#arguments.faculty.getcreated_at()#" CFSQLType="cf_sql_timestamp" null="#not len(arguments.faculty.getcreated_at())#" />,
					<cfqueryparam value="#arguments.faculty.getupdated_at()#" CFSQLType="cf_sql_timestamp" null="#not len(arguments.faculty.getupdated_at())#" />
					)
			</cfquery>
			<cfcatch type="database">
				<cfreturn false />
			</cfcatch>
		</cftry>
		<cfreturn true />
	</cffunction>

	<cffunction name="read" access="public" output="false" returntype="void">
		<cfargument name="faculty" type="faculty" required="true" />

		<cfset var qRead = "" />
		<cfset var strReturn = structNew() />
		<cftry>
			<cfquery name="qRead" datasource="#variables.dsn#">
				SELECT
					id,
					znumber,
					email,
					first_name,
					middle_name,
					last_name,
					title_id,
					department_id,
					rank_id,
					employmentstatus_id,
					tenurestatus_id,
					qualification_id,
					cv_onfile,
					created_at,
					updated_at
				FROM	faculties
				WHERE	id = <cfqueryparam value="#arguments.faculty.getid()#" CFSQLType="cf_sql_integer" />
			</cfquery>
			<cfcatch type="database">
				<!--- leave the bean as is and set an empty query for the conditional logic below --->
				<cfset qRead = queryNew("id") />
			</cfcatch>
		</cftry>
		<cfif qRead.recordCount>
			<cfset strReturn = queryRowToStruct(qRead)>
			<cfset arguments.faculty.init(argumentCollection=strReturn)>
		</cfif>
	</cffunction>

	<cffunction name="update" access="public" output="false" returntype="boolean">
		<cfargument name="faculty" type="faculty" required="true" />

		<cfset var qUpdate = "" />
		<cftry>
			<cfquery name="qUpdate" datasource="#variables.dsn#">
				UPDATE	faculties
				SET
					znumber = <cfqueryparam value="#arguments.faculty.getznumber()#" CFSQLType="cf_sql_varchar" null="#not len(arguments.faculty.getznumber())#" />,
					email = <cfqueryparam value="#arguments.faculty.getemail()#" CFSQLType="cf_sql_varchar" null="#not len(arguments.faculty.getemail())#" />,
					first_name = <cfqueryparam value="#arguments.faculty.getfirst_name()#" CFSQLType="cf_sql_varchar" null="#not len(arguments.faculty.getfirst_name())#" />,
					middle_name = <cfqueryparam value="#arguments.faculty.getmiddle_name()#" CFSQLType="cf_sql_varchar" null="#not len(arguments.faculty.getmiddle_name())#" />,
					last_name = <cfqueryparam value="#arguments.faculty.getlast_name()#" CFSQLType="cf_sql_varchar" null="#not len(arguments.faculty.getlast_name())#" />,
					title_id = <cfqueryparam value="#arguments.faculty.gettitle_id()#" CFSQLType="cf_sql_integer" null="#not len(arguments.faculty.gettitle_id())#" />,
					department_id = <cfqueryparam value="#arguments.faculty.getdepartment_id()#" CFSQLType="cf_sql_integer" null="#not len(arguments.faculty.getdepartment_id())#" />,
					rank_id = <cfqueryparam value="#arguments.faculty.getrank_id()#" CFSQLType="cf_sql_integer" null="#not len(arguments.faculty.getrank_id())#" />,
					employmentstatus_id = <cfqueryparam value="#arguments.faculty.getemploymentstatus_id()#" CFSQLType="cf_sql_integer" null="#not len(arguments.faculty.getemploymentstatus_id())#" />,
					tenurestatus_id = <cfqueryparam value="#arguments.faculty.gettenurestatus_id()#" CFSQLType="cf_sql_integer" null="#not len(arguments.faculty.gettenurestatus_id())#" />,
					qualification_id = <cfqueryparam value="#arguments.faculty.getqualification_id()#" CFSQLType="cf_sql_integer" null="#not len(arguments.faculty.getqualification_id())#" />,
					cv_onfile = <cfqueryparam value="#arguments.faculty.getcv_onfile()#" CFSQLType="cf_sql_varchar" null="#not len(arguments.faculty.getcv_onfile())#" />,
					created_at = <cfqueryparam value="#arguments.faculty.getcreated_at()#" CFSQLType="cf_sql_timestamp" null="#not len(arguments.faculty.getcreated_at())#" />,
					updated_at = <cfqueryparam value="#arguments.faculty.getupdated_at()#" CFSQLType="cf_sql_timestamp" null="#not len(arguments.faculty.getupdated_at())#" />
				WHERE	id = <cfqueryparam value="#arguments.faculty.getid()#" CFSQLType="cf_sql_integer" />
			</cfquery>
			<cfcatch type="database">
				<cfreturn false />
			</cfcatch>
		</cftry>
		<cfreturn true />
	</cffunction>

	<cffunction name="delete" access="public" output="false" returntype="boolean">
		<cfargument name="faculty" type="faculty" required="true" />

		<cfset var qDelete = "">
		<cftry>
			<cfquery name="qDelete" datasource="#variables.dsn#">
				DELETE FROM	faculties 
				WHERE	id = <cfqueryparam value="#arguments.faculty.getid()#" CFSQLType="cf_sql_integer" />
			</cfquery>
			<cfcatch type="database">
				<cfreturn false />
			</cfcatch>
		</cftry>
		<cfreturn true />
	</cffunction>

	<cffunction name="exists" access="public" output="false" returntype="boolean">
		<cfargument name="faculty" type="faculty" required="true" />

		<cfset var qExists = "">
		<cfquery name="qExists" datasource="#variables.dsn#" maxrows="1">
			SELECT count(1) as idexists
			FROM	faculties
			WHERE	id = <cfqueryparam value="#arguments.faculty.getid()#" CFSQLType="cf_sql_integer" />
		</cfquery>

		<cfif qExists.idexists>
			<cfreturn true />
		<cfelse>
			<cfreturn false />
		</cfif>
	</cffunction>

	<cffunction name="save" access="public" output="false" returntype="boolean">
		<cfargument name="faculty" type="faculty" required="true" />
		
		<cfset var success = false />
		<cfif exists(arguments.faculty)>
			<cfset success = update(arguments.faculty) />
		<cfelse>
			<cfset success = create(arguments.faculty) />
		</cfif>
		
		<cfreturn success />
	</cffunction>

	<cffunction name="queryRowToStruct" access="private" output="false" returntype="struct">
		<cfargument name="qry" type="query" required="true">
		
		<cfscript>
			/**
			 * Makes a row of a query into a structure.
			 * 
			 * @param query 	 The query to work with. 
			 * @param row 	 Row number to check. Defaults to row 1. 
			 * @return Returns a structure. 
			 * @author Nathan Dintenfass (nathan@changemedia.com) 
			 * @version 1, December 11, 2001 
			 */
			//by default, do this to the first row of the query
			var row = 1;
			//a var for looping
			var ii = 1;
			//the cols to loop over
			var cols = listToArray(qry.columnList);
			//the struct to return
			var stReturn = structnew();
			//if there is a second argument, use that for the row number
			if(arrayLen(arguments) GT 1)
				row = arguments[2];
			//loop over the cols and build the struct from the query row
			for(ii = 1; ii lte arraylen(cols); ii = ii + 1){
				stReturn[cols[ii]] = qry[cols[ii]][row];
			}		
			//return the struct
			return stReturn;
		</cfscript>
	</cffunction>

</cfcomponent>
