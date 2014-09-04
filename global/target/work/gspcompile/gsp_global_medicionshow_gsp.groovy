import global.Medicion
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_global_medicionshow_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/medicion/show.gsp" }
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
invokeTag('set','g',7,['var':("entityName"),'value':(message(code: 'medicion.label', default: 'Medicion'))],-1)
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
if(true && (medicionInstance?.peso)) {
printHtmlPart(14)
invokeTag('message','g',46,['code':("medicion.peso.label"),'default':("Peso")],-1)
printHtmlPart(15)
invokeTag('fieldValue','g',48,['bean':(medicionInstance),'field':("peso")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (medicionInstance?.altura)) {
printHtmlPart(14)
invokeTag('message','g',53,['code':("medicion.altura.label"),'default':("Altura")],-1)
printHtmlPart(15)
invokeTag('fieldValue','g',55,['bean':(medicionInstance),'field':("altura")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (medicionInstance?.pantorrillaMasa)) {
printHtmlPart(14)
invokeTag('message','g',60,['code':("medicion.pantorrillaMasa.label"),'default':("Pantorrilla Masa")],-1)
printHtmlPart(15)
invokeTag('fieldValue','g',62,['bean':(medicionInstance),'field':("pantorrillaMasa")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (medicionInstance?.pantorrillaPliegue)) {
printHtmlPart(14)
invokeTag('message','g',67,['code':("medicion.pantorrillaPliegue.label"),'default':("Pantorrilla Pliegue")],-1)
printHtmlPart(15)
invokeTag('fieldValue','g',69,['bean':(medicionInstance),'field':("pantorrillaPliegue")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (medicionInstance?.musloMasa)) {
printHtmlPart(14)
invokeTag('message','g',74,['code':("medicion.musloMasa.label"),'default':("Muslo Masa")],-1)
printHtmlPart(15)
invokeTag('fieldValue','g',76,['bean':(medicionInstance),'field':("musloMasa")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (medicionInstance?.musloPliegue)) {
printHtmlPart(14)
invokeTag('message','g',81,['code':("medicion.musloPliegue.label"),'default':("Muslo Pliegue")],-1)
printHtmlPart(15)
invokeTag('fieldValue','g',83,['bean':(medicionInstance),'field':("musloPliegue")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (medicionInstance?.cinturaMasa)) {
printHtmlPart(14)
invokeTag('message','g',88,['code':("medicion.cinturaMasa.label"),'default':("Cintura Masa")],-1)
printHtmlPart(15)
invokeTag('fieldValue','g',90,['bean':(medicionInstance),'field':("cinturaMasa")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (medicionInstance?.cinturaPliegue)) {
printHtmlPart(14)
invokeTag('message','g',95,['code':("medicion.cinturaPliegue.label"),'default':("Cintura Pliegue")],-1)
printHtmlPart(15)
invokeTag('fieldValue','g',97,['bean':(medicionInstance),'field':("cinturaPliegue")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (medicionInstance?.caderaMasa)) {
printHtmlPart(14)
invokeTag('message','g',102,['code':("medicion.caderaMasa.label"),'default':("Cadera Masa")],-1)
printHtmlPart(15)
invokeTag('fieldValue','g',104,['bean':(medicionInstance),'field':("caderaMasa")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (medicionInstance?.caderaPliegue)) {
printHtmlPart(14)
invokeTag('message','g',109,['code':("medicion.caderaPliegue.label"),'default':("Cadera Pliegue")],-1)
printHtmlPart(15)
invokeTag('fieldValue','g',111,['bean':(medicionInstance),'field':("caderaPliegue")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (medicionInstance?.pechoMasa)) {
printHtmlPart(14)
invokeTag('message','g',116,['code':("medicion.pechoMasa.label"),'default':("Pecho Masa")],-1)
printHtmlPart(15)
invokeTag('fieldValue','g',118,['bean':(medicionInstance),'field':("pechoMasa")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (medicionInstance?.pechoPliegue)) {
printHtmlPart(14)
invokeTag('message','g',123,['code':("medicion.pechoPliegue.label"),'default':("Pecho Pliegue")],-1)
printHtmlPart(15)
invokeTag('fieldValue','g',125,['bean':(medicionInstance),'field':("pechoPliegue")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (medicionInstance?.brazoMasa)) {
printHtmlPart(14)
invokeTag('message','g',130,['code':("medicion.brazoMasa.label"),'default':("Brazo Masa")],-1)
printHtmlPart(15)
invokeTag('fieldValue','g',132,['bean':(medicionInstance),'field':("brazoMasa")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (medicionInstance?.brazoPliegue)) {
printHtmlPart(14)
invokeTag('message','g',137,['code':("medicion.brazoPliegue.label"),'default':("Brazo Pliegue")],-1)
printHtmlPart(15)
invokeTag('fieldValue','g',139,['bean':(medicionInstance),'field':("brazoPliegue")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (medicionInstance?.fechaMedicion)) {
printHtmlPart(14)
invokeTag('message','g',144,['code':("medicion.fechaMedicion.label"),'default':("Fecha Medicion")],-1)
printHtmlPart(15)
invokeTag('formatDate','g',146,['date':(medicionInstance?.fechaMedicion)],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (medicionInstance?.socio)) {
printHtmlPart(14)
invokeTag('message','g',151,['code':("medicion.socio.label"),'default':("Socio")],-1)
printHtmlPart(15)
createTagBody(3, {->
expressionOut.print(medicionInstance?.socio?.encodeAsHTML())
})
invokeTag('link','g',153,['controller':("socio"),'action':("show"),'id':(medicionInstance?.socio?.id)],3)
printHtmlPart(16)
}
printHtmlPart(18)
createTagBody(2, {->
printHtmlPart(19)
invokeTag('hiddenField','g',160,['name':("id"),'value':(medicionInstance?.id)],-1)
printHtmlPart(20)
createTagBody(3, {->
printHtmlPart(21)
invokeTag('message','g',164,['code':("default.button.edit.label"),'default':("Edit")],-1)
printHtmlPart(22)
})
invokeTag('link','g',165,['class':("btn"),'action':("edit"),'id':(medicionInstance?.id)],3)
printHtmlPart(23)
invokeTag('message','g',168,['code':("default.button.delete.label"),'default':("Delete")],-1)
printHtmlPart(24)
})
invokeTag('form','g',171,[:],2)
printHtmlPart(25)
})
invokeTag('captureBody','sitemesh',176,[:],1)
printHtmlPart(26)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1407791968000L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'none'
public static final String TAGLIB_CODEC = 'none'
}
