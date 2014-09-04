
<%@ page import="global.Medicion" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="bootstrap">
		<g:set var="entityName" value="${message(code: 'medicion.label', default: 'Medicion')}" />
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
				
					<g:if test="${medicionInstance?.peso}">
						<dt><g:message code="medicion.peso.label" default="Peso" /></dt>
						
							<dd><g:fieldValue bean="${medicionInstance}" field="peso"/></dd>
						
					</g:if>
				
					<g:if test="${medicionInstance?.altura}">
						<dt><g:message code="medicion.altura.label" default="Altura" /></dt>
						
							<dd><g:fieldValue bean="${medicionInstance}" field="altura"/></dd>
						
					</g:if>
				
					<g:if test="${medicionInstance?.pantorrillaMasa}">
						<dt><g:message code="medicion.pantorrillaMasa.label" default="Pantorrilla Masa" /></dt>
						
							<dd><g:fieldValue bean="${medicionInstance}" field="pantorrillaMasa"/></dd>
						
					</g:if>
				
					<g:if test="${medicionInstance?.pantorrillaPliegue}">
						<dt><g:message code="medicion.pantorrillaPliegue.label" default="Pantorrilla Pliegue" /></dt>
						
							<dd><g:fieldValue bean="${medicionInstance}" field="pantorrillaPliegue"/></dd>
						
					</g:if>
				
					<g:if test="${medicionInstance?.musloMasa}">
						<dt><g:message code="medicion.musloMasa.label" default="Muslo Masa" /></dt>
						
							<dd><g:fieldValue bean="${medicionInstance}" field="musloMasa"/></dd>
						
					</g:if>
				
					<g:if test="${medicionInstance?.musloPliegue}">
						<dt><g:message code="medicion.musloPliegue.label" default="Muslo Pliegue" /></dt>
						
							<dd><g:fieldValue bean="${medicionInstance}" field="musloPliegue"/></dd>
						
					</g:if>
				
					<g:if test="${medicionInstance?.cinturaMasa}">
						<dt><g:message code="medicion.cinturaMasa.label" default="Cintura Masa" /></dt>
						
							<dd><g:fieldValue bean="${medicionInstance}" field="cinturaMasa"/></dd>
						
					</g:if>
				
					<g:if test="${medicionInstance?.cinturaPliegue}">
						<dt><g:message code="medicion.cinturaPliegue.label" default="Cintura Pliegue" /></dt>
						
							<dd><g:fieldValue bean="${medicionInstance}" field="cinturaPliegue"/></dd>
						
					</g:if>
				
					<g:if test="${medicionInstance?.caderaMasa}">
						<dt><g:message code="medicion.caderaMasa.label" default="Cadera Masa" /></dt>
						
							<dd><g:fieldValue bean="${medicionInstance}" field="caderaMasa"/></dd>
						
					</g:if>
				
					<g:if test="${medicionInstance?.caderaPliegue}">
						<dt><g:message code="medicion.caderaPliegue.label" default="Cadera Pliegue" /></dt>
						
							<dd><g:fieldValue bean="${medicionInstance}" field="caderaPliegue"/></dd>
						
					</g:if>
				
					<g:if test="${medicionInstance?.pechoMasa}">
						<dt><g:message code="medicion.pechoMasa.label" default="Pecho Masa" /></dt>
						
							<dd><g:fieldValue bean="${medicionInstance}" field="pechoMasa"/></dd>
						
					</g:if>
				
					<g:if test="${medicionInstance?.pechoPliegue}">
						<dt><g:message code="medicion.pechoPliegue.label" default="Pecho Pliegue" /></dt>
						
							<dd><g:fieldValue bean="${medicionInstance}" field="pechoPliegue"/></dd>
						
					</g:if>
				
					<g:if test="${medicionInstance?.brazoMasa}">
						<dt><g:message code="medicion.brazoMasa.label" default="Brazo Masa" /></dt>
						
							<dd><g:fieldValue bean="${medicionInstance}" field="brazoMasa"/></dd>
						
					</g:if>
				
					<g:if test="${medicionInstance?.brazoPliegue}">
						<dt><g:message code="medicion.brazoPliegue.label" default="Brazo Pliegue" /></dt>
						
							<dd><g:fieldValue bean="${medicionInstance}" field="brazoPliegue"/></dd>
						
					</g:if>
				
					<g:if test="${medicionInstance?.fechaMedicion}">
						<dt><g:message code="medicion.fechaMedicion.label" default="Fecha Medicion" /></dt>
						
							<dd><g:formatDate date="${medicionInstance?.fechaMedicion}" /></dd>
						
					</g:if>
				
					<g:if test="${medicionInstance?.socio}">
						<dt><g:message code="medicion.socio.label" default="Socio" /></dt>
						
							<dd><g:link controller="socio" action="show" id="${medicionInstance?.socio?.id}">${medicionInstance?.socio?.encodeAsHTML()}</g:link></dd>
						
					</g:if>
				
				</dl>

				<g:form>
					<g:hiddenField name="id" value="${medicionInstance?.id}" />
					<div class="form-actions">
						<g:link class="btn" action="edit" id="${medicionInstance?.id}">
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
