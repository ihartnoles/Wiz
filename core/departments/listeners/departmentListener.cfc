<!---
	COMPONENT: LoginListener
	AUTHOR: Matt Woodward (mpwoodward@gmail.com)
	DATE: 10/2/2005
	PURPOSE: LoginListener for Hello Mach-II sample application
	CHANGE HISTORY:
		* 10/2/2005: component created (Matt Woodward)
--->

<cfcomponent name="deparmentListener" displayname="deparmentListener" output="false" 
		extends="MachII.framework.Listener" 
		hint="deparmentListener for Wizard">
	
	<cffunction name="configure" access="public" output="false" 
			returntype="void" 
			hint="Configures this listener as part of the Mach-II framework">
		<!--- do nothing for now --->
		<cfset var sf = getProperty("ServiceFactory")>
		

		<cfset variables.departmentsService 	= sf.getBean('departmentsService') />
	</cffunction>

	
	<cffunction name="getDepartmentsQuery" access="public" output="false" 
			returntype="query" >
		<cfargument name="event" type="MachII.framework.Event" required="true" />
		<cfreturn variables.departmentsService.getDepartmentsQuery(orderby='name') >
	</cffunction>

	<!---
	<cffunction name="getFacultyDetails" access="public" output="false" 
			returntype="query" >
		<cfargument name="event" type="MachII.framework.Event" required="true" />
		<cfreturn variables.departmentService.getFacultyDetails(id=request.event.getArg('id')) >
	</cffunction>
	
	<cffunction name="getFacultyDetailsXLS" access="public" output="false" 
			returntype="query" >
		<cfargument name="event" type="MachII.framework.Event" required="true" />
		<cfreturn variables.departmentService.getFacultyDetailsXLS(id=request.event.getArg('id')) >
	</cffunction>
	--->
</cfcomponent>