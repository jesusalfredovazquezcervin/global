package global

import org.springframework.dao.DataIntegrityViolationException

class SocioController {

    static allowedMethods = [create: ['GET', 'POST'], edit: ['GET', 'POST'], delete: 'POST']

    def index() {
        redirect action: 'list', params: params
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [socioInstanceList: Socio.list(params), socioInstanceTotal: Socio.count()]
    }

    def create() {
		switch (request.method) {
		case 'GET':
        	[socioInstance: new Socio(params)]
			break
		case 'POST':
	        def socioInstance = new Socio(params)
	        if (!socioInstance.save(flush: true)) {
	            render view: 'create', model: [socioInstance: socioInstance]
	            return
	        }

			flash.message = message(code: 'default.created.message', args: [message(code: 'socio.label', default: 'Socio'), socioInstance.id])
	        redirect action: 'show', id: socioInstance.id
			break
		}
    }

    def show() {
        def socioInstance = Socio.get(params.id)
        if (!socioInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'socio.label', default: 'Socio'), params.id])
            redirect action: 'list'
            return
        }

        [socioInstance: socioInstance]
    }

    def edit() {
		switch (request.method) {
		case 'GET':
	        def socioInstance = Socio.get(params.id)
	        if (!socioInstance) {
	            flash.message = message(code: 'default.not.found.message', args: [message(code: 'socio.label', default: 'Socio'), params.id])
	            redirect action: 'list'
	            return
	        }

	        [socioInstance: socioInstance]
			break
		case 'POST':
	        def socioInstance = Socio.get(params.id)
	        if (!socioInstance) {
	            flash.message = message(code: 'default.not.found.message', args: [message(code: 'socio.label', default: 'Socio'), params.id])
	            redirect action: 'list'
	            return
	        }

	        if (params.version) {
	            def version = params.version.toLong()
	            if (socioInstance.version > version) {
	                socioInstance.errors.rejectValue('version', 'default.optimistic.locking.failure',
	                          [message(code: 'socio.label', default: 'Socio')] as Object[],
	                          "Another user has updated this Socio while you were editing")
	                render view: 'edit', model: [socioInstance: socioInstance]
	                return
	            }
	        }

	        socioInstance.properties = params

	        if (!socioInstance.save(flush: true)) {
	            render view: 'edit', model: [socioInstance: socioInstance]
	            return
	        }

			flash.message = message(code: 'default.updated.message', args: [message(code: 'socio.label', default: 'Socio'), socioInstance.id])
	        redirect action: 'show', id: socioInstance.id
			break
		}
    }

    def delete() {
        def socioInstance = Socio.get(params.id)
        if (!socioInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'socio.label', default: 'Socio'), params.id])
            redirect action: 'list'
            return
        }

        try {
            socioInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'socio.label', default: 'Socio'), params.id])
            redirect action: 'list'
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'socio.label', default: 'Socio'), params.id])
            redirect action: 'show', id: params.id
        }
    }
}
