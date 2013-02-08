
<cfcomponent displayname="semesters" output="false">
		<cfproperty name="id" type="numeric" default="" />
		<cfproperty name="name" type="string" default="" />
		<cfproperty name="prefix" type="string" default="" />
		<cfproperty name="created_at" type="date" default="" />
		<cfproperty name="updated_at" type="date" default="" />
		<cfproperty name="semester_status" type="numeric" default="" />
		
	<!---
	PROPERTIES
	--->
	<cfset variables.instance = StructNew() />

	<!---
	INITIALIZATION / CONFIGURATION
	--->
	<cffunction name="init" access="public" returntype="semesters" output="false">
		<cfargument name="id" type="string" required="false" default="" />
		<cfargument name="name" type="string" required="false" default="" />
		<cfargument name="prefix" type="string" required="false" default="" />
		<cfargument name="created_at" type="string" required="false" default="" />
		<cfargument name="updated_at" type="string" required="false" default="" />
		<cfargument name="semester_status" type="string" required="false" default="" />
		
		<!--- run setters --->
		<cfset setid(arguments.id) />
		<cfset setname(arguments.name) />
		<cfset setprefix(arguments.prefix) />
		<cfset setcreated_at(arguments.created_at) />
		<cfset setupdated_at(arguments.updated_at) />
		<cfset setsemester_status(arguments.semester_status) />
		
		<cfreturn this />
 	</cffunction>

	<!---
	PUBLIC FUNCTIONS
	--->
	<cffunction name="setMemento" access="public" returntype="semesters" output="false">
		<cfargument name="memento" type="struct" required="yes"/>
		<cfset variables.instance = arguments.memento />
		<cfreturn this />
	</cffunction>
	<cffunction name="getMemento" access="public" returntype="struct" output="false" >
		<cfreturn variables.instance />
	</cffunction>

	<cffunction name="validate" access="public" returntype="array" output="false">
		<cfset var errors = arrayNew(1) />
		<cfset var thisError = structNew() />
		
		<!--- id --->
		<cfif (len(trim(getid())) AND NOT isNumeric(trim(getid())))>
			<cfset thisError.field = "id" />
			<cfset thisError.type = "invalidType" />
			<cfset thisError.message = "id is not numeric" />
			<cfset arrayAppend(errors,duplicate(thisError)) />
		</cfif>
		
		<!--- name --->
		<cfif (len(trim(getname())) AND NOT IsSimpleValue(trim(getname())))>
			<cfset thisError.field = "name" />
			<cfset thisError.type = "invalidType" />
			<cfset thisError.message = "name is not a string" />
			<cfset arrayAppend(errors,duplicate(thisError)) />
		</cfif>
		<cfif (len(trim(getname())) GT 255)>
			<cfset thisError.field = "name" />
			<cfset thisError.type = "tooLong" />
			<cfset thisError.message = "name is too long" />
			<cfset arrayAppend(errors,duplicate(thisError)) />
		</cfif>
		
		<!--- prefix --->
		<cfif (len(trim(getprefix())) AND NOT IsSimpleValue(trim(getprefix())))>
			<cfset thisError.field = "prefix" />
			<cfset thisError.type = "invalidType" />
			<cfset thisError.message = "prefix is not a string" />
			<cfset arrayAppend(errors,duplicate(thisError)) />
		</cfif>
		<cfif (len(trim(getprefix())) GT 255)>
			<cfset thisError.field = "prefix" />
			<cfset thisError.type = "tooLong" />
			<cfset thisError.message = "prefix is too long" />
			<cfset arrayAppend(errors,duplicate(thisError)) />
		</cfif>
		
		<!--- created_at --->
		<cfif (len(trim(getcreated_at())) AND NOT isDate(trim(getcreated_at())))>
			<cfset thisError.field = "created_at" />
			<cfset thisError.type = "invalidType" />
			<cfset thisError.message = "created_at is not a date" />
			<cfset arrayAppend(errors,duplicate(thisError)) />
		</cfif>
		
		<!--- updated_at --->
		<cfif (len(trim(getupdated_at())) AND NOT isDate(trim(getupdated_at())))>
			<cfset thisError.field = "updated_at" />
			<cfset thisError.type = "invalidType" />
			<cfset thisError.message = "updated_at is not a date" />
			<cfset arrayAppend(errors,duplicate(thisError)) />
		</cfif>
		
		<!--- semester_status --->
		<cfif (NOT len(trim(getsemester_status())))>
			<cfset thisError.field = "semester_status" />
			<cfset thisError.type = "required" />
			<cfset thisError.message = "semester_status is required" />
			<cfset arrayAppend(errors,duplicate(thisError)) />
		</cfif>
		<cfif (len(trim(getsemester_status())) AND NOT isNumeric(trim(getsemester_status())))>
			<cfset thisError.field = "semester_status" />
			<cfset thisError.type = "invalidType" />
			<cfset thisError.message = "semester_status is not numeric" />
			<cfset arrayAppend(errors,duplicate(thisError)) />
		</cfif>
		
		<cfreturn errors />
	</cffunction>

	<!---
	ACCESSORS
	--->
	<cffunction name="setid" access="public" returntype="void" output="false">
		<cfargument name="id" type="string" required="true" />
		<cfset variables.instance.id = arguments.id />
	</cffunction>
	<cffunction name="getid" access="public" returntype="string" output="false">
		<cfreturn variables.instance.id />
	</cffunction>

	<cffunction name="setname" access="public" returntype="void" output="false">
		<cfargument name="name" type="string" required="true" />
		<cfset variables.instance.name = arguments.name />
	</cffunction>
	<cffunction name="getname" access="public" returntype="string" output="false">
		<cfreturn variables.instance.name />
	</cffunction>

	<cffunction name="setprefix" access="public" returntype="void" output="false">
		<cfargument name="prefix" type="string" required="true" />
		<cfset variables.instance.prefix = arguments.prefix />
	</cffunction>
	<cffunction name="getprefix" access="public" returntype="string" output="false">
		<cfreturn variables.instance.prefix />
	</cffunction>

	<cffunction name="setcreated_at" access="public" returntype="void" output="false">
		<cfargument name="created_at" type="string" required="true" />
		<cfset variables.instance.created_at = arguments.created_at />
	</cffunction>
	<cffunction name="getcreated_at" access="public" returntype="string" output="false">
		<cfreturn variables.instance.created_at />
	</cffunction>

	<cffunction name="setupdated_at" access="public" returntype="void" output="false">
		<cfargument name="updated_at" type="string" required="true" />
		<cfset variables.instance.updated_at = arguments.updated_at />
	</cffunction>
	<cffunction name="getupdated_at" access="public" returntype="string" output="false">
		<cfreturn variables.instance.updated_at />
	</cffunction>

	<cffunction name="setsemester_status" access="public" returntype="void" output="false">
		<cfargument name="semester_status" type="string" required="true" />
		<cfset variables.instance.semester_status = arguments.semester_status />
	</cffunction>
	<cffunction name="getsemester_status" access="public" returntype="string" output="false">
		<cfreturn variables.instance.semester_status />
	</cffunction>


	<!---
	DUMP
	--->
	<cffunction name="dump" access="public" output="true" return="void">
		<cfargument name="abort" type="boolean" default="false" />
		<cfdump var="#variables.instance#" />
		<cfif arguments.abort>
			<cfabort />
		</cfif>
	</cffunction>

</cfcomponent>
