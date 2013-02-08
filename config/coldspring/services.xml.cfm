<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE beans PUBLIC "-//SPRING//DTD BEAN//EN"  "http://www.springframework.org/dtd/spring-beans.dtd">
<beans default-autowire="byName">
	
	<!--
	<import resource="/intfroot/config/coldspring/aicServices.xml.cfm" />
 	<import resource="/intfroot/config/coldspring/surveyServices.xml.cfm" />
	<import resource="/intfroot/config/coldspring/showcaseServices.xml.cfm" />
	<import resource="/intfroot/config/coldspring/receiverServices.xml.cfm" />
	<import resource="/intfroot/config/coldspring/apiServices.xml.cfm" />
	
	<import resource="/intfroot/config/coldspring/superServices.xml.cfm" />
	<import resource="/intfroot/faculty/config/faculty.xml.cfm" />
	-->

	<import resource="config/coldspring/facultyServices.xml.cfm" />
	<import resource="config/coldspring/semesterServices.xml.cfm" />
	<import resource="config/coldspring/departmentServices.xml.cfm" />
	<import resource="config/coldspring/schoolServices.xml.cfm" />
<!-- lookup 
	<bean id="studentsDAO" class="Wizard.model.studentsDAO">
		<constructor-arg name="dsn"><value>${dsn}</value></constructor-arg>
	</bean>
	<bean id="studentsGateway" class="Wizard.model.studentsGateway">
		<constructor-arg name="dsn"><value>${dsn}</value></constructor-arg>
	</bean>
	<bean id="studentsService" class="Wizard.model.studentsService">
		<constructor-arg name="studentsDAO">
			<ref bean="studentsDAO"/>
		</constructor-arg>
		<constructor-arg name="studentsGateway">
			<ref bean="studentsGateway"/>
		</constructor-arg>
	</bean>
-->


</beans>