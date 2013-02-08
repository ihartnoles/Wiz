
<cfcomponent displayname="facultyGateway" output="false">
	<cffunction name="init" access="public" output="false" returntype="facultyGateway">
		<cfargument name="dsn" type="string" required="true" />
		<cfset variables.dsn = arguments.dsn />
		<cfreturn this />
	</cffunction>
	
	<cffunction name="getByAttributesQuery" access="public" output="false" returntype="query">
		<cfargument name="id" type="numeric" required="false" />
		<cfargument name="znumber" type="string" required="false" />
		<cfargument name="email" type="string" required="false" />
		<cfargument name="first_name" type="string" required="false" />
		<cfargument name="middle_name" type="string" required="false" />
		<cfargument name="last_name" type="string" required="false" />
		<cfargument name="title_id" type="numeric" required="false" />
		<cfargument name="department_id" type="numeric" required="false" />
		<cfargument name="rank_id" type="numeric" required="false" />
		<cfargument name="employmentstatus_id" type="numeric" required="false" />
		<cfargument name="tenurestatus_id" type="numeric" required="false" />
		<cfargument name="qualification_id" type="numeric" required="false" />
		<cfargument name="cv_onfile" type="string" required="false" />
		<cfargument name="created_at" type="date" required="false" />
		<cfargument name="updated_at" type="date" required="false" />
		<cfargument name="orderby" type="string" required="false" />
		
		<cfset var qList = "" />		
		<cfquery name="qList" datasource="#variables.dsn#">
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
			WHERE	0=0
		
		<cfif structKeyExists(arguments,"id") and len(arguments.id)>
			AND	id = <cfqueryparam value="#arguments.id#" CFSQLType="cf_sql_integer" />
		</cfif>
		<cfif structKeyExists(arguments,"znumber") and len(arguments.znumber)>
			AND	znumber = <cfqueryparam value="#arguments.znumber#" CFSQLType="cf_sql_varchar" />
		</cfif>
		<cfif structKeyExists(arguments,"email") and len(arguments.email)>
			AND	email = <cfqueryparam value="#arguments.email#" CFSQLType="cf_sql_varchar" />
		</cfif>
		<cfif structKeyExists(arguments,"first_name") and len(arguments.first_name)>
			AND	first_name = <cfqueryparam value="#arguments.first_name#" CFSQLType="cf_sql_varchar" />
		</cfif>
		<cfif structKeyExists(arguments,"middle_name") and len(arguments.middle_name)>
			AND	middle_name = <cfqueryparam value="#arguments.middle_name#" CFSQLType="cf_sql_varchar" />
		</cfif>
		<cfif structKeyExists(arguments,"last_name") and len(arguments.last_name)>
			AND	last_name = <cfqueryparam value="#arguments.last_name#" CFSQLType="cf_sql_varchar" />
		</cfif>
		<cfif structKeyExists(arguments,"title_id") and len(arguments.title_id)>
			AND	title_id = <cfqueryparam value="#arguments.title_id#" CFSQLType="cf_sql_integer" />
		</cfif>
		<cfif structKeyExists(arguments,"department_id") and len(arguments.department_id)>
			AND	department_id = <cfqueryparam value="#arguments.department_id#" CFSQLType="cf_sql_integer" />
		</cfif>
		<cfif structKeyExists(arguments,"rank_id") and len(arguments.rank_id)>
			AND	rank_id = <cfqueryparam value="#arguments.rank_id#" CFSQLType="cf_sql_integer" />
		</cfif>
		<cfif structKeyExists(arguments,"employmentstatus_id") and len(arguments.employmentstatus_id)>
			AND	employmentstatus_id = <cfqueryparam value="#arguments.employmentstatus_id#" CFSQLType="cf_sql_integer" />
		</cfif>
		<cfif structKeyExists(arguments,"tenurestatus_id") and len(arguments.tenurestatus_id)>
			AND	tenurestatus_id = <cfqueryparam value="#arguments.tenurestatus_id#" CFSQLType="cf_sql_integer" />
		</cfif>
		<cfif structKeyExists(arguments,"qualification_id") and len(arguments.qualification_id)>
			AND	qualification_id = <cfqueryparam value="#arguments.qualification_id#" CFSQLType="cf_sql_integer" />
		</cfif>
		<cfif structKeyExists(arguments,"cv_onfile") and len(arguments.cv_onfile)>
			AND	cv_onfile = <cfqueryparam value="#arguments.cv_onfile#" CFSQLType="cf_sql_varchar" />
		</cfif>
		<cfif structKeyExists(arguments,"created_at") and len(arguments.created_at)>
			AND	created_at = <cfqueryparam value="#arguments.created_at#" CFSQLType="cf_sql_timestamp" />
		</cfif>
		<cfif structKeyExists(arguments,"updated_at") and len(arguments.updated_at)>
			AND	updated_at = <cfqueryparam value="#arguments.updated_at#" CFSQLType="cf_sql_timestamp" />
		</cfif>
		<cfif structKeyExists(arguments, "orderby") and len(arguments.orderBy)>
			ORDER BY #arguments.orderby#
		</cfif>
		</cfquery>
		
		<cfreturn qList />
	</cffunction>

	<cffunction name="getFacultyDetailsQuery" access="public" output="false" returntype="query">
		<cfargument name="id" type="numeric" required="false" />
		<cfargument name="znumber" type="string" required="false" />
		<cfargument name="email" type="string" required="false" />
		<cfargument name="first_name" type="string" required="false" />
		<cfargument name="middle_name" type="string" required="false" />
		<cfargument name="last_name" type="string" required="false" />
		<cfargument name="title_id" type="numeric" required="false" />
		<cfargument name="department_id" type="numeric" required="false" />
		<cfargument name="rank_id" type="numeric" required="false" />
		<cfargument name="employmentstatus_id" type="numeric" required="false" />
		<cfargument name="tenurestatus_id" type="numeric" required="false" />
		<cfargument name="qualification_id" type="numeric" required="false" />
		<cfargument name="cv_onfile" type="string" required="false" />
		<cfargument name="created_at" type="date" required="false" />
		<cfargument name="updated_at" type="date" required="false" />
		<cfargument name="orderby" type="string" required="false" />
		
		<cfset var qList = "" />		
		<cfquery name="qList" datasource="#variables.dsn#">
			SELECT
				f.id,
				f.znumber,
				f.email,
				f.first_name,
				f.middle_name,
				f.last_name,
				concat(f.first_name,' ',IFNULL(f.middle_name,''),' ',f.last_name) as fullname,
				f.title_id,
				f.department_id,
				f.rank_id,
				f.employmentstatus_id,
				f.tenurestatus_id,
				f.qualification_id,
				f.cv_onfile,
				f.created_at,
				f.updated_at,
                IFNULL(d.name,'N/A')as deptname,
                IFNULL(r.name,'N/A') as rank,
                IFNULL(es.name,'N/A') as employmentstatus,
                IFNULL(ts.name,'N/A') as tenurestatus,
                IFNULL(q.name,'N/A') as qualification
                
			FROM	faculties f
               JOIN departments d ON f.department_id = d.id
               JOIN ranks r on f.rank_id = r.id
               JOIN employmentstatuses es on f.employmentstatus_id = es.id
               JOIN tenurestatuses ts on f.tenurestatus_id = ts.id
               JOIN qualifications q on f.qualification_id = q.id
			WHERE	0=0
		
		<cfif structKeyExists(arguments,"id") and len(arguments.id)>
			AND	f.id = <cfqueryparam value="#arguments.id#" CFSQLType="cf_sql_integer" />
		</cfif>
		<cfif structKeyExists(arguments,"znumber") and len(arguments.znumber)>
			AND	f.znumber = <cfqueryparam value="#arguments.znumber#" CFSQLType="cf_sql_varchar" />
		</cfif>
		<cfif structKeyExists(arguments,"email") and len(arguments.email)>
			AND	f.email = <cfqueryparam value="#arguments.email#" CFSQLType="cf_sql_varchar" />
		</cfif>
		<cfif structKeyExists(arguments,"first_name") and len(arguments.first_name)>
			AND	f.first_name = <cfqueryparam value="#arguments.first_name#" CFSQLType="cf_sql_varchar" />
		</cfif>
		<cfif structKeyExists(arguments,"middle_name") and len(arguments.middle_name)>
			AND	f.middle_name = <cfqueryparam value="#arguments.middle_name#" CFSQLType="cf_sql_varchar" />
		</cfif>
		<cfif structKeyExists(arguments,"last_name") and len(arguments.last_name)>
			AND	f.last_name = <cfqueryparam value="#arguments.last_name#" CFSQLType="cf_sql_varchar" />
		</cfif>
		<cfif structKeyExists(arguments,"title_id") and len(arguments.title_id)>
			AND	f.title_id = <cfqueryparam value="#arguments.title_id#" CFSQLType="cf_sql_integer" />
		</cfif>
		<cfif structKeyExists(arguments,"department_id") and len(arguments.department_id)>
			AND	f.department_id = <cfqueryparam value="#arguments.department_id#" CFSQLType="cf_sql_integer" />
		</cfif>
		<cfif structKeyExists(arguments,"rank_id") and len(arguments.rank_id)>
			AND	f.rank_id = <cfqueryparam value="#arguments.rank_id#" CFSQLType="cf_sql_integer" />
		</cfif>
		<cfif structKeyExists(arguments,"employmentstatus_id") and len(arguments.employmentstatus_id)>
			AND	f.employmentstatus_id = <cfqueryparam value="#arguments.employmentstatus_id#" CFSQLType="cf_sql_integer" />
		</cfif>
		<cfif structKeyExists(arguments,"tenurestatus_id") and len(arguments.tenurestatus_id)>
			AND	f.tenurestatus_id = <cfqueryparam value="#arguments.tenurestatus_id#" CFSQLType="cf_sql_integer" />
		</cfif>
		<cfif structKeyExists(arguments,"qualification_id") and len(arguments.qualification_id)>
			AND	f.qualification_id = <cfqueryparam value="#arguments.qualification_id#" CFSQLType="cf_sql_integer" />
		</cfif>
		<cfif structKeyExists(arguments,"cv_onfile") and len(arguments.cv_onfile)>
			AND	f.cv_onfile = <cfqueryparam value="#arguments.cv_onfile#" CFSQLType="cf_sql_varchar" />
		</cfif>
		<cfif structKeyExists(arguments,"created_at") and len(arguments.created_at)>
			AND	f.created_at = <cfqueryparam value="#arguments.created_at#" CFSQLType="cf_sql_timestamp" />
		</cfif>
		<cfif structKeyExists(arguments,"updated_at") and len(arguments.updated_at)>
			AND	f.updated_at = <cfqueryparam value="#arguments.updated_at#" CFSQLType="cf_sql_timestamp" />
		</cfif>
		<cfif structKeyExists(arguments, "orderby") and len(arguments.orderBy)>
			ORDER BY #arguments.orderby#
		</cfif>
		</cfquery>
		
		<cfreturn qList />
	</cffunction>

	<cffunction name="getFacultyDetailsXLS" access="public" output="false" returntype="query">
		<cfargument name="id" type="numeric" required="false" />
		<cfargument name="znumber" type="string" required="false" />
		<cfargument name="email" type="string" required="false" />
		<cfargument name="first_name" type="string" required="false" />
		<cfargument name="middle_name" type="string" required="false" />
		<cfargument name="last_name" type="string" required="false" />
		<cfargument name="title_id" type="numeric" required="false" />
		<cfargument name="department_id" type="numeric" required="false" />
		<cfargument name="rank_id" type="numeric" required="false" />
		<cfargument name="employmentstatus_id" type="numeric" required="false" />
		<cfargument name="tenurestatus_id" type="numeric" required="false" />
		<cfargument name="qualification_id" type="numeric" required="false" />
		<cfargument name="cv_onfile" type="string" required="false" />
		<cfargument name="created_at" type="date" required="false" />
		<cfargument name="updated_at" type="date" required="false" />
		<cfargument name="orderby" type="string" required="false" />
		
		<cfset var qList = "" />		
		<cfquery name="qList" datasource="#variables.dsn#">
			SELECT
				concat(f.first_name,' ',IFNULL(f.middle_name,''),' ',f.last_name) as fullname,
				f.znumber,
				f.email,
                IFNULL(d.name,'N/A')as deptname,
                IFNULL(r.name,'N/A') as rank,
                IFNULL(es.name,'N/A') as employmentstatus,
                IFNULL(ts.name,'N/A') as tenurestatus,
                IFNULL(q.name,'N/A') as qualification
                
			FROM	faculties f
               JOIN departments d ON f.department_id = d.id
               JOIN ranks r on f.rank_id = r.id
               JOIN employmentstatuses es on f.employmentstatus_id = es.id
               JOIN tenurestatuses ts on f.tenurestatus_id = ts.id
               JOIN qualifications q on f.qualification_id = q.id
			WHERE	0=0
		
		<cfif structKeyExists(arguments,"id") and len(arguments.id)>
			AND	f.id = <cfqueryparam value="#arguments.id#" CFSQLType="cf_sql_integer" />
		</cfif>
		<cfif structKeyExists(arguments,"znumber") and len(arguments.znumber)>
			AND	f.znumber = <cfqueryparam value="#arguments.znumber#" CFSQLType="cf_sql_varchar" />
		</cfif>
		<cfif structKeyExists(arguments,"email") and len(arguments.email)>
			AND	f.email = <cfqueryparam value="#arguments.email#" CFSQLType="cf_sql_varchar" />
		</cfif>
		<cfif structKeyExists(arguments,"first_name") and len(arguments.first_name)>
			AND	f.first_name = <cfqueryparam value="#arguments.first_name#" CFSQLType="cf_sql_varchar" />
		</cfif>
		<cfif structKeyExists(arguments,"middle_name") and len(arguments.middle_name)>
			AND	f.middle_name = <cfqueryparam value="#arguments.middle_name#" CFSQLType="cf_sql_varchar" />
		</cfif>
		<cfif structKeyExists(arguments,"last_name") and len(arguments.last_name)>
			AND	f.last_name = <cfqueryparam value="#arguments.last_name#" CFSQLType="cf_sql_varchar" />
		</cfif>
		<cfif structKeyExists(arguments,"title_id") and len(arguments.title_id)>
			AND	f.title_id = <cfqueryparam value="#arguments.title_id#" CFSQLType="cf_sql_integer" />
		</cfif>
		<cfif structKeyExists(arguments,"department_id") and len(arguments.department_id)>
			AND	f.department_id = <cfqueryparam value="#arguments.department_id#" CFSQLType="cf_sql_integer" />
		</cfif>
		<cfif structKeyExists(arguments,"rank_id") and len(arguments.rank_id)>
			AND	f.rank_id = <cfqueryparam value="#arguments.rank_id#" CFSQLType="cf_sql_integer" />
		</cfif>
		<cfif structKeyExists(arguments,"employmentstatus_id") and len(arguments.employmentstatus_id)>
			AND	f.employmentstatus_id = <cfqueryparam value="#arguments.employmentstatus_id#" CFSQLType="cf_sql_integer" />
		</cfif>
		<cfif structKeyExists(arguments,"tenurestatus_id") and len(arguments.tenurestatus_id)>
			AND	f.tenurestatus_id = <cfqueryparam value="#arguments.tenurestatus_id#" CFSQLType="cf_sql_integer" />
		</cfif>
		<cfif structKeyExists(arguments,"qualification_id") and len(arguments.qualification_id)>
			AND	f.qualification_id = <cfqueryparam value="#arguments.qualification_id#" CFSQLType="cf_sql_integer" />
		</cfif>
		<cfif structKeyExists(arguments,"cv_onfile") and len(arguments.cv_onfile)>
			AND	f.cv_onfile = <cfqueryparam value="#arguments.cv_onfile#" CFSQLType="cf_sql_varchar" />
		</cfif>
		<cfif structKeyExists(arguments,"created_at") and len(arguments.created_at)>
			AND	f.created_at = <cfqueryparam value="#arguments.created_at#" CFSQLType="cf_sql_timestamp" />
		</cfif>
		<cfif structKeyExists(arguments,"updated_at") and len(arguments.updated_at)>
			AND	f.updated_at = <cfqueryparam value="#arguments.updated_at#" CFSQLType="cf_sql_timestamp" />
		</cfif>
		<cfif structKeyExists(arguments, "orderby") and len(arguments.orderBy)>
			ORDER BY #arguments.orderby#
		</cfif>
		</cfquery>
		
		<cfreturn qList />
	</cffunction>

	<cffunction name="getByAttributes" access="public" output="false" returntype="array">
		<cfargument name="id" type="numeric" required="false" />
		<cfargument name="znumber" type="string" required="false" />
		<cfargument name="email" type="string" required="false" />
		<cfargument name="first_name" type="string" required="false" />
		<cfargument name="middle_name" type="string" required="false" />
		<cfargument name="last_name" type="string" required="false" />
		<cfargument name="title_id" type="numeric" required="false" />
		<cfargument name="department_id" type="numeric" required="false" />
		<cfargument name="rank_id" type="numeric" required="false" />
		<cfargument name="employmentstatus_id" type="numeric" required="false" />
		<cfargument name="tenurestatus_id" type="numeric" required="false" />
		<cfargument name="qualification_id" type="numeric" required="false" />
		<cfargument name="cv_onfile" type="string" required="false" />
		<cfargument name="created_at" type="date" required="false" />
		<cfargument name="updated_at" type="date" required="false" />
		<cfargument name="orderby" type="string" required="false" />
		
		<cfset var qList = getByAttributesQuery(argumentCollection=arguments) />		
		<cfset var arrObjects = arrayNew(1) />
		<cfset var tmpObj = "" />
		<cfset var i = 0 />
		<cfloop from="1" to="#qList.recordCount#" index="i">
			<cfset tmpObj = createObject("component","faculty").init(argumentCollection=queryRowToStruct(qList,i)) />
			<cfset arrayAppend(arrObjects,tmpObj) />
		</cfloop>
				
		<cfreturn arrObjects />
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
