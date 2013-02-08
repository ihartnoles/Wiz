
<cfcomponent displayname="faculty" output="false">
		<cfproperty name="id" type="numeric" default="" />
		<cfproperty name="znumber" type="string" default="" />
		<cfproperty name="email" type="string" default="" />
		<cfproperty name="first_name" type="string" default="" />
		<cfproperty name="middle_name" type="string" default="" />
		<cfproperty name="last_name" type="string" default="" />
		<cfproperty name="title_id" type="numeric" default="" />
		<cfproperty name="department_id" type="numeric" default="" />
		<cfproperty name="rank_id" type="numeric" default="" />
		<cfproperty name="employmentstatus_id" type="numeric" default="" />
		<cfproperty name="tenurestatus_id" type="numeric" default="" />
		<cfproperty name="qualification_id" type="numeric" default="" />
		<cfproperty name="cv_onfile" type="string" default="" />
		<cfproperty name="created_at" type="date" default="" />
		<cfproperty name="updated_at" type="date" default="" />
		
	<!---
	PROPERTIES
	--->
	<cfset variables.instance = StructNew() />

	<!---
	INITIALIZATION / CONFIGURATION
	--->
	<cffunction name="init" access="public" returntype="faculty" output="false">
		<cfargument name="id" type="string" required="false" default="" />
		<cfargument name="znumber" type="string" required="false" default="" />
		<cfargument name="email" type="string" required="false" default="" />
		<cfargument name="first_name" type="string" required="false" default="" />
		<cfargument name="middle_name" type="string" required="false" default="" />
		<cfargument name="last_name" type="string" required="false" default="" />
		<cfargument name="title_id" type="string" required="false" default="" />
		<cfargument name="department_id" type="string" required="false" default="" />
		<cfargument name="rank_id" type="string" required="false" default="" />
		<cfargument name="employmentstatus_id" type="string" required="false" default="" />
		<cfargument name="tenurestatus_id" type="string" required="false" default="" />
		<cfargument name="qualification_id" type="string" required="false" default="" />
		<cfargument name="cv_onfile" type="string" required="false" default="" />
		<cfargument name="created_at" type="string" required="false" default="" />
		<cfargument name="updated_at" type="string" required="false" default="" />
		
		<!--- run setters --->
		<cfset setid(arguments.id) />
		<cfset setznumber(arguments.znumber) />
		<cfset setemail(arguments.email) />
		<cfset setfirst_name(arguments.first_name) />
		<cfset setmiddle_name(arguments.middle_name) />
		<cfset setlast_name(arguments.last_name) />
		<cfset settitle_id(arguments.title_id) />
		<cfset setdepartment_id(arguments.department_id) />
		<cfset setrank_id(arguments.rank_id) />
		<cfset setemploymentstatus_id(arguments.employmentstatus_id) />
		<cfset settenurestatus_id(arguments.tenurestatus_id) />
		<cfset setqualification_id(arguments.qualification_id) />
		<cfset setcv_onfile(arguments.cv_onfile) />
		<cfset setcreated_at(arguments.created_at) />
		<cfset setupdated_at(arguments.updated_at) />
		
		<cfreturn this />
 	</cffunction>

	<!---
	PUBLIC FUNCTIONS
	--->
	<cffunction name="setMemento" access="public" returntype="faculty" output="false">
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
		
		<!--- znumber --->
		<cfif (len(trim(getznumber())) AND NOT IsSimpleValue(trim(getznumber())))>
			<cfset thisError.field = "znumber" />
			<cfset thisError.type = "invalidType" />
			<cfset thisError.message = "znumber is not a string" />
			<cfset arrayAppend(errors,duplicate(thisError)) />
		</cfif>
		<cfif (len(trim(getznumber())) GT 255)>
			<cfset thisError.field = "znumber" />
			<cfset thisError.type = "tooLong" />
			<cfset thisError.message = "znumber is too long" />
			<cfset arrayAppend(errors,duplicate(thisError)) />
		</cfif>
		
		<!--- email --->
		<cfif (len(trim(getemail())) AND NOT IsSimpleValue(trim(getemail())))>
			<cfset thisError.field = "email" />
			<cfset thisError.type = "invalidType" />
			<cfset thisError.message = "email is not a string" />
			<cfset arrayAppend(errors,duplicate(thisError)) />
		</cfif>
		<cfif (len(trim(getemail())) GT 255)>
			<cfset thisError.field = "email" />
			<cfset thisError.type = "tooLong" />
			<cfset thisError.message = "email is too long" />
			<cfset arrayAppend(errors,duplicate(thisError)) />
		</cfif>
		
		<!--- first_name --->
		<cfif (len(trim(getfirst_name())) AND NOT IsSimpleValue(trim(getfirst_name())))>
			<cfset thisError.field = "first_name" />
			<cfset thisError.type = "invalidType" />
			<cfset thisError.message = "first_name is not a string" />
			<cfset arrayAppend(errors,duplicate(thisError)) />
		</cfif>
		<cfif (len(trim(getfirst_name())) GT 255)>
			<cfset thisError.field = "first_name" />
			<cfset thisError.type = "tooLong" />
			<cfset thisError.message = "first_name is too long" />
			<cfset arrayAppend(errors,duplicate(thisError)) />
		</cfif>
		
		<!--- middle_name --->
		<cfif (len(trim(getmiddle_name())) AND NOT IsSimpleValue(trim(getmiddle_name())))>
			<cfset thisError.field = "middle_name" />
			<cfset thisError.type = "invalidType" />
			<cfset thisError.message = "middle_name is not a string" />
			<cfset arrayAppend(errors,duplicate(thisError)) />
		</cfif>
		<cfif (len(trim(getmiddle_name())) GT 255)>
			<cfset thisError.field = "middle_name" />
			<cfset thisError.type = "tooLong" />
			<cfset thisError.message = "middle_name is too long" />
			<cfset arrayAppend(errors,duplicate(thisError)) />
		</cfif>
		
		<!--- last_name --->
		<cfif (len(trim(getlast_name())) AND NOT IsSimpleValue(trim(getlast_name())))>
			<cfset thisError.field = "last_name" />
			<cfset thisError.type = "invalidType" />
			<cfset thisError.message = "last_name is not a string" />
			<cfset arrayAppend(errors,duplicate(thisError)) />
		</cfif>
		<cfif (len(trim(getlast_name())) GT 255)>
			<cfset thisError.field = "last_name" />
			<cfset thisError.type = "tooLong" />
			<cfset thisError.message = "last_name is too long" />
			<cfset arrayAppend(errors,duplicate(thisError)) />
		</cfif>
		
		<!--- title_id --->
		<cfif (len(trim(gettitle_id())) AND NOT isNumeric(trim(gettitle_id())))>
			<cfset thisError.field = "title_id" />
			<cfset thisError.type = "invalidType" />
			<cfset thisError.message = "title_id is not numeric" />
			<cfset arrayAppend(errors,duplicate(thisError)) />
		</cfif>
		
		<!--- department_id --->
		<cfif (len(trim(getdepartment_id())) AND NOT isNumeric(trim(getdepartment_id())))>
			<cfset thisError.field = "department_id" />
			<cfset thisError.type = "invalidType" />
			<cfset thisError.message = "department_id is not numeric" />
			<cfset arrayAppend(errors,duplicate(thisError)) />
		</cfif>
		
		<!--- rank_id --->
		<cfif (len(trim(getrank_id())) AND NOT isNumeric(trim(getrank_id())))>
			<cfset thisError.field = "rank_id" />
			<cfset thisError.type = "invalidType" />
			<cfset thisError.message = "rank_id is not numeric" />
			<cfset arrayAppend(errors,duplicate(thisError)) />
		</cfif>
		
		<!--- employmentstatus_id --->
		<cfif (len(trim(getemploymentstatus_id())) AND NOT isNumeric(trim(getemploymentstatus_id())))>
			<cfset thisError.field = "employmentstatus_id" />
			<cfset thisError.type = "invalidType" />
			<cfset thisError.message = "employmentstatus_id is not numeric" />
			<cfset arrayAppend(errors,duplicate(thisError)) />
		</cfif>
		
		<!--- tenurestatus_id --->
		<cfif (len(trim(gettenurestatus_id())) AND NOT isNumeric(trim(gettenurestatus_id())))>
			<cfset thisError.field = "tenurestatus_id" />
			<cfset thisError.type = "invalidType" />
			<cfset thisError.message = "tenurestatus_id is not numeric" />
			<cfset arrayAppend(errors,duplicate(thisError)) />
		</cfif>
		
		<!--- qualification_id --->
		<cfif (len(trim(getqualification_id())) AND NOT isNumeric(trim(getqualification_id())))>
			<cfset thisError.field = "qualification_id" />
			<cfset thisError.type = "invalidType" />
			<cfset thisError.message = "qualification_id is not numeric" />
			<cfset arrayAppend(errors,duplicate(thisError)) />
		</cfif>
		
		<!--- cv_onfile --->
		<cfif (len(trim(getcv_onfile())) AND NOT IsSimpleValue(trim(getcv_onfile())))>
			<cfset thisError.field = "cv_onfile" />
			<cfset thisError.type = "invalidType" />
			<cfset thisError.message = "cv_onfile is not a string" />
			<cfset arrayAppend(errors,duplicate(thisError)) />
		</cfif>
		<cfif (len(trim(getcv_onfile())) GT 255)>
			<cfset thisError.field = "cv_onfile" />
			<cfset thisError.type = "tooLong" />
			<cfset thisError.message = "cv_onfile is too long" />
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

	<cffunction name="setznumber" access="public" returntype="void" output="false">
		<cfargument name="znumber" type="string" required="true" />
		<cfset variables.instance.znumber = arguments.znumber />
	</cffunction>
	<cffunction name="getznumber" access="public" returntype="string" output="false">
		<cfreturn variables.instance.znumber />
	</cffunction>

	<cffunction name="setemail" access="public" returntype="void" output="false">
		<cfargument name="email" type="string" required="true" />
		<cfset variables.instance.email = arguments.email />
	</cffunction>
	<cffunction name="getemail" access="public" returntype="string" output="false">
		<cfreturn variables.instance.email />
	</cffunction>

	<cffunction name="setfirst_name" access="public" returntype="void" output="false">
		<cfargument name="first_name" type="string" required="true" />
		<cfset variables.instance.first_name = arguments.first_name />
	</cffunction>
	<cffunction name="getfirst_name" access="public" returntype="string" output="false">
		<cfreturn variables.instance.first_name />
	</cffunction>

	<cffunction name="setmiddle_name" access="public" returntype="void" output="false">
		<cfargument name="middle_name" type="string" required="true" />
		<cfset variables.instance.middle_name = arguments.middle_name />
	</cffunction>
	<cffunction name="getmiddle_name" access="public" returntype="string" output="false">
		<cfreturn variables.instance.middle_name />
	</cffunction>

	<cffunction name="setlast_name" access="public" returntype="void" output="false">
		<cfargument name="last_name" type="string" required="true" />
		<cfset variables.instance.last_name = arguments.last_name />
	</cffunction>
	<cffunction name="getlast_name" access="public" returntype="string" output="false">
		<cfreturn variables.instance.last_name />
	</cffunction>

	<cffunction name="settitle_id" access="public" returntype="void" output="false">
		<cfargument name="title_id" type="string" required="true" />
		<cfset variables.instance.title_id = arguments.title_id />
	</cffunction>
	<cffunction name="gettitle_id" access="public" returntype="string" output="false">
		<cfreturn variables.instance.title_id />
	</cffunction>

	<cffunction name="setdepartment_id" access="public" returntype="void" output="false">
		<cfargument name="department_id" type="string" required="true" />
		<cfset variables.instance.department_id = arguments.department_id />
	</cffunction>
	<cffunction name="getdepartment_id" access="public" returntype="string" output="false">
		<cfreturn variables.instance.department_id />
	</cffunction>

	<cffunction name="setrank_id" access="public" returntype="void" output="false">
		<cfargument name="rank_id" type="string" required="true" />
		<cfset variables.instance.rank_id = arguments.rank_id />
	</cffunction>
	<cffunction name="getrank_id" access="public" returntype="string" output="false">
		<cfreturn variables.instance.rank_id />
	</cffunction>

	<cffunction name="setemploymentstatus_id" access="public" returntype="void" output="false">
		<cfargument name="employmentstatus_id" type="string" required="true" />
		<cfset variables.instance.employmentstatus_id = arguments.employmentstatus_id />
	</cffunction>
	<cffunction name="getemploymentstatus_id" access="public" returntype="string" output="false">
		<cfreturn variables.instance.employmentstatus_id />
	</cffunction>

	<cffunction name="settenurestatus_id" access="public" returntype="void" output="false">
		<cfargument name="tenurestatus_id" type="string" required="true" />
		<cfset variables.instance.tenurestatus_id = arguments.tenurestatus_id />
	</cffunction>
	<cffunction name="gettenurestatus_id" access="public" returntype="string" output="false">
		<cfreturn variables.instance.tenurestatus_id />
	</cffunction>

	<cffunction name="setqualification_id" access="public" returntype="void" output="false">
		<cfargument name="qualification_id" type="string" required="true" />
		<cfset variables.instance.qualification_id = arguments.qualification_id />
	</cffunction>
	<cffunction name="getqualification_id" access="public" returntype="string" output="false">
		<cfreturn variables.instance.qualification_id />
	</cffunction>

	<cffunction name="setcv_onfile" access="public" returntype="void" output="false">
		<cfargument name="cv_onfile" type="string" required="true" />
		<cfset variables.instance.cv_onfile = arguments.cv_onfile />
	</cffunction>
	<cffunction name="getcv_onfile" access="public" returntype="string" output="false">
		<cfreturn variables.instance.cv_onfile />
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
