import global.Membresia
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_global_membresiashow_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/membresia/show.gsp" }
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
invokeTag('message','g',8,['code':("default.show.label"),'args':([entityName])],-1)
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
invokeTag('message','g',36,['code':("default.show.label"),'args':([entityName])],-1)
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
if(true && (membresiaInstance?.nombre)) {
printHtmlPart(14)
invokeTag('message','g',46,['code':("membresia.nombre.label"),'default':("Nombre")],-1)
printHtmlPart(15)
invokeTag('fieldValue','g',48,['bean':(membresiaInstance),'field':("nombre")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (membresiaInstance?.descripcion)) {
printHtmlPart(14)
invokeTag('message','g',53,['code':("membresia.descripcion.label"),'default':("Descripcion")],-1)
printHtmlPart(15)
invokeTag('fieldValue','g',55,['bean':(membresiaInstance),'field':("descripcion")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (membresiaInstance?.precio)) {
printHtmlPart(14)
invokeTag('message','g',60,['code':("membresia.precio.label"),'default':("Precio")],-1)
printHtmlPart(15)
invokeTag('fieldValue','g',62,['bean':(membresiaInstance),'field':("precio")],-1)
printHtmlPart(16)
}
printHtmlPart(18)
createTagBody(2, {->
printHtmlPart(19)
invokeTag('hiddenField','g',69,['name':("id"),'value':(membresiaInstance?.id)],-1)
printHtmlPart(20)
createTagBody(3, {->
printHtmlPart(21)
invokeTag('message','g',73,['code':("default.button.edit.label"),'default':("Edit")],-1)
printHtmlPart(22)
})
invokeTag('link','g',74,['class':("btn"),'action':("edit"),'id':(membresiaInstance?.id)],3)
printHtmlPart(23)
invokeTag('message','g',77,['code':("default.button.delete.label"),'default':("Delete")],-1)
printHtmlPart(24)
})
invokeTag('form','g',80,[:],2)
printHtmlPart(25)
})
invokeTag('captureBody','sitemesh',85,[:],1)
printHtmlPart(26)
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
