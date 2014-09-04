
<%@ page import="global.Socio" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="bootstrap">
		<g:set var="entityName" value="${message(code: 'socio.label', default: 'Socio')}" />
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
				
					<g:if test="${socioInstance?.nombre}">
						<dt><g:message code="socio.nombre.label" default="Nombre" /></dt>
						
							<dd><g:fieldValue bean="${socioInstance}" field="nombre"/></dd>
						
					</g:if>
				
					<g:if test="${socioInstance?.apellidoPaterno}">
						<dt><g:message code="socio.apellidoPaterno.label" default="Apellido Paterno" /></dt>
						
							<dd><g:fieldValue bean="${socioInstance}" field="apellidoPaterno"/></dd>
						
					</g:if>
				
					<g:if test="${socioInstance?.apellidoMaterno}">
						<dt><g:message code="socio.apellidoMaterno.label" default="Apellido Materno" /></dt>
						
							<dd><g:fieldValue bean="${socioInstance}" field="apellidoMaterno"/></dd>
						
					</g:if>
				
					<g:if test="${socioInstance?.fechaNacimiento}">
						<dt><g:message code="socio.fechaNacimiento.label" default="Fecha Nacimiento" /></dt>
						
							<dd><g:formatDate date="${socioInstance?.fechaNacimiento}" /></dd>
						
					</g:if>
				
					<g:if test="${socioInstance?.socioDesde}">
						<dt><g:message code="socio.socioDesde.label" default="Socio Desde" /></dt>
						
							<dd><g:formatDate date="${socioInstance?.socioDesde}" /></dd>
						
					</g:if>
				
					<g:if test="${socioInstance?.sexo}">
						<dt><g:message code="socio.sexo.label" default="Sexo" /></dt>
						
							<dd><g:fieldValue bean="${socioInstance}" field="sexo"/></dd>
						
					</g:if>
				
					<g:if test="${socioInstance?.tipoMembresia}">
						<dt><g:message code="socio.tipoMembresia.label" default="Tipo Membresia" /></dt>
						
							<dd><g:link controller="membresia" action="show" id="${socioInstance?.tipoMembresia?.id}">${socioInstance?.tipoMembresia?.encodeAsHTML()}</g:link></dd>
						
					</g:if>
				
					<g:if test="${socioInstance?.calle}">
						<dt><g:message code="socio.calle.label" default="Calle" /></dt>
						
							<dd><g:fieldValue bean="${socioInstance}" field="calle"/></dd>
						
					</g:if>
				
					<g:if test="${socioInstance?.ciudad}">
						<dt><g:message code="socio.ciudad.label" default="Ciudad" /></dt>
						
							<dd><g:fieldValue bean="${socioInstance}" field="ciudad"/></dd>
						
					</g:if>
				
					<g:if test="${socioInstance?.codigoPostal}">
						<dt><g:message code="socio.codigoPostal.label" default="Codigo Postal" /></dt>
						
							<dd><g:fieldValue bean="${socioInstance}" field="codigoPostal"/></dd>
						
					</g:if>
				
					<g:if test="${socioInstance?.pais}">
						<dt><g:message code="socio.pais.label" default="Pais" /></dt>
						
							<dd><g:link controller="pais" action="show" id="${socioInstance?.pais?.id}">${socioInstance?.pais?.encodeAsHTML()}</g:link></dd>
						
					</g:if>
				
					<g:if test="${socioInstance?.estado}">
						<dt><g:message code="socio.estado.label" default="Estado" /></dt>
						
							<dd><g:link controller="estado" action="show" id="${socioInstance?.estado?.id}">${socioInstance?.estado?.encodeAsHTML()}</g:link></dd>
						
					</g:if>
				
					<g:if test="${socioInstance?.notificar}">
						<dt><g:message code="socio.notificar.label" default="Notificar" /></dt>
						
							<dd><g:formatBoolean boolean="${socioInstance?.notificar}" /></dd>
						
					</g:if>
				
					<g:if test="${socioInstance?.usuario}">
						<dt><g:message code="socio.usuario.label" default="Usuario" /></dt>
						
							<dd><g:link controller="usuario" action="show" id="${socioInstance?.usuario?.id}">${socioInstance?.usuario?.encodeAsHTML()}</g:link></dd>
						
					</g:if>
				
					<g:if test="${socioInstance?.fotografia}">
						<dt><g:message code="socio.fotografia.label" default="Fotografia" /></dt>
						
					</g:if>
				
				</dl>

				<g:form>
					<g:hiddenField name="id" value="${socioInstance?.id}" />
					<div class="form-actions">
						<g:link class="btn" action="edit" id="${socioInstance?.id}">
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
