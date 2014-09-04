
<%@ page import="global.Mensualidad" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="bootstrap">
		<g:set var="entityName" value="${message(code: 'mensualidad.label', default: 'Mensualidad')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="row-fluid">
			
			<div class="span3">
				<div class="well">
					<ul class="nav nav-list">
						<li class="nav-header">${entityName}</li>
						<li>
							<g:link class="list" action="list">
								<i class="icon-list"></i>
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
					<h1><g:message code="default.show.label" args="[entityName]" /></h1>
				</div>

				<g:if test="${flash.message}">
				<bootstrap:alert class="alert-info">${flash.message}</bootstrap:alert>
				</g:if>

				<dl>
				
					<g:if test="${mensualidadInstance?.fechaInicio}">
						<dt><g:message code="mensualidad.fechaInicio.label" default="Fecha Inicio" /></dt>
						
							<dd><g:formatDate date="${mensualidadInstance?.fechaInicio}" /></dd>
						
					</g:if>
				
					<g:if test="${mensualidadInstance?.fechaFin}">
						<dt><g:message code="mensualidad.fechaFin.label" default="Fecha Fin" /></dt>
						
							<dd><g:formatDate date="${mensualidadInstance?.fechaFin}" /></dd>
						
					</g:if>
				
					<g:if test="${mensualidadInstance?.socio}">
						<dt><g:message code="mensualidad.socio.label" default="Socio" /></dt>
						
							<dd><g:link controller="socio" action="show" id="${mensualidadInstance?.socio?.id}">${mensualidadInstance?.socio?.encodeAsHTML()}</g:link></dd>
						
					</g:if>
				
				</dl>

				<g:form>
					<g:hiddenField name="id" value="${mensualidadInstance?.id}" />
					<div class="form-actions">
						<g:link class="btn" action="edit" id="${mensualidadInstance?.id}">
							<i class="icon-pencil"></i>
							<g:message code="default.button.edit.label" default="Edit" />
						</g:link>
						<button class="btn btn-danger" type="submit" name="_action_delete">
							<i class="icon-trash icon-white"></i>
							<g:message code="default.button.delete.label" default="Delete" />
						</button>
					</div>
				</g:form>

			</div>

		</div>
	</body>
</html>
