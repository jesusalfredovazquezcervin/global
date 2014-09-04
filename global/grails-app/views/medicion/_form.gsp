<%@ page import="global.Medicion" %>



<div class="fieldcontain ${hasErrors(bean: medicionInstance, field: 'peso', 'error')} required">
	<label for="peso">
		<g:message code="medicion.peso.label" default="Peso" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="peso" value="${fieldValue(bean: medicionInstance, field: 'peso')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: medicionInstance, field: 'altura', 'error')} required">
	<label for="altura">
		<g:message code="medicion.altura.label" default="Altura" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="altura" value="${fieldValue(bean: medicionInstance, field: 'altura')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: medicionInstance, field: 'pantorrillaMasa', 'error')} required">
	<label for="pantorrillaMasa">
		<g:message code="medicion.pantorrillaMasa.label" default="Pantorrilla Masa" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="pantorrillaMasa" value="${fieldValue(bean: medicionInstance, field: 'pantorrillaMasa')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: medicionInstance, field: 'pantorrillaPliegue', 'error')} required">
	<label for="pantorrillaPliegue">
		<g:message code="medicion.pantorrillaPliegue.label" default="Pantorrilla Pliegue" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="pantorrillaPliegue" value="${fieldValue(bean: medicionInstance, field: 'pantorrillaPliegue')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: medicionInstance, field: 'musloMasa', 'error')} required">
	<label for="musloMasa">
		<g:message code="medicion.musloMasa.label" default="Muslo Masa" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="musloMasa" value="${fieldValue(bean: medicionInstance, field: 'musloMasa')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: medicionInstance, field: 'musloPliegue', 'error')} required">
	<label for="musloPliegue">
		<g:message code="medicion.musloPliegue.label" default="Muslo Pliegue" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="musloPliegue" value="${fieldValue(bean: medicionInstance, field: 'musloPliegue')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: medicionInstance, field: 'cinturaMasa', 'error')} required">
	<label for="cinturaMasa">
		<g:message code="medicion.cinturaMasa.label" default="Cintura Masa" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="cinturaMasa" value="${fieldValue(bean: medicionInstance, field: 'cinturaMasa')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: medicionInstance, field: 'cinturaPliegue', 'error')} required">
	<label for="cinturaPliegue">
		<g:message code="medicion.cinturaPliegue.label" default="Cintura Pliegue" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="cinturaPliegue" value="${fieldValue(bean: medicionInstance, field: 'cinturaPliegue')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: medicionInstance, field: 'caderaMasa', 'error')} required">
	<label for="caderaMasa">
		<g:message code="medicion.caderaMasa.label" default="Cadera Masa" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="caderaMasa" value="${fieldValue(bean: medicionInstance, field: 'caderaMasa')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: medicionInstance, field: 'caderaPliegue', 'error')} required">
	<label for="caderaPliegue">
		<g:message code="medicion.caderaPliegue.label" default="Cadera Pliegue" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="caderaPliegue" value="${fieldValue(bean: medicionInstance, field: 'caderaPliegue')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: medicionInstance, field: 'pechoMasa', 'error')} required">
	<label for="pechoMasa">
		<g:message code="medicion.pechoMasa.label" default="Pecho Masa" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="pechoMasa" value="${fieldValue(bean: medicionInstance, field: 'pechoMasa')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: medicionInstance, field: 'pechoPliegue', 'error')} required">
	<label for="pechoPliegue">
		<g:message code="medicion.pechoPliegue.label" default="Pecho Pliegue" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="pechoPliegue" value="${fieldValue(bean: medicionInstance, field: 'pechoPliegue')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: medicionInstance, field: 'brazoMasa', 'error')} required">
	<label for="brazoMasa">
		<g:message code="medicion.brazoMasa.label" default="Brazo Masa" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="brazoMasa" value="${fieldValue(bean: medicionInstance, field: 'brazoMasa')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: medicionInstance, field: 'brazoPliegue', 'error')} required">
	<label for="brazoPliegue">
		<g:message code="medicion.brazoPliegue.label" default="Brazo Pliegue" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="brazoPliegue" value="${fieldValue(bean: medicionInstance, field: 'brazoPliegue')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: medicionInstance, field: 'fechaMedicion', 'error')} required">
	<label for="fechaMedicion">
		<g:message code="medicion.fechaMedicion.label" default="Fecha Medicion" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaMedicion" precision="day"  value="${medicionInstance?.fechaMedicion}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: medicionInstance, field: 'socio', 'error')} required">
	<label for="socio">
		<g:message code="medicion.socio.label" default="Socio" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="socio" name="socio.id" from="${global.Socio.list()}" optionKey="id" required="" value="${medicionInstance?.socio?.id}" class="many-to-one"/>
</div>

