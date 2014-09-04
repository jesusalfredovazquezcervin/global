<%@ page import="global.Mensualidad" %>



<div class="fieldcontain ${hasErrors(bean: mensualidadInstance, field: 'fechaInicio', 'error')} required">
	<label for="fechaInicio">
		<g:message code="mensualidad.fechaInicio.label" default="Fecha Inicio" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaInicio" precision="day"  value="${mensualidadInstance?.fechaInicio}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: mensualidadInstance, field: 'fechaFin', 'error')} required">
	<label for="fechaFin">
		<g:message code="mensualidad.fechaFin.label" default="Fecha Fin" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaFin" precision="day"  value="${mensualidadInstance?.fechaFin}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: mensualidadInstance, field: 'socio', 'error')} required">
	<label for="socio">
		<g:message code="mensualidad.socio.label" default="Socio" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="socio" name="socio.id" from="${global.Socio.list()}" optionKey="id" required="" value="${mensualidadInstance?.socio?.id}" class="many-to-one"/>
</div>

