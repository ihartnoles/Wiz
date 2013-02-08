<!---
	COMPONENT: LoginListener
	AUTHOR: Matt Woodward (mpwoodward@gmail.com)
	DATE: 10/2/2005
	PURPOSE: LoginListener for Hello Mach-II sample application
	CHANGE HISTORY:
		* 10/2/2005: component created (Matt Woodward)
--->

<cfcomponent name="FacultyListener" displayname="FacultyListener" output="false" 
		extends="MachII.framework.Listener" 
		hint="FacultyListener for Wizard">
	
	<cffunction name="configure" access="public" output="false" 
			returntype="void" 
			hint="Configures this listener as part of the Mach-II framework">
		<!--- do nothing for now --->
		<cfset var sf = getProperty("ServiceFactory")>
		

		<cfset variables.facultyService 						= sf.getBean('facultyService') />
	</cffunction>

	<cffunction name="getFaculty" access="public" output="false" 
			returntype="query" >
		<cfargument name="event" type="MachII.framework.Event" required="true" />
		<cfreturn variables.facultyService.getFacultyQuery() >
	</cffunction>

	<cffunction name="getFacultyDetails" access="public" output="false" 
			returntype="query" >
		<cfargument name="event" type="MachII.framework.Event" required="true" />
		<cfreturn variables.facultyService.getFacultyDetails(id=request.event.getArg('id')) >
	</cffunction>
	
	<cffunction name="getFacultyDetailsXLS" access="public" output="false" 
			returntype="query" >
		<cfargument name="event" type="MachII.framework.Event" required="true" />
		<cfreturn variables.facultyService.getFacultyDetailsXLS(id=request.event.getArg('id')) >
	</cffunction>
</cfcomponent>