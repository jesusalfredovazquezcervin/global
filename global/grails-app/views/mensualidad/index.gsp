
<%@ page import="global.Mensualidad" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'mensualidad.label', default: 'Mensualidad')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-mensualidad" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-mensualidad" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="fechaInicio" title="${message(code: 'mensualidad.fechaInicio.label', default: 'Fecha Inicio')}" />
					
						<g:sortableColumn property="fechaFin" title="${message(code: 'mensualidad.fechaFin.label', default: 'Fecha Fin')}" />
					
						<th><g:message code="mensualidad.socio.label" default="Socio" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${mensualidadInstanceList}" status="i" var="mensualidadInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${mensualidadInstance.id}">${fieldValue(bean: mensualidadInstance, field: "fechaInicio")}</g:link></td>
					
						<td><g:formatDate date="${mensualidadInstance.fechaFin}" /></td>
					
						<td>${fieldValue(bean: mensualidadInstance, field: "socio")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${mensualidadInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
