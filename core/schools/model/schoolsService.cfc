
<cfcomponent name="schoolsService" output="false">

	<cffunction name="init" access="public" output="false" returntype="schoolsService">
		<cfargument name="schoolsDAO" type="schoolsDAO" required="true" />
		<cfargument name="schoolsGateway" type="schoolsGateway" required="true" />

		<cfset variables.schoolsDAO = arguments.schoolsDAO />
		<cfset variables.schoolsGateway = arguments.schoolsGateway />

		<cfreturn this/>
	</cffunction>

	<cffunction name="createschools" access="public" output="false" returntype="schools">
		<cfargument name="id" type="numeric" required="true" />
		<cfargument name="name" type="string" required="false" />
		<cfargument name="description" type="string" required="false" />
		<cfargument name="created_at" type="date" required="false" />
		<cfargument name="updated_at" type="date" required="false" />
		<cfargument name="enabled" type="boolean" required="false" />
		
			
		<cfset var schools = createObject("component","schools").init(argumentCollection=arguments) />
		<cfreturn schools />
	</cffunction>

	<cffunction name="getschools" access="public" output="false" returntype="schools">
		<cfargument name="id" type="numeric" required="true" />
		
		<cfset var schools = createschools(argumentCollection=arguments) />
		<cfset variables.schoolsDAO.read(schools) />
		<cfreturn schools />
	</cffunction>

	<cffunction name="getschoolss" access="public" output="false" returntype="array">
		<cfargument name="id" type="numeric" required="false" />
		<cfargument name="name" type="string" required="false" />
		<cfargument name="description" type="string" required="false" />
		<cfargument name="created_at" type="date" required="false" />
		<cfargument name="updated_at" type="date" required="false" />
		<cfargument name="enabled" type="boolean" required="false" />
		
		<cfreturn variables.schoolsGateway.getByAttributes(argumentCollection=arguments) />
	</cffunction>

	<cffunction name="saveschools" access="public" output="false" returntype="boolean">
		<cfargument name="schools" type="schools" required="true" />

		<cfreturn variables.schoolsDAO.save(schools) />
	</cffunction>

	<cffunction name="deleteschools" access="public" output="false" returntype="boolean">
		<cfargument name="id" type="numeric" required="true" />
		
		<cfset var schools = createschools(argumentCollection=arguments) />
		<cfreturn variables.schoolsDAO.delete(schools) />
	</cffunction>

	<cffunction name="onMissingMethod" access="public" output="false" >
		<cfargument name="missingMethodName" type="string" hint="Name of missing method" />
		<cfargument name="missingMethodArguments" type="any" hint="Arguments passed to the missing method, maybe a named arg set or a numerically indexed set" />

		<cfset var ret = ""/>
		<cfinvoke component="#variables.schoolsGateway#" 
				  method="#arguments.missingMethodName#" 
				  argumentcollection="#arguments.missingMethodArguments#" 
				  returnvariable="ret"/>
		<cfreturn ret />
	</cffunction>
</cfcomponent>
