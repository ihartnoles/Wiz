
<cfcomponent name="semestersService" output="false">

	<cffunction name="init" access="public" output="false" returntype="semestersService">
		<cfargument name="semestersDAO" type="semestersDAO" required="true" />
		<cfargument name="semestersGateway" type="semestersGateway" required="true" />

		<cfset variables.semestersDAO = arguments.semestersDAO />
		<cfset variables.semestersGateway = arguments.semestersGateway />

		<cfreturn this/>
	</cffunction>

	<cffunction name="createsemesters" access="public" output="false" returntype="semesters">
		<cfargument name="id" type="numeric" required="true" />
		<cfargument name="name" type="string" required="false" />
		<cfargument name="prefix" type="string" required="false" />
		<cfargument name="created_at" type="date" required="false" />
		<cfargument name="updated_at" type="date" required="false" />
		<cfargument name="semester_status" type="numeric" required="false" />
		
			
		<cfset var semesters = createObject("component","semesters").init(argumentCollection=arguments) />
		<cfreturn semesters />
	</cffunction>

	<cffunction name="getsemesters" access="public" output="false" returntype="semesters">
		<cfargument name="id" type="numeric" required="true" />
		
		<cfset var semesters = createsemesters(argumentCollection=arguments) />
		<cfset variables.semestersDAO.read(semesters) />
		<cfreturn semesters />
	</cffunction>

	<cffunction name="getsemesterss" access="public" output="false" returntype="array">
		<cfargument name="id" type="numeric" required="false" />
		<cfargument name="name" type="string" required="false" />
		<cfargument name="prefix" type="string" required="false" />
		<cfargument name="created_at" type="date" required="false" />
		<cfargument name="updated_at" type="date" required="false" />
		<cfargument name="semester_status" type="numeric" required="false" />
		
		<cfreturn variables.semestersGateway.getByAttributes(argumentCollection=arguments) />
	</cffunction>

	<cffunction name="getSemestersQuery" access="public" output="false" returntype="query">
		<cfargument name="id" type="numeric" required="false" />
		<cfargument name="name" type="string" required="false" />
		<cfargument name="prefix" type="string" required="false" />
		<cfargument name="created_at" type="date" required="false" />
		<cfargument name="updated_at" type="date" required="false" />
		<cfargument name="semester_status" type="numeric" required="false" />
		
		<cfreturn variables.semestersGateway.getByAttributes(argumentCollection=arguments) />
	</cffunction>

	<cffunction name="savesemesters" access="public" output="false" returntype="boolean">
		<cfargument name="semesters" type="semesters" required="true" />

		<cfreturn variables.semestersDAO.save(semesters) />
	</cffunction>

	<cffunction name="deletesemesters" access="public" output="false" returntype="boolean">
		<cfargument name="id" type="numeric" required="true" />
		
		<cfset var semesters = createsemesters(argumentCollection=arguments) />
		<cfreturn variables.semestersDAO.delete(semesters) />
	</cffunction>

	<cffunction name="onMissingMethod" access="public" output="false" hint="Delegate missing methods to the gateway" >
		<cfargument name="missingMethodName" type="string" hint="Name of missing method" />
		<cfargument name="missingMethodArguments" type="any" hint="Arguments passed to the missing method, maybe a named arg set or a numerically indexed set" />
		
		<cfset var ret = "" />
		<cfinvoke component="#variables.semestersGateway#" 
				  method="#arguments.missingMethodName#" 
				  argumentcollection="#arguments.missingMethodArguments#" 
				  returnvariable="ret" />
		
		<cfreturn ret />
	</cffunction>
</cfcomponent>
