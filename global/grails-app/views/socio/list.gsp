
<%@ page import="global.Socio" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="bootstrap">
		<g:set var="entityName" value="${message(code: 'socio.label', default: 'Socio')}" />
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
						
							<g:sortableColumn property="nombre" title="${message(code: 'socio.nombre.label', default: 'Nombre')}" />
						
							<g:sortableColumn property="apellidoPaterno" title="${message(code: 'socio.apellidoPaterno.label', default: 'Apellido Paterno')}" />
						
							<g:sortableColumn property="apellidoMaterno" title="${message(code: 'socio.apellidoMaterno.label', default: 'Apellido Materno')}" />
						
							<g:sortableColumn property="fechaNacimiento" title="${message(code: 'socio.fechaNacimiento.label', default: 'Fecha Nacimiento')}" />
						
							<g:sortableColumn property="socioDesde" title="${message(code: 'socio.socioDesde.label', default: 'Socio Desde')}" />
						
							<g:sortableColumn property="sexo" title="${message(code: 'socio.sexo.label', default: 'Sexo')}" />
						
							<th></th>
						</tr>
					</thead>
					<tbody>
					<g:each in="${socioInstanceList}" var="socioInstance">
						<tr>
						
							<td>${fieldValue(bean: socioInstance, field: "nombre")}</td>
						
							<td>${fieldValue(bean: socioInstance, field: "apellidoPaterno")}</td>
						
							<td>${fieldValue(bean: socioInstance, field: "apellidoMaterno")}</td>
						
							<td><g:formatDate date="${socioInstance.fechaNacimiento}" /></td>
						
							<td><g:formatDate date="${socioInstance.socioDesde}" /></td>
						
							<td>${fieldValue(bean: socioInstance, field: "sexo")}</td>
						
							<td class="link">
								<g:link action="show" id="${socioInstance.id}" class="btn btn-small">Show &raquo;</g:link>
							</td>
						</tr>
					</g:each>
					</tbody>
				</table>
				<div class="pagination">
					<bootstrap:paginate total="${socioInstanceTotal}" />
				</div>
			</div>

		</div>
	</body>
</html>
