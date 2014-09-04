import global.Usuario
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_global_usuarioshow_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/usuario/show.gsp" }
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
invokeTag('set','g',7,['var':("entityName"),'value':(message(code: 'usuario.label', default: 'Usuario'))],-1)
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
if(true && (usuarioInstance?.username)) {
printHtmlPart(14)
invokeTag('message','g',46,['code':("usuario.username.label"),'default':("Username")],-1)
printHtmlPart(15)
invokeTag('fieldValue','g',48,['bean':(usuarioInstance),'field':("username")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (usuarioInstance?.password)) {
printHtmlPart(14)
invokeTag('message','g',53,['code':("usuario.password.label"),'default':("Password")],-1)
printHtmlPart(15)
invokeTag('fieldValue','g',55,['bean':(usuarioInstance),'field':("password")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (usuarioInstance?.email)) {
printHtmlPart(14)
invokeTag('message','g',60,['code':("usuario.email.label"),'default':("Email")],-1)
printHtmlPart(15)
invokeTag('fieldValue','g',62,['bean':(usuarioInstance),'field':("email")],-1)
printHtmlPart(16)
}
printHtmlPart(18)
createTagBody(2, {->
printHtmlPart(19)
invokeTag('hiddenField','g',69,['name':("id"),'value':(usuarioInstance?.id)],-1)
printHtmlPart(20)
createTagBody(3, {->
printHtmlPart(21)
invokeTag('message','g',73,['code':("default.button.edit.label"),'default':("Edit")],-1)
printHtmlPart(22)
})
invokeTag('link','g',74,['class':("btn"),'action':("edit"),'id':(usuarioInstance?.id)],3)
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
public static final long LAST_MODIFIED = 1407789376000L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'none'
public static final String TAGLIB_CODEC = 'none'
}
