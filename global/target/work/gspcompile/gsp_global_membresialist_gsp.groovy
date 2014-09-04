import global.Membresia
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_global_membresialist_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/membresia/list.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
printHtmlPart(1)
createTagBody(1, {->
printHtmlPart(2)
invokeTag('captureMeta','sitemesh',6,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("layout"),'content':("bootstrap")],-1)
printHtmlPart(2)
invokeTag('set','g',7,['var':("entityName"),'value':(message(code: 'membresia.label', default: 'Membresia'))],-1)
printHtmlPart(2)
createTagBody(2, {->
createTagBody(3, {->
invokeTag('message','g',8,['code':("default.list.label"),'args':([entityName])],-1)
})
invokeTag('captureTitle','sitemesh',8,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',8,[:],2)
printHtmlPart(3)
})
invokeTag('captureHead','sitemesh',9,[:],1)
printHtmlPart(3)
createTagBody(1, {->
printHtmlPart(4)
expressionOut.print(entityName)
printHtmlPart(5)
createTagBody(2, {->
printHtmlPart(6)
invokeTag('message','g',20,['code':("default.list.label"),'args':([entityName])],-1)
printHtmlPart(7)
})
invokeTag('link','g',21,['class':("list"),'action':("list")],2)
printHtmlPart(8)
createTagBody(2, {->
printHtmlPart(9)
invokeTag('message','g',26,['code':("default.create.label"),'args':([entityName])],-1)
printHtmlPart(7)
})
invokeTag('link','g',27,['class':("create"),'action':("create")],2)
printHtmlPart(10)
invokeTag('message','g',36,['code':("default.list.label"),'args':([entityName])],-1)
printHtmlPart(11)
if(true && (flash.message)) {
printHtmlPart(12)
createTagBody(3, {->
expressionOut.print(flash.message)
})
invokeTag('alert','bootstrap',40,['class':("alert-info")],3)
printHtmlPart(12)
}
printHtmlPart(13)
invokeTag('sortableColumn','g',47,['property':("nombre"),'title':(message(code: 'membresia.nombre.label', default: 'Nombre'))],-1)
printHtmlPart(14)
invokeTag('sortableColumn','g',49,['property':("descripcion"),'title':(message(code: 'membresia.descripcion.label', default: 'Descripcion'))],-1)
printHtmlPart(14)
invokeTag('sortableColumn','g',51,['property':("precio"),'title':(message(code: 'membresia.precio.label', default: 'Precio'))],-1)
printHtmlPart(15)
for( membresiaInstance in (membresiaInstanceList) ) {
printHtmlPart(16)
expressionOut.print(fieldValue(bean: membresiaInstance, field: "nombre"))
printHtmlPart(17)
expressionOut.print(fieldValue(bean: membresiaInstance, field: "descripcion"))
printHtmlPart(17)
expressionOut.print(fieldValue(bean: membresiaInstance, field: "precio"))
printHtmlPart(18)
createClosureForHtmlPart(19, 3)
invokeTag('link','g',67,['action':("show"),'id':(membresiaInstance.id),'class':("btn btn-small")],3)
printHtmlPart(20)
}
printHtmlPart(21)
invokeTag('paginate','bootstrap',74,['total':(membresiaInstanceTotal)],-1)
printHtmlPart(22)
})
invokeTag('captureBody','sitemesh',79,[:],1)
printHtmlPart(23)
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
