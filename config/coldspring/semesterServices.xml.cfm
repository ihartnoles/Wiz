<?xml version="1.0" encoding="UTF-8"?>
<beans default-autowire="byName">

<!-- Semesters -->
<bean id="semestersDAO" class="Wizard.core.semesters.model.semestersDAO">
	<constructor-arg name="dsn"><value>${dsn}</value></constructor-arg>
</bean>
<bean id="semestersGateway" class="Wizard.core.semesters.model.semestersGateway">
	<constructor-arg name="dsn"><value>${dsn}</value></constructor-arg>
</bean>
<bean id="semestersService" class="Wizard.core.semesters.model.semestersService">
	<constructor-arg name="semestersDAO">
		<ref bean="semestersDAO"/>
	</constructor-arg>
	<constructor-arg name="semestersGateway">
		<ref bean="semestersGateway"/>
	</constructor-arg>
</bean>
</beans>