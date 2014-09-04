
<%@ page import="global.Socio" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'socio.label', default: 'Socio')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-socio" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-socio" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="nombre" title="${message(code: 'socio.nombre.label', default: 'Nombre')}" />
					
						<g:sortableColumn property="apellidoPaterno" title="${message(code: 'socio.apellidoPaterno.label', default: 'Apellido Paterno')}" />
					
						<g:sortableColumn property="apellidoMaterno" title="${message(code: 'socio.apellidoMaterno.label', default: 'Apellido Materno')}" />
					
						<g:sortableColumn property="fechaNacimiento" title="${message(code: 'socio.fechaNacimiento.label', default: 'Fecha Nacimiento')}" />
					
						<g:sortableColumn property="socioDesde" title="${message(code: 'socio.socioDesde.label', default: 'Socio Desde')}" />
					
						<g:sortableColumn property="sexo" title="${message(code: 'socio.sexo.label', default: 'Sexo')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${socioInstanceList}" status="i" var="socioInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${socioInstance.id}">${fieldValue(bean: socioInstance, field: "nombre")}</g:link></td>
					
						<td>${fieldValue(bean: socioInstance, field: "apellidoPaterno")}</td>
					
						<td>${fieldValue(bean: socioInstance, field: "apellidoMaterno")}</td>
					
						<td><g:formatDate date="${socioInstance.fechaNacimiento}" /></td>
					
						<td><g:formatDate date="${socioInstance.socioDesde}" /></td>
					
						<td>${fieldValue(bean: socioInstance, field: "sexo")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${socioInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
