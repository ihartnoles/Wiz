<!---
	COMPONENT: semesterListener
	AUTHOR: Isaac Hartstein (ihartstein@fau.edu.com)
	DATE: 2/7/2013
	
	CHANGE HISTORY:
		* 10/2/2005: component created (Matt Woodward)
--->

<cfcomponent name="semesterListener" displayname="semesterListener" output="false" 
		extends="MachII.framework.Listener" 
		hint="semesterListener for Wizard">
	
	<cffunction name="configure" access="public" output="false" 
			returntype="void" 
			hint="Configures this listener as part of the Mach-II framework">
		<!--- do nothing for now --->
		<cfset var sf = getProperty("ServiceFactory")>
		

		<cfset variables.semestersService 	= sf.getBean('semestersService') />
	</cffunction>

	<cffunction name="getSemestersQuery" access="public" output="false" 
			returntype="query" >
		<cfargument name="event" type="MachII.framework.Event" required="true" />
		<cfreturn variables.semestersService.getByAttributesQuery() >
	</cffunction>

	
</cfcomponent>