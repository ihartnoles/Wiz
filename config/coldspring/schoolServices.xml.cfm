<?xml version="1.0" encoding="UTF-8"?>
<beans default-autowire="byName">
<!-- schools -->
	<bean id="schoolsDAO" class="Wizard.core.schools.model.schoolsDAO">
		<constructor-arg name="dsn"><value>${dsn}</value></constructor-arg>
	</bean>
	<bean id="schoolsGateway" class="Wizard.core.schools.model.schoolsGateway">
		<constructor-arg name="dsn"><value>${dsn}</value></constructor-arg>
	</bean>
	<bean id="schoolsService" class="Wizard.core.schools.model.schoolsService">
		<constructor-arg name="schoolsDAO">
			<ref bean="schoolsDAO"/>
		</constructor-arg>
		<constructor-arg name="schoolsGateway">
			<ref bean="schoolsGateway"/>
		</constructor-arg>
	</bean>
</beans>