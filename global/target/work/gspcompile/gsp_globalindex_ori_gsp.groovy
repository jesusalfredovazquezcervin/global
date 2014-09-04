import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_globalindex_ori_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/index_ori.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',4,['gsp_sm_xmlClosingForEmptyTag':("/"),'name':("layout"),'content':("bootstrap")],-1)
printHtmlPart(1)
createTagBody(2, {->
createClosureForHtmlPart(2, 3)
invokeTag('captureTitle','sitemesh',5,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',5,[:],2)
printHtmlPart(3)
})
invokeTag('captureHead','sitemesh',6,[:],1)
printHtmlPart(4)
createTagBody(1, {->
printHtmlPart(5)
invokeTag('meta','g',14,['name':("app.version")],-1)
printHtmlPart(6)
invokeTag('meta','g',15,['name':("app.grails.version")],-1)
printHtmlPart(7)
expressionOut.print(groovy.lang.GroovySystem.getVersion())
printHtmlPart(8)
expressionOut.print(System.getProperty('java.version'))
printHtmlPart(9)
expressionOut.print(grailsApplication.controllerClasses.size())
printHtmlPart(10)
expressionOut.print(grailsApplication.domainClasses.size())
printHtmlPart(11)
expressionOut.print(grailsApplication.serviceClasses.size())
printHtmlPart(12)
expressionOut.print(grailsApplication.tagLibClasses.size())
printHtmlPart(13)
for( plugin in (applicationContext.getBean('pluginManager').allPlugins) ) {
printHtmlPart(14)
expressionOut.print(plugin.name)
printHtmlPart(15)
expressionOut.print(plugin.version)
printHtmlPart(16)
}
printHtmlPart(17)
for( c in (grailsApplication.controllerClasses.sort { it.fullName }) ) {
printHtmlPart(18)
createTagBody(3, {->
expressionOut.print(c.naturalName)
})
invokeTag('link','g',54,['controller':(c.logicalPropertyName)],3)
printHtmlPart(19)
}
printHtmlPart(20)
expressionOut.print(applicationContext.getBean('pluginManager').getGrailsPlugin('twitter-bootstrap').version)
printHtmlPart(21)
expressionOut.print(applicationContext.getBean('pluginManager').getGrailsPlugin('fields').version)
printHtmlPart(22)
})
invokeTag('captureBody','sitemesh',86,[:],1)
printHtmlPart(23)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1368501450000L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'none'
public static final String TAGLIB_CODEC = 'none'
}
