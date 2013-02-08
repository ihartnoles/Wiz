
<cfcomponent name="departmentsService" output="false">

	<cffunction name="init" access="public" output="false" returntype="departmentsService">
		<cfargument name="departmentsDAO" type="departmentsDAO" required="true" />
		<cfargument name="departmentsGateway" type="departmentsGateway" required="true" />

		<cfset variables.departmentsDAO = arguments.departmentsDAO />
		<cfset variables.departmentsGateway = arguments.departmentsGateway />

		<cfreturn this/>
	</cffunction>

	<cffunction name="createdepartments" access="public" output="false" returntype="departments">
		<cfargument name="id" type="numeric" required="true" />
		<cfargument name="name" type="string" required="false" />
		<cfargument name="description" type="string" required="false" />
		<cfargument name="school_id" type="numeric" required="false" />
		<cfargument name="created_at" type="date" required="false" />
		<cfargument name="updated_at" type="date" required="false" />
		
			
		<cfset var departments = createObject("component","departments").init(argumentCollection=arguments) />
		<cfreturn departments />
	</cffunction>

	<cffunction name="getdepartments" access="public" output="false" returntype="departments">
		<cfargument name="id" type="numeric" required="true" />
		
		<cfset var departments = createdepartments(argumentCollection=arguments) />
		<cfset variables.departmentsDAO.read(departments) />
		<cfreturn departments />
	</cffunction>

	<cffunction name="getdepartmentss" access="public" output="false" returntype="array">
		<cfargument name="id" type="numeric" required="false" />
		<cfargument name="name" type="string" required="false" />
		<cfargument name="description" type="string" required="false" />
		<cfargument name="school_id" type="numeric" required="false" />
		<cfargument name="created_at" type="date" required="false" />
		<cfargument name="updated_at" type="date" required="false" />
		
		<cfreturn variables.departmentsGateway.getByAttributes(argumentCollection=arguments) />
	</cffunction>

	<cffunction name="savedepartments" access="public" output="false" returntype="boolean">
		<cfargument name="departments" type="departments" required="true" />

		<cfreturn variables.departmentsDAO.save(departments) />
	</cffunction>

	<cffunction name="deletedepartments" access="public" output="false" returntype="boolean">
		<cfargument name="id" type="numeric" required="true" />
		
		<cfset var departments = createdepartments(argumentCollection=arguments) />
		<cfreturn variables.departmentsDAO.delete(departments) />
	</cffunction>

	<cffunction name="onMissingMethod" access="public" output="false" >
		<cfargument name="missingMethodName" type="string" hint="Name of missing method" />
		<cfargument name="missingMethodArguments" type="any" hint="Arguments passed to the missing method, maybe a named arg set or a numerically indexed set" />

		<cfset var ret = ""/>
		<cfinvoke component="#variables.departmentsGateway#" 
				  method="#arguments.missingMethodName#" 
				  argumentcollection="#arguments.missingMethodArguments#" 
				  returnvariable="ret"/>
		<cfreturn ret />
	</cffunction>
</cfcomponent>
