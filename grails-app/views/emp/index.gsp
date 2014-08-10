
<%@ page import="com.hrms.Emp" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'emp.label', default: 'Emp')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-emp" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-emp" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="num" title="${message(code: 'emp.num.label', default: 'Num')}" />
					
						<g:sortableColumn property="ename" title="${message(code: 'emp.ename.label', default: 'Ename')}" />
					
						<g:sortableColumn property="aname" title="${message(code: 'emp.aname.label', default: 'Aname')}" />
					
						<g:sortableColumn property="dob" title="${message(code: 'emp.dob.label', default: 'Dob')}" />
					
						<g:sortableColumn property="gender" title="${message(code: 'emp.gender.label', default: 'Gender')}" />
					
						<g:sortableColumn property="nationality" title="${message(code: 'emp.nationality.label', default: 'Nationality')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${empInstanceList}" status="i" var="empInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${empInstance.id}">${fieldValue(bean: empInstance, field: "num")}</g:link></td>
					
						<td>${fieldValue(bean: empInstance, field: "ename")}</td>
					
						<td>${fieldValue(bean: empInstance, field: "aname")}</td>
					
						<td><g:formatDate date="${empInstance.dob}" /></td>
					
						<td>${fieldValue(bean: empInstance, field: "gender")}</td>
					
						<td>${fieldValue(bean: empInstance, field: "nationality")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${empInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
