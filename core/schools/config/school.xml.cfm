<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE mach-ii PUBLIC "-//Mach-II//DTDMach-II Configuration 1.5.0//EN" "http://www.mach-ii.com/dtds/mach-ii_1_5_0.dtd">
<mach-ii version="1.5">
	
	<!-- LISTENERS -->
	<listeners>
		<listener name="schoolListener" type="Wizard.core.schools.listeners.schoolListener" />
	</listeners>

	<event-handlers>
		<event-handler event="getSchoolsQuery" access="public">
			<notify listener="schoolListener" method="getSchools" resultArg="qSchools" />
		</event-handler>

	</event-handlers>
	
	
	<!-- views -->
	<page-views>
		
	</page-views>
	
</mach-ii>