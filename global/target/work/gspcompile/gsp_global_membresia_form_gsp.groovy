import global.Membresia
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_global_membresia_form_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/membresia/_form.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
expressionOut.print(hasErrors(bean: membresiaInstance, field: 'nombre', 'error'))
printHtmlPart(1)
invokeTag('message','g',7,['code':("membresia.nombre.label"),'default':("Nombre")],-1)
printHtmlPart(2)
invokeTag('textField','g',10,['name':("nombre"),'required':(""),'value':(membresiaInstance?.nombre)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: membresiaInstance, field: 'descripcion', 'error'))
printHtmlPart(4)
invokeTag('message','g',15,['code':("membresia.descripcion.label"),'default':("Descripcion")],-1)
printHtmlPart(2)
invokeTag('textField','g',18,['name':("descripcion"),'required':(""),'value':(membresiaInstance?.descripcion)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: membresiaInstance, field: 'precio', 'error'))
printHtmlPart(5)
invokeTag('message','g',23,['code':("membresia.precio.label"),'default':("Precio")],-1)
printHtmlPart(2)
invokeTag('field','g',26,['name':("precio"),'value':(fieldValue(bean: membresiaInstance, field: 'precio')),'required':("")],-1)
printHtmlPart(6)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1407790130000L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'none'
public static final String TAGLIB_CODEC = 'none'
}
