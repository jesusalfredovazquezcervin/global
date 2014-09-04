
<%@ page import="global.Medicion" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'medicion.label', default: 'Medicion')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-medicion" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-medicion" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="peso" title="${message(code: 'medicion.peso.label', default: 'Peso')}" />
					
						<g:sortableColumn property="altura" title="${message(code: 'medicion.altura.label', default: 'Altura')}" />
					
						<g:sortableColumn property="pantorrillaMasa" title="${message(code: 'medicion.pantorrillaMasa.label', default: 'Pantorrilla Masa')}" />
					
						<g:sortableColumn property="pantorrillaPliegue" title="${message(code: 'medicion.pantorrillaPliegue.label', default: 'Pantorrilla Pliegue')}" />
					
						<g:sortableColumn property="musloMasa" title="${message(code: 'medicion.musloMasa.label', default: 'Muslo Masa')}" />
					
						<g:sortableColumn property="musloPliegue" title="${message(code: 'medicion.musloPliegue.label', default: 'Muslo Pliegue')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${medicionInstanceList}" status="i" var="medicionInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${medicionInstance.id}">${fieldValue(bean: medicionInstance, field: "peso")}</g:link></td>
					
						<td>${fieldValue(bean: medicionInstance, field: "altura")}</td>
					
						<td>${fieldValue(bean: medicionInstance, field: "pantorrillaMasa")}</td>
					
						<td>${fieldValue(bean: medicionInstance, field: "pantorrillaPliegue")}</td>
					
						<td>${fieldValue(bean: medicionInstance, field: "musloMasa")}</td>
					
						<td>${fieldValue(bean: medicionInstance, field: "musloPliegue")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${medicionInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
