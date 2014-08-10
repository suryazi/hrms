<%@ page import="com.hrms.Emp" %>



<div class="fieldcontain ${hasErrors(bean: empInstance, field: 'num', 'error')} required">
	<label for="num">
		<g:message code="emp.num.label" default="Num" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="num" required="" value="${empInstance?.num}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: empInstance, field: 'ename', 'error')} required">
	<label for="ename">
		<g:message code="emp.ename.label" default="Ename" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="ename" required="" value="${empInstance?.ename}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: empInstance, field: 'aname', 'error')} required">
	<label for="aname">
		<g:message code="emp.aname.label" default="Aname" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="aname" required="" value="${empInstance?.aname}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: empInstance, field: 'dob', 'error')} required">
	<label for="dob">
		<g:message code="emp.dob.label" default="Dob" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dob" precision="day"  value="${empInstance?.dob}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: empInstance, field: 'gender', 'error')} required">
	<label for="gender">
		<g:message code="emp.gender.label" default="Gender" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="gender" from="${empInstance.constraints.gender.inList}" required="" value="${empInstance?.gender}" valueMessagePrefix="emp.gender"/>

</div>

<div class="fieldcontain ${hasErrors(bean: empInstance, field: 'nationality', 'error')} required">
	<label for="nationality">
		<g:message code="emp.nationality.label" default="Nationality" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nationality" required="" value="${empInstance?.nationality}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: empInstance, field: 'religion', 'error')} required">
	<label for="religion">
		<g:message code="emp.religion.label" default="Religion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="religion" required="" value="${empInstance?.religion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: empInstance, field: 'doj', 'error')} required">
	<label for="doj">
		<g:message code="emp.doj.label" default="Doj" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="doj" precision="day"  value="${empInstance?.doj}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: empInstance, field: 'mobile', 'error')} ">
	<label for="mobile">
		<g:message code="emp.mobile.label" default="Mobile" />
		
	</label>
	<g:textField name="mobile" maxlength="15" pattern="${empInstance.constraints.mobile.matches}" value="${empInstance?.mobile}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: empInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="emp.email.label" default="Email" />
		
	</label>
	<g:field type="email" name="email" value="${empInstance?.email}"/>

</div>

