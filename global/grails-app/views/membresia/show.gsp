
<%@ page import="global.Membresia" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="bootstrap">
		<g:set var="entityName" value="${message(code: 'membresia.label', default: 'Membresia')}" />
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
				
					<g:if test="${membresiaInstance?.nombre}">
						<dt><g:message code="membresia.nombre.label" default="Nombre" /></dt>
						
							<dd><g:fieldValue bean="${membresiaInstance}" field="nombre"/></dd>
						
					</g:if>
				
					<g:if test="${membresiaInstance?.descripcion}">
						<dt><g:message code="membresia.descripcion.label" default="Descripcion" /></dt>
						
							<dd><g:fieldValue bean="${membresiaInstance}" field="descripcion"/></dd>
						
					</g:if>
				
					<g:if test="${membresiaInstance?.precio}">
						<dt><g:message code="membresia.precio.label" default="Precio" /></dt>
						
							<dd><g:fieldValue bean="${membresiaInstance}" field="precio"/></dd>
						
					</g:if>
				
				</dl>

				<g:form>
					<g:hiddenField name="id" value="${membresiaInstance?.id}" />
					<div class="form-actions">
						<g:link class="btn" action="edit" id="${membresiaInstance?.id}">
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
