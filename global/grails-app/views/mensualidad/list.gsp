
<%@ page import="global.Mensualidad" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="bootstrap">
		<g:set var="entityName" value="${message(code: 'mensualidad.label', default: 'Mensualidad')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="row-fluid">
			
			<div class="span3">
				<div class="well">
					<ul class="nav nav-list">
						<li class="nav-header">${entityName}</li>
						<li class="active">
							<g:link class="list" action="list">
								<i class="icon-list icon-white"></i>
								<g:message code="default.list.label" args="[entityName]" />
							</g:link>
						</li>
						<li>
							<g:link class="create" action="create">
								<i class="icon-plus"></i>
								<g:message code="default.create.label" args="[entityName]" />
							</g:link>
						</li>
					</ul>
				</div>
			</div>

			<div class="span9">
				
				<div class="page-header">
					<h1><g:message code="default.list.label" args="[entityName]" /></h1>
				</div>

				<g:if test="${flash.message}">
				<bootstrap:alert class="alert-info">${flash.message}</bootstrap:alert>
				</g:if>
				
				<table class="table table-striped">
					<thead>
						<tr>
						
							<g:sortableColumn property="fechaInicio" title="${message(code: 'mensualidad.fechaInicio.label', default: 'Fecha Inicio')}" />
						
							<g:sortableColumn property="fechaFin" title="${message(code: 'mensualidad.fechaFin.label', default: 'Fecha Fin')}" />
						
							<th class="header"><g:message code="mensualidad.socio.label" default="Socio" /></th>
						
							<th></th>
						</tr>
					</thead>
					<tbody>
					<g:each in="${mensualidadInstanceList}" var="mensualidadInstance">
						<tr>
						
							<td><g:formatDate date="${mensualidadInstance.fechaInicio}" /></td>
						
							<td><g:formatDate date="${mensualidadInstance.fechaFin}" /></td>
						
							<td>${fieldValue(bean: mensualidadInstance, field: "socio")}</td>
						
							<td class="link">
								<g:link action="show" id="${mensualidadInstance.id}" class="btn btn-small">Show &raquo;</g:link>
							</td>
						</tr>
					</g:each>
					</tbody>
				</table>
				<div class="pagination">
					<bootstrap:paginate total="${mensualidadInstanceTotal}" />
				</div>
			</div>

		</div>
	</body>
</html>
