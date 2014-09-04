package global



import grails.test.mixin.*
import spock.lang.*

@TestFor(MensualidadController)
@Mock(Mensualidad)
class MensualidadControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.mensualidadInstanceList
            model.mensualidadInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.mensualidadInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            def mensualidad = new Mensualidad()
            mensualidad.validate()
            controller.save(mensualidad)

        then:"The create view is rendered again with the correct model"
            model.mensualidadInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            mensualidad = new Mensualidad(params)

            controller.save(mensualidad)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/mensualidad/show/1'
            controller.flash.message != null
            Mensualidad.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def mensualidad = new Mensualidad(params)
            controller.show(mensualidad)

        then:"A model is populated containing the domain instance"
            model.mensualidadInstance == mensualidad
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def mensualidad = new Mensualidad(params)
            controller.edit(mensualidad)

        then:"A model is populated containing the domain instance"
            model.mensualidadInstance == mensualidad
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/mensualidad/index'
            flash.message != null


        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def mensualidad = new Mensualidad()
            mensualidad.validate()
            controller.update(mensualidad)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.mensualidadInstance == mensualidad

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            mensualidad = new Mensualidad(params).save(flush: true)
            controller.update(mensualidad)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/mensualidad/show/$mensualidad.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            controller.delete(null)

        then:"A 404 is returned"
            response.redirectedUrl == '/mensualidad/index'
            flash.message != null

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def mensualidad = new Mensualidad(params).save(flush: true)

        then:"It exists"
            Mensualidad.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(mensualidad)

        then:"The instance is deleted"
            Mensualidad.count() == 0
            response.redirectedUrl == '/mensualidad/index'
            flash.message != null
    }
}
