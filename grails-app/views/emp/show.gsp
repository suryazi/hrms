
<%@ page import="com.hrms.Emp" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'emp.label', default: 'Emp')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-emp" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-emp" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list emp">
			
				<g:if test="${empInstance?.num}">
				<li class="fieldcontain">
					<span id="num-label" class="property-label"><g:message code="emp.num.label" default="Num" /></span>
					
						<span class="property-value" aria-labelledby="num-label"><g:fieldValue bean="${empInstance}" field="num"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empInstance?.ename}">
				<li class="fieldcontain">
					<span id="ename-label" class="property-label"><g:message code="emp.ename.label" default="Ename" /></span>
					
						<span class="property-value" aria-labelledby="ename-label"><g:fieldValue bean="${empInstance}" field="ename"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empInstance?.aname}">
				<li class="fieldcontain">
					<span id="aname-label" class="property-label"><g:message code="emp.aname.label" default="Aname" /></span>
					
						<span class="property-value" aria-labelledby="aname-label"><g:fieldValue bean="${empInstance}" field="aname"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empInstance?.dob}">
				<li class="fieldcontain">
					<span id="dob-label" class="property-label"><g:message code="emp.dob.label" default="Dob" /></span>
					
						<span class="property-value" aria-labelledby="dob-label"><g:formatDate date="${empInstance?.dob}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${empInstance?.gender}">
				<li class="fieldcontain">
					<span id="gender-label" class="property-label"><g:message code="emp.gender.label" default="Gender" /></span>
					
						<span class="property-value" aria-labelledby="gender-label"><g:fieldValue bean="${empInstance}" field="gender"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empInstance?.nationality}">
				<li class="fieldcontain">
					<span id="nationality-label" class="property-label"><g:message code="emp.nationality.label" default="Nationality" /></span>
					
						<span class="property-value" aria-labelledby="nationality-label"><g:fieldValue bean="${empInstance}" field="nationality"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empInstance?.religion}">
				<li class="fieldcontain">
					<span id="religion-label" class="property-label"><g:message code="emp.religion.label" default="Religion" /></span>
					
						<span class="property-value" aria-labelledby="religion-label"><g:fieldValue bean="${empInstance}" field="religion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empInstance?.doj}">
				<li class="fieldcontain">
					<span id="doj-label" class="property-label"><g:message code="emp.doj.label" default="Doj" /></span>
					
						<span class="property-value" aria-labelledby="doj-label"><g:formatDate date="${empInstance?.doj}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${empInstance?.mobile}">
				<li class="fieldcontain">
					<span id="mobile-label" class="property-label"><g:message code="emp.mobile.label" default="Mobile" /></span>
					
						<span class="property-value" aria-labelledby="mobile-label"><g:fieldValue bean="${empInstance}" field="mobile"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="emp.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${empInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:empInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${empInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
