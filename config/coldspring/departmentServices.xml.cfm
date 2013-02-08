<?xml version="1.0" encoding="UTF-8"?>
<beans default-autowire="byName">
<bean id="departmentsDAO" class="Wizard.core.departments.model.departmentsDAO">
		<constructor-arg name="dsn"><value>${dsn}</value></constructor-arg>
	</bean>
	<bean id="departmentsGateway" class="Wizard.core.departments.model.departmentsGateway">
		<constructor-arg name="dsn"><value>${dsn}</value></constructor-arg>
	</bean>
	<bean id="departmentsService" class="Wizard.core.departments.model.departmentsService">
		<constructor-arg name="departmentsDAO">
			<ref bean="departmentsDAO"/>
		</constructor-arg>
		<constructor-arg name="departmentsGateway">
			<ref bean="departmentsGateway"/>
		</constructor-arg>
	</bean>
</beans>