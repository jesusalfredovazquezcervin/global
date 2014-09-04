import global.Mensualidad
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_global_mensualidad_form_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/mensualidad/_form.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
expressionOut.print(hasErrors(bean: mensualidadInstance, field: 'fechaInicio', 'error'))
printHtmlPart(1)
invokeTag('message','g',7,['code':("mensualidad.fechaInicio.label"),'default':("Fecha Inicio")],-1)
printHtmlPart(2)
invokeTag('datePicker','g',10,['name':("fechaInicio"),'precision':("day"),'value':(mensualidadInstance?.fechaInicio)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: mensualidadInstance, field: 'fechaFin', 'error'))
printHtmlPart(4)
invokeTag('message','g',15,['code':("mensualidad.fechaFin.label"),'default':("Fecha Fin")],-1)
printHtmlPart(2)
invokeTag('datePicker','g',18,['name':("fechaFin"),'precision':("day"),'value':(mensualidadInstance?.fechaFin)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: mensualidadInstance, field: 'socio', 'error'))
printHtmlPart(5)
invokeTag('message','g',23,['code':("mensualidad.socio.label"),'default':("Socio")],-1)
printHtmlPart(2)
invokeTag('select','g',26,['id':("socio"),'name':("socio.id"),'from':(global.Socio.list()),'optionKey':("id"),'required':(""),'value':(mensualidadInstance?.socio?.id),'class':("many-to-one")],-1)
printHtmlPart(6)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1407803932000L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'none'
public static final String TAGLIB_CODEC = 'none'
}
