<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE mach-ii PUBLIC "-//Mach-II//DTDMach-II Configuration 1.5.0//EN" "http://www.mach-ii.com/dtds/mach-ii_1_5_0.dtd">
<mach-ii version="1.5">
	
	<!-- LISTENERS -->
	<listeners>
		<listener name="departmentListener" type="Wizard.core.departments.listeners.departmentListener" />
	</listeners>

	<event-handlers>
		<!--
			<event-handler event="showFaculty" access="public">
				<notify listener="facultyListener" method="getFaculty" resultArg="qFaculty" />
				<view-page name="faculty" />
			</event-handler>

			<event-handler event="showFacultyDetails" access="public">
				<notify listener="facultyListener" method="getFacultyDetails" resultArg="qFacultyDetails" />
				<view-page name="facultyDetails" />
			</event-handler>	

			<event-handler event="pdftest" access="public">			
				<view-page name="pdftest" />
			</event-handler>

			
			<event-handler event="facultyDetailsPDF" access="public">
				<notify listener="facultyListener" method="getFacultyDetails" resultArg="qFacultyDetails" />
				<view-page name="facultyDetailsPDF" />
			</event-handler>	

			<event-handler event="facultyDetailsXLS" access="public">
				<notify listener="facultyListener" method="getFacultyDetailsXLS" resultArg="qFacultyDetailsXLS" />
				<view-page name="facultyDetailsXLS" />
			</event-handler>
		-->
	</event-handlers>
	
	
	<!-- views -->
	<page-views>
		<page-view name="faculty" 			page="/core/faculty/views/listFaculty.cfm" />
		<page-view name="facultyDetails" 	page="/core/faculty/views/facultyDetails.cfm" />
		<page-view name="facultyDetailsPDF"	page="/core/faculty/views/facultyDetailsPDF.cfm" />
		<page-view name="facultyDetailsXLS"	page="/core/faculty/views/facultyDetailsXLS.cfm" />
		<page-view name="pdftest" 			page="/core/faculty/views/pdftest.cfm" />
	</page-views>
	
</mach-ii>