
<%@ page import="global.Medicion" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="bootstrap">
		<g:set var="entityName" value="${message(code: 'medicion.label', default: 'Medicion')}" />
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
						
							<g:sortableColumn property="peso" title="${message(code: 'medicion.peso.label', default: 'Peso')}" />
						
							<g:sortableColumn property="altura" title="${message(code: 'medicion.altura.label', default: 'Altura')}" />
						
							<g:sortableColumn property="pantorrillaMasa" title="${message(code: 'medicion.pantorrillaMasa.label', default: 'Pantorrilla Masa')}" />
						
							<g:sortableColumn property="pantorrillaPliegue" title="${message(code: 'medicion.pantorrillaPliegue.label', default: 'Pantorrilla Pliegue')}" />
						
							<g:sortableColumn property="musloMasa" title="${message(code: 'medicion.musloMasa.label', default: 'Muslo Masa')}" />
						
							<g:sortableColumn property="musloPliegue" title="${message(code: 'medicion.musloPliegue.label', default: 'Muslo Pliegue')}" />
						
							<th></th>
						</tr>
					</thead>
					<tbody>
					<g:each in="${medicionInstanceList}" var="medicionInstance">
						<tr>
						
							<td>${fieldValue(bean: medicionInstance, field: "peso")}</td>
						
							<td>${fieldValue(bean: medicionInstance, field: "altura")}</td>
						
							<td>${fieldValue(bean: medicionInstance, field: "pantorrillaMasa")}</td>
						
							<td>${fieldValue(bean: medicionInstance, field: "pantorrillaPliegue")}</td>
						
							<td>${fieldValue(bean: medicionInstance, field: "musloMasa")}</td>
						
							<td>${fieldValue(bean: medicionInstance, field: "musloPliegue")}</td>
						
							<td class="link">
								<g:link action="show" id="${medicionInstance.id}" class="btn btn-small">Show &raquo;</g:link>
							</td>
						</tr>
					</g:each>
					</tbody>
				</table>
				<div class="pagination">
					<bootstrap:paginate total="${medicionInstanceTotal}" />
				</div>
			</div>

		</div>
	</body>
</html>
