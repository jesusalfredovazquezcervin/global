package global

import org.springframework.dao.DataIntegrityViolationException

class MedicionController {

    static allowedMethods = [create: ['GET', 'POST'], edit: ['GET', 'POST'], delete: 'POST']

    def index() {
        redirect action: 'list', params: params
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [medicionInstanceList: Medicion.list(params), medicionInstanceTotal: Medicion.count()]
    }

    def create() {
		switch (request.method) {
		case 'GET':
        	[medicionInstance: new Medicion(params)]
			break
		case 'POST':
	        def medicionInstance = new Medicion(params)
	        if (!medicionInstance.save(flush: true)) {
	            render view: 'create', model: [medicionInstance: medicionInstance]
	            return
	        }

			flash.message = message(code: 'default.created.message', args: [message(code: 'medicion.label', default: 'Medicion'), medicionInstance.id])
	        redirect action: 'show', id: medicionInstance.id
			break
		}
    }

    def show() {
        def medicionInstance = Medicion.get(params.id)
        if (!medicionInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'medicion.label', default: 'Medicion'), params.id])
            redirect action: 'list'
            return
        }

        [medicionInstance: medicionInstance]
    }

    def edit() {
		switch (request.method) {
		case 'GET':
	        def medicionInstance = Medicion.get(params.id)
	        if (!medicionInstance) {
	            flash.message = message(code: 'default.not.found.message', args: [message(code: 'medicion.label', default: 'Medicion'), params.id])
	            redirect action: 'list'
	            return
	        }

	        [medicionInstance: medicionInstance]
			break
		case 'POST':
	        def medicionInstance = Medicion.get(params.id)
	        if (!medicionInstance) {
	            flash.message = message(code: 'default.not.found.message', args: [message(code: 'medicion.label', default: 'Medicion'), params.id])
	            redirect action: 'list'
	            return
	        }

	        if (params.version) {
	            def version = params.version.toLong()
	            if (medicionInstance.version > version) {
	                medicionInstance.errors.rejectValue('version', 'default.optimistic.locking.failure',
	                          [message(code: 'medicion.label', default: 'Medicion')] as Object[],
	                          "Another user has updated this Medicion while you were editing")
	                render view: 'edit', model: [medicionInstance: medicionInstance]
	                return
	            }
	        }

	        medicionInstance.properties = params

	        if (!medicionInstance.save(flush: true)) {
	            render view: 'edit', model: [medicionInstance: medicionInstance]
	            return
	        }

			flash.message = message(code: 'default.updated.message', args: [message(code: 'medicion.label', default: 'Medicion'), medicionInstance.id])
	        redirect action: 'show', id: medicionInstance.id
			break
		}
    }

    def delete() {
        def medicionInstance = Medicion.get(params.id)
        if (!medicionInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'medicion.label', default: 'Medicion'), params.id])
            redirect action: 'list'
            return
        }

        try {
            medicionInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'medicion.label', default: 'Medicion'), params.id])
            redirect action: 'list'
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'medicion.label', default: 'Medicion'), params.id])
            redirect action: 'show', id: params.id
        }
    }
}
