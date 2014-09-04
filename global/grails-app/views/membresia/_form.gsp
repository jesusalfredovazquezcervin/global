<%@ page import="global.Membresia" %>



<div class="fieldcontain ${hasErrors(bean: membresiaInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="membresia.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${membresiaInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: membresiaInstance, field: 'descripcion', 'error')} required">
	<label for="descripcion">
		<g:message code="membresia.descripcion.label" default="Descripcion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descripcion" required="" value="${membresiaInstance?.descripcion}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: membresiaInstance, field: 'precio', 'error')} required">
	<label for="precio">
		<g:message code="membresia.precio.label" default="Precio" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="precio" value="${fieldValue(bean: membresiaInstance, field: 'precio')}" required=""/>
</div>

