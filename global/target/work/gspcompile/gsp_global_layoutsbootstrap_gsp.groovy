import org.codehaus.groovy.grails.web.servlet.GrailsApplicationAttributes
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_global_layoutsbootstrap_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/layouts/bootstrap.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',5,['gsp_sm_xmlClosingForEmptyTag':(""),'charset':("utf-8")],-1)
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',6,['gsp_sm_xmlClosingForEmptyTag':(""),'http-equiv':("Content-Type"),'content':("text/html; charset=UTF-8")],-1)
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',7,['gsp_sm_xmlClosingForEmptyTag':(""),'http-equiv':("X-UA-Compatible"),'content':("IE=edge,chrome=1")],-1)
printHtmlPart(1)
createTagBody(2, {->
createTagBody(3, {->
invokeTag('layoutTitle','g',8,['default':(meta(name: 'app.name'))],-1)
})
invokeTag('captureTitle','sitemesh',8,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',8,[:],2)
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',9,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("description"),'content':("")],-1)
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',10,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("author"),'content':("")],-1)
printHtmlPart(2)
invokeTag('captureMeta','sitemesh',12,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("viewport"),'content':("width=device-width, initial-scale=1.0")],-1)
printHtmlPart(3)
invokeTag('require','r',19,['modules':("scaffolding")],-1)
printHtmlPart(4)
expressionOut.print(resource(dir: 'images', file: 'favicon.ico'))
printHtmlPart(5)
expressionOut.print(resource(dir: 'images', file: 'apple-touch-icon.png'))
printHtmlPart(6)
expressionOut.print(resource(dir: 'images', file: 'apple-touch-icon-retina.png'))
printHtmlPart(7)
invokeTag('layoutHead','g',26,[:],-1)
printHtmlPart(1)
invokeTag('layoutResources','r',27,[:],-1)
printHtmlPart(8)
})
invokeTag('captureHead','sitemesh',28,[:],1)
printHtmlPart(9)
createTagBody(1, {->
printHtmlPart(10)
expressionOut.print(createLink(uri: '/'))
printHtmlPart(11)
out.print(request.forwardURI == "${createLink(uri: '/')}" ? ' class="active"' : '')
printHtmlPart(12)
expressionOut.print(createLink(uri: '/'))
printHtmlPart(13)
for( c in (grailsApplication.controllerClasses.sort { it.fullName }) ) {
printHtmlPart(14)
out.print(c.logicalPropertyName == controllerName ? ' class="active"' : '')
printHtmlPart(15)
createTagBody(3, {->
expressionOut.print(c.naturalName)
})
invokeTag('link','g',47,['controller':(c.logicalPropertyName)],3)
printHtmlPart(16)
}
printHtmlPart(17)
invokeTag('layoutBody','g',56,[:],-1)
printHtmlPart(18)
invokeTag('layoutResources','r',65,[:],-1)
printHtmlPart(9)
})
invokeTag('captureBody','sitemesh',67,[:],1)
printHtmlPart(19)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1407795224000L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'none'
public static final String TAGLIB_CODEC = 'none'
}
