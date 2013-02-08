
<cfcomponent displayname="departments" output="false">
		<cfproperty name="id" type="numeric" default="" />
		<cfproperty name="name" type="string" default="" />
		<cfproperty name="description" type="string" default="" />
		<cfproperty name="school_id" type="numeric" default="" />
		<cfproperty name="created_at" type="date" default="" />
		<cfproperty name="updated_at" type="date" default="" />
		
	<!---
	PROPERTIES
	--->
	<cfset variables.instance = StructNew() />

	<!---
	INITIALIZATION / CONFIGURATION
	--->
	<cffunction name="init" access="public" returntype="departments" output="false">
		<cfargument name="id" type="string" required="false" default="" />
		<cfargument name="name" type="string" required="false" default="" />
		<cfargument name="description" type="string" required="false" default="" />
		<cfargument name="school_id" type="string" required="false" default="" />
		<cfargument name="created_at" type="string" required="false" default="" />
		<cfargument name="updated_at" type="string" required="false" default="" />
		
		<!--- run setters --->
		<cfset setid(arguments.id) />
		<cfset setname(arguments.name) />
		<cfset setdescription(arguments.description) />
		<cfset setschool_id(arguments.school_id) />
		<cfset setcreated_at(arguments.created_at) />
		<cfset setupdated_at(arguments.updated_at) />
		
		<cfreturn this />
 	</cffunction>

	<!---
	PUBLIC FUNCTIONS
	--->
	<cffunction name="setMemento" access="public" returntype="departments" output="false">
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
		
		<!--- description --->
		<cfif (len(trim(getdescription())) AND NOT IsSimpleValue(trim(getdescription())))>
			<cfset thisError.field = "description" />
			<cfset thisError.type = "invalidType" />
			<cfset thisError.message = "description is not a string" />
			<cfset arrayAppend(errors,duplicate(thisError)) />
		</cfif>
		<cfif (len(trim(getdescription())) GT 255)>
			<cfset thisError.field = "description" />
			<cfset thisError.type = "tooLong" />
			<cfset thisError.message = "description is too long" />
			<cfset arrayAppend(errors,duplicate(thisError)) />
		</cfif>
		
		<!--- school_id --->
		<cfif (len(trim(getschool_id())) AND NOT isNumeric(trim(getschool_id())))>
			<cfset thisError.field = "school_id" />
			<cfset thisError.type = "invalidType" />
			<cfset thisError.message = "school_id is not numeric" />
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

	<cffunction name="setdescription" access="public" returntype="void" output="false">
		<cfargument name="description" type="string" required="true" />
		<cfset variables.instance.description = arguments.description />
	</cffunction>
	<cffunction name="getdescription" access="public" returntype="string" output="false">
		<cfreturn variables.instance.description />
	</cffunction>

	<cffunction name="setschool_id" access="public" returntype="void" output="false">
		<cfargument name="school_id" type="string" required="true" />
		<cfset variables.instance.school_id = arguments.school_id />
	</cffunction>
	<cffunction name="getschool_id" access="public" returntype="string" output="false">
		<cfreturn variables.instance.school_id />
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
