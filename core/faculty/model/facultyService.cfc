
<cfcomponent name="facultyService" output="false">

	<cffunction name="init" access="public" output="false" returntype="facultyService">
		<cfargument name="facultyDAO" type="facultyDAO" required="true" />
		<cfargument name="facultyGateway" type="facultyGateway" required="true" />

		<cfset variables.facultyDAO = arguments.facultyDAO />
		<cfset variables.facultyGateway = arguments.facultyGateway />

		<cfreturn this/>
	</cffunction>

	<cffunction name="createfaculty" access="public" output="false" returntype="faculty">
		<cfargument name="id" type="numeric" required="true" />
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
		
			
		<cfset var faculty = createObject("component","faculty").init(argumentCollection=arguments) />
		<cfreturn faculty />
	</cffunction>

	<cffunction name="getfaculty" access="public" output="false" returntype="faculty">
		<cfargument name="id" type="numeric" required="true" />
		
		<cfset var faculty = createfaculty(argumentCollection=arguments) />
		<cfset variables.facultyDAO.read(faculty) />
		<cfreturn faculty />
	</cffunction>

	<cffunction name="getfacultys" access="public" output="false" returntype="array">
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
		
		<cfreturn variables.facultyGateway.getByAttributes(argumentCollection=arguments) />
	</cffunction>

	<cffunction name="getFacultyQuery" access="public" output="false" returntype="query">
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
		
		<cfreturn variables.facultyGateway.getByAttributesQuery(argumentCollection=arguments) />
	</cffunction>

	<cffunction name="getFacultyDetails" access="public" output="false" returntype="query">
		<cfargument name="id" type="numeric" required="true" />
		
		<cfreturn variables.facultyGateway.getFacultyDetailsQuery(argumentCollection=arguments) />
	</cffunction>


	<cffunction name="savefaculty" access="public" output="false" returntype="boolean">
		<cfargument name="faculty" type="faculty" required="true" />

		<cfreturn variables.facultyDAO.save(faculty) />
	</cffunction>

	<cffunction name="deletefaculty" access="public" output="false" returntype="boolean">
		<cfargument name="id" type="numeric" required="true" />
		
		<cfset var faculty = createfaculty(argumentCollection=arguments) />
		<cfreturn variables.facultyDAO.delete(faculty) />
	</cffunction>


	<cffunction name="onMissingMethod" access="public" output="false" hint="Delegate missing methods to the gateway" >
		<cfargument name="missingMethodName" type="string" hint="Name of missing method" />
		<cfargument name="missingMethodArguments" type="any" hint="Arguments passed to the missing method, maybe a named arg set or a numerically indexed set" />
		
		<cfset var ret = "" />
		<cfinvoke component="#variables.facultyGateway#" 
				  method="#arguments.missingMethodName#" 
				  argumentcollection="#arguments.missingMethodArguments#" 
				  returnvariable="ret" />
		
		<cfreturn ret />
	</cffunction>
</cfcomponent>
