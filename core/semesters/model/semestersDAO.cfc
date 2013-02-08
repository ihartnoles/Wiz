
<cfcomponent displayname="semestersDAO" hint="table ID column = id">

	<cffunction name="init" access="public" output="false" returntype="semestersDAO">
		<cfargument name="dsn" type="string" required="true">
		<cfset variables.dsn = arguments.dsn>
		<cfreturn this>
	</cffunction>
	
	<cffunction name="create" access="public" output="false" returntype="boolean">
		<cfargument name="semesters" type="semesters" required="true" />

		<cfset var qCreate = "" />
		<cftry>
			<cfquery name="qCreate" datasource="#variables.dsn#">
				INSERT INTO semesters
					(
					name,
					prefix,
					created_at,
					updated_at,
					semester_status
					)
				VALUES
					(
					<cfqueryparam value="#arguments.semesters.getname()#" CFSQLType="cf_sql_varchar" null="#not len(arguments.semesters.getname())#" />,
					<cfqueryparam value="#arguments.semesters.getprefix()#" CFSQLType="cf_sql_varchar" null="#not len(arguments.semesters.getprefix())#" />,
					<cfqueryparam value="#arguments.semesters.getcreated_at()#" CFSQLType="cf_sql_timestamp" null="#not len(arguments.semesters.getcreated_at())#" />,
					<cfqueryparam value="#arguments.semesters.getupdated_at()#" CFSQLType="cf_sql_timestamp" null="#not len(arguments.semesters.getupdated_at())#" />,
					<cfqueryparam value="#arguments.semesters.getsemester_status()#" CFSQLType="cf_sql_integer" />
					)
			</cfquery>
			<cfcatch type="database">
				<cfreturn false />
			</cfcatch>
		</cftry>
		<cfreturn true />
	</cffunction>

	<cffunction name="read" access="public" output="false" returntype="void">
		<cfargument name="semesters" type="semesters" required="true" />

		<cfset var qRead = "" />
		<cfset var strReturn = structNew() />
		<cftry>
			<cfquery name="qRead" datasource="#variables.dsn#">
				SELECT
					id,
					name,
					prefix,
					created_at,
					updated_at,
					semester_status
				FROM	semesters
				WHERE	id = <cfqueryparam value="#arguments.semesters.getid()#" CFSQLType="cf_sql_integer" />
			</cfquery>
			<cfcatch type="database">
				<!--- leave the bean as is and set an empty query for the conditional logic below --->
				<cfset qRead = queryNew("id") />
			</cfcatch>
		</cftry>
		<cfif qRead.recordCount>
			<cfset strReturn = queryRowToStruct(qRead)>
			<cfset arguments.semesters.init(argumentCollection=strReturn)>
		</cfif>
	</cffunction>

	<cffunction name="update" access="public" output="false" returntype="boolean">
		<cfargument name="semesters" type="semesters" required="true" />

		<cfset var qUpdate = "" />
		<cftry>
			<cfquery name="qUpdate" datasource="#variables.dsn#">
				UPDATE	semesters
				SET
					name = <cfqueryparam value="#arguments.semesters.getname()#" CFSQLType="cf_sql_varchar" null="#not len(arguments.semesters.getname())#" />,
					prefix = <cfqueryparam value="#arguments.semesters.getprefix()#" CFSQLType="cf_sql_varchar" null="#not len(arguments.semesters.getprefix())#" />,
					created_at = <cfqueryparam value="#arguments.semesters.getcreated_at()#" CFSQLType="cf_sql_timestamp" null="#not len(arguments.semesters.getcreated_at())#" />,
					updated_at = <cfqueryparam value="#arguments.semesters.getupdated_at()#" CFSQLType="cf_sql_timestamp" null="#not len(arguments.semesters.getupdated_at())#" />,
					semester_status = <cfqueryparam value="#arguments.semesters.getsemester_status()#" CFSQLType="cf_sql_integer" />
				WHERE	id = <cfqueryparam value="#arguments.semesters.getid()#" CFSQLType="cf_sql_integer" />
			</cfquery>
			<cfcatch type="database">
				<cfreturn false />
			</cfcatch>
		</cftry>
		<cfreturn true />
	</cffunction>

	<cffunction name="delete" access="public" output="false" returntype="boolean">
		<cfargument name="semesters" type="semesters" required="true" />

		<cfset var qDelete = "">
		<cftry>
			<cfquery name="qDelete" datasource="#variables.dsn#">
				DELETE FROM	semesters 
				WHERE	id = <cfqueryparam value="#arguments.semesters.getid()#" CFSQLType="cf_sql_integer" />
			</cfquery>
			<cfcatch type="database">
				<cfreturn false />
			</cfcatch>
		</cftry>
		<cfreturn true />
	</cffunction>

	<cffunction name="exists" access="public" output="false" returntype="boolean">
		<cfargument name="semesters" type="semesters" required="true" />

		<cfset var qExists = "">
		<cfquery name="qExists" datasource="#variables.dsn#" maxrows="1">
			SELECT count(1) as idexists
			FROM	semesters
			WHERE	id = <cfqueryparam value="#arguments.semesters.getid()#" CFSQLType="cf_sql_integer" />
		</cfquery>

		<cfif qExists.idexists>
			<cfreturn true />
		<cfelse>
			<cfreturn false />
		</cfif>
	</cffunction>

	<cffunction name="save" access="public" output="false" returntype="boolean">
		<cfargument name="semesters" type="semesters" required="true" />
		
		<cfset var success = false />
		<cfif exists(arguments.semesters)>
			<cfset success = update(arguments.semesters) />
		<cfelse>
			<cfset success = create(arguments.semesters) />
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
