<!---
	COMPONENT: schoolListener
	AUTHOR: Isaac Hartstein (ihartstein@fau.edu.com)
	DATE: 2/7/2013
	
	CHANGE HISTORY:
		* 10/2/2005: component created (Matt Woodward)
--->

<cfcomponent name="schoolListener" displayname="schoolListener" output="false" 
		extends="MachII.framework.Listener" 
		hint="schoolListener for Wizard">
	
	<cffunction name="configure" access="public" output="false" 
			returntype="void" 
			hint="Configures this listener as part of the Mach-II framework">
		<!--- do nothing for now --->
		<cfset var sf = getProperty("ServiceFactory")>
		

		<cfset variables.schoolsService 	= sf.getBean('schoolsService') />
	</cffunction>

	<cffunction name="getSchoolsQuery" access="public" output="false" 
			returntype="query" >
		<cfargument name="event" type="MachII.framework.Event" required="true" />
		<cfreturn variables.schoolsService.getSchoolsQuery(orderby='name') >
	</cffunction>

	
</cfcomponent>