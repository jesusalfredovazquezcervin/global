<%@ page import="global.Socio" %>



<div class="fieldcontain ${hasErrors(bean: socioInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="socio.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${socioInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: socioInstance, field: 'apellidoPaterno', 'error')} required">
	<label for="apellidoPaterno">
		<g:message code="socio.apellidoPaterno.label" default="Apellido Paterno" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellidoPaterno" required="" value="${socioInstance?.apellidoPaterno}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: socioInstance, field: 'apellidoMaterno', 'error')} required">
	<label for="apellidoMaterno">
		<g:message code="socio.apellidoMaterno.label" default="Apellido Materno" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellidoMaterno" required="" value="${socioInstance?.apellidoMaterno}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: socioInstance, field: 'fechaNacimiento', 'error')} ">
	<label for="fechaNacimiento">
		<g:message code="socio.fechaNacimiento.label" default="Fecha Nacimiento" />
		
	</label>
	<g:datePicker name="fechaNacimiento" precision="day"  value="${socioInstance?.fechaNacimiento}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: socioInstance, field: 'socioDesde', 'error')} required">
	<label for="socioDesde">
		<g:message code="socio.socioDesde.label" default="Socio Desde" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="socioDesde" precision="day"  value="${socioInstance?.socioDesde}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: socioInstance, field: 'sexo', 'error')} required">
	<label for="sexo">
		<g:message code="socio.sexo.label" default="Sexo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="sexo" from="${socioInstance.constraints.sexo.inList}" required="" value="${socioInstance?.sexo}" valueMessagePrefix="socio.sexo"/>
</div>

<div class="fieldcontain ${hasErrors(bean: socioInstance, field: 'tipoMembresia', 'error')} required">
	<label for="tipoMembresia">
		<g:message code="socio.tipoMembresia.label" default="Tipo Membresia" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="tipoMembresia" name="tipoMembresia.id" from="${global.Membresia.list()}" optionKey="id" required="" value="${socioInstance?.tipoMembresia?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: socioInstance, field: 'calle', 'error')} ">
	<label for="calle">
		<g:message code="socio.calle.label" default="Calle" />
		
	</label>
	<g:textField name="calle" value="${socioInstance?.calle}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: socioInstance, field: 'ciudad', 'error')} ">
	<label for="ciudad">
		<g:message code="socio.ciudad.label" default="Ciudad" />
		
	</label>
	<g:textField name="ciudad" value="${socioInstance?.ciudad}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: socioInstance, field: 'codigoPostal', 'error')} ">
	<label for="codigoPostal">
		<g:message code="socio.codigoPostal.label" default="Codigo Postal" />
		
	</label>
	<g:field name="codigoPostal" type="number" value="${socioInstance.codigoPostal}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: socioInstance, field: 'pais', 'error')} ">
	<label for="pais">
		<g:message code="socio.pais.label" default="Pais" />
		
	</label>
	<g:select id="pais" name="pais.id" from="${global.Pais.list()}" optionKey="id" value="${socioInstance?.pais?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: socioInstance, field: 'estado', 'error')} ">
	<label for="estado">
		<g:message code="socio.estado.label" default="Estado" />
		
	</label>
	<g:select id="estado" name="estado.id" from="${global.Estado.list()}" optionKey="id" value="${socioInstance?.estado?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: socioInstance, field: 'notificar', 'error')} ">
	<label for="notificar">
		<g:message code="socio.notificar.label" default="Notificar" />
		
	</label>
	<g:checkBox name="notificar" value="${socioInstance?.notificar}" />
</div>

<div class="fieldcontain ${hasErrors(bean: socioInstance, field: 'usuario', 'error')} required">
	<label for="usuario">
		<g:message code="socio.usuario.label" default="Usuario" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="usuario" name="usuario.id" from="${global.Usuario.list()}" optionKey="id" required="" value="${socioInstance?.usuario?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: socioInstance, field: 'fotografia', 'error')} ">
	<label for="fotografia">
		<g:message code="socio.fotografia.label" default="Fotografia" />
		
	</label>
	<input type="file" id="fotografia" name="fotografia" />
</div>

