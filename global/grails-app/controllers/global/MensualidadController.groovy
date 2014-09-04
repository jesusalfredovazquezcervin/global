package global

import org.springframework.dao.DataIntegrityViolationException

class MensualidadController {

    static allowedMethods = [create: ['GET', 'POST'], edit: ['GET', 'POST'], delete: 'POST']

    def index() {
        redirect action: 'list', params: params
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [mensualidadInstanceList: Mensualidad.list(params), mensualidadInstanceTotal: Mensualidad.count()]
    }

    def create() {
		switch (request.method) {
		case 'GET':
        	[mensualidadInstance: new Mensualidad(params)]
			break
		case 'POST':
	        def mensualidadInstance = new Mensualidad(params)
	        if (!mensualidadInstance.save(flush: true)) {
	            render view: 'create', model: [mensualidadInstance: mensualidadInstance]
	            return
	        }

			flash.message = message(code: 'default.created.message', args: [message(code: 'mensualidad.label', default: 'Mensualidad'), mensualidadInstance.id])
	        redirect action: 'show', id: mensualidadInstance.id
			break
		}
    }

    def show() {
        def mensualidadInstance = Mensualidad.get(params.id)
        if (!mensualidadInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'mensualidad.label', default: 'Mensualidad'), params.id])
            redirect action: 'list'
            return
        }

        [mensualidadInstance: mensualidadInstance]
    }

    def edit() {
		switch (request.method) {
		case 'GET':
	        def mensualidadInstance = Mensualidad.get(params.id)
	        if (!mensualidadInstance) {
	            flash.message = message(code: 'default.not.found.message', args: [message(code: 'mensualidad.label', default: 'Mensualidad'), params.id])
	            redirect action: 'list'
	            return
	        }

	        [mensualidadInstance: mensualidadInstance]
			break
		case 'POST':
	        def mensualidadInstance = Mensualidad.get(params.id)
	        if (!mensualidadInstance) {
	            flash.message = message(code: 'default.not.found.message', args: [message(code: 'mensualidad.label', default: 'Mensualidad'), params.id])
	            redirect action: 'list'
	            return
	        }

	        if (params.version) {
	            def version = params.version.toLong()
	            if (mensualidadInstance.version > version) {
	                mensualidadInstance.errors.rejectValue('version', 'default.optimistic.locking.failure',
	                          [message(code: 'mensualidad.label', default: 'Mensualidad')] as Object[],
	                          "Another user has updated this Mensualidad while you were editing")
	                render view: 'edit', model: [mensualidadInstance: mensualidadInstance]
	                return
	            }
	        }

	        mensualidadInstance.properties = params

	        if (!mensualidadInstance.save(flush: true)) {
	            render view: 'edit', model: [mensualidadInstance: mensualidadInstance]
	            return
	        }

			flash.message = message(code: 'default.updated.message', args: [message(code: 'mensualidad.label', default: 'Mensualidad'), mensualidadInstance.id])
	        redirect action: 'show', id: mensualidadInstance.id
			break
		}
    }

    def delete() {
        def mensualidadInstance = Mensualidad.get(params.id)
        if (!mensualidadInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'mensualidad.label', default: 'Mensualidad'), params.id])
            redirect action: 'list'
            return
        }

        try {
            mensualidadInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'mensualidad.label', default: 'Mensualidad'), params.id])
            redirect action: 'list'
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'mensualidad.label', default: 'Mensualidad'), params.id])
            redirect action: 'show', id: params.id
        }
    }
}
