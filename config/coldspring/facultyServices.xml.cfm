<?xml version="1.0" encoding="UTF-8"?>
<beans default-autowire="byName">

<!-- Faculty -->
	<bean id="facultyDAO" class="Wizard.core.faculty.model.facultyDAO">
		<constructor-arg name="dsn"><value>${dsn}</value></constructor-arg>
	</bean>
	<bean id="facultyGateway" class="Wizard.core.faculty.model.facultyGateway">
		<constructor-arg name="dsn"><value>${dsn}</value></constructor-arg>
	</bean>
	<bean id="facultyService" class="Wizard.core.faculty.model.facultyService">
		<constructor-arg name="facultyDAO">
			<ref bean="facultyDAO"/>
		</constructor-arg>
		<constructor-arg name="facultyGateway">
			<ref bean="facultyGateway"/>
		</constructor-arg>
	</bean>
</beans>