import global.Socio
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_global_socioshow_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/socio/show.gsp" }
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
invokeTag('set','g',7,['var':("entityName"),'value':(message(code: 'socio.label', default: 'Socio'))],-1)
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
if(true && (socioInstance?.nombre)) {
printHtmlPart(14)
invokeTag('message','g',46,['code':("socio.nombre.label"),'default':("Nombre")],-1)
printHtmlPart(15)
invokeTag('fieldValue','g',48,['bean':(socioInstance),'field':("nombre")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (socioInstance?.apellidoPaterno)) {
printHtmlPart(14)
invokeTag('message','g',53,['code':("socio.apellidoPaterno.label"),'default':("Apellido Paterno")],-1)
printHtmlPart(15)
invokeTag('fieldValue','g',55,['bean':(socioInstance),'field':("apellidoPaterno")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (socioInstance?.apellidoMaterno)) {
printHtmlPart(14)
invokeTag('message','g',60,['code':("socio.apellidoMaterno.label"),'default':("Apellido Materno")],-1)
printHtmlPart(15)
invokeTag('fieldValue','g',62,['bean':(socioInstance),'field':("apellidoMaterno")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (socioInstance?.fechaNacimiento)) {
printHtmlPart(14)
invokeTag('message','g',67,['code':("socio.fechaNacimiento.label"),'default':("Fecha Nacimiento")],-1)
printHtmlPart(15)
invokeTag('formatDate','g',69,['date':(socioInstance?.fechaNacimiento)],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (socioInstance?.socioDesde)) {
printHtmlPart(14)
invokeTag('message','g',74,['code':("socio.socioDesde.label"),'default':("Socio Desde")],-1)
printHtmlPart(15)
invokeTag('formatDate','g',76,['date':(socioInstance?.socioDesde)],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (socioInstance?.sexo)) {
printHtmlPart(14)
invokeTag('message','g',81,['code':("socio.sexo.label"),'default':("Sexo")],-1)
printHtmlPart(15)
invokeTag('fieldValue','g',83,['bean':(socioInstance),'field':("sexo")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (socioInstance?.tipoMembresia)) {
printHtmlPart(14)
invokeTag('message','g',88,['code':("socio.tipoMembresia.label"),'default':("Tipo Membresia")],-1)
printHtmlPart(15)
createTagBody(3, {->
expressionOut.print(socioInstance?.tipoMembresia?.encodeAsHTML())
})
invokeTag('link','g',90,['controller':("membresia"),'action':("show"),'id':(socioInstance?.tipoMembresia?.id)],3)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (socioInstance?.calle)) {
printHtmlPart(14)
invokeTag('message','g',95,['code':("socio.calle.label"),'default':("Calle")],-1)
printHtmlPart(15)
invokeTag('fieldValue','g',97,['bean':(socioInstance),'field':("calle")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (socioInstance?.ciudad)) {
printHtmlPart(14)
invokeTag('message','g',102,['code':("socio.ciudad.label"),'default':("Ciudad")],-1)
printHtmlPart(15)
invokeTag('fieldValue','g',104,['bean':(socioInstance),'field':("ciudad")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (socioInstance?.codigoPostal)) {
printHtmlPart(14)
invokeTag('message','g',109,['code':("socio.codigoPostal.label"),'default':("Codigo Postal")],-1)
printHtmlPart(15)
invokeTag('fieldValue','g',111,['bean':(socioInstance),'field':("codigoPostal")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (socioInstance?.pais)) {
printHtmlPart(14)
invokeTag('message','g',116,['code':("socio.pais.label"),'default':("Pais")],-1)
printHtmlPart(15)
createTagBody(3, {->
expressionOut.print(socioInstance?.pais?.encodeAsHTML())
})
invokeTag('link','g',118,['controller':("pais"),'action':("show"),'id':(socioInstance?.pais?.id)],3)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (socioInstance?.estado)) {
printHtmlPart(14)
invokeTag('message','g',123,['code':("socio.estado.label"),'default':("Estado")],-1)
printHtmlPart(15)
createTagBody(3, {->
expressionOut.print(socioInstance?.estado?.encodeAsHTML())
})
invokeTag('link','g',125,['controller':("estado"),'action':("show"),'id':(socioInstance?.estado?.id)],3)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (socioInstance?.notificar)) {
printHtmlPart(14)
invokeTag('message','g',130,['code':("socio.notificar.label"),'default':("Notificar")],-1)
printHtmlPart(15)
invokeTag('formatBoolean','g',132,['boolean':(socioInstance?.notificar)],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (socioInstance?.usuario)) {
printHtmlPart(14)
invokeTag('message','g',137,['code':("socio.usuario.label"),'default':("Usuario")],-1)
printHtmlPart(15)
createTagBody(3, {->
expressionOut.print(socioInstance?.usuario?.encodeAsHTML())
})
invokeTag('link','g',139,['controller':("usuario"),'action':("show"),'id':(socioInstance?.usuario?.id)],3)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (socioInstance?.fotografia)) {
printHtmlPart(14)
invokeTag('message','g',144,['code':("socio.fotografia.label"),'default':("Fotografia")],-1)
printHtmlPart(18)
}
printHtmlPart(19)
createTagBody(2, {->
printHtmlPart(20)
invokeTag('hiddenField','g',151,['name':("id"),'value':(socioInstance?.id)],-1)
printHtmlPart(21)
createTagBody(3, {->
printHtmlPart(22)
invokeTag('message','g',155,['code':("default.button.edit.label"),'default':("Edit")],-1)
printHtmlPart(23)
})
invokeTag('link','g',156,['class':("btn"),'action':("edit"),'id':(socioInstance?.id)],3)
printHtmlPart(24)
invokeTag('message','g',159,['code':("default.button.delete.label"),'default':("Delete")],-1)
printHtmlPart(25)
})
invokeTag('form','g',162,[:],2)
printHtmlPart(26)
})
invokeTag('captureBody','sitemesh',167,[:],1)
printHtmlPart(27)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1407793867000L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'none'
public static final String TAGLIB_CODEC = 'none'
}
