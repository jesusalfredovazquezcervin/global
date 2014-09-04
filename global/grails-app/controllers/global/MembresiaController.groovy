package global

import org.springframework.dao.DataIntegrityViolationException

class MembresiaController {

    static allowedMethods = [create: ['GET', 'POST'], edit: ['GET', 'POST'], delete: 'POST']

    def index() {
        redirect action: 'list', params: params
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [membresiaInstanceList: Membresia.list(params), membresiaInstanceTotal: Membresia.count()]
    }

    def create() {
		switch (request.method) {
		case 'GET':
        	[membresiaInstance: new Membresia(params)]
			break
		case 'POST':
	        def membresiaInstance = new Membresia(params)
	        if (!membresiaInstance.save(flush: true)) {
	            render view: 'create', model: [membresiaInstance: membresiaInstance]
	            return
	        }

			flash.message = message(code: 'default.created.message', args: [message(code: 'membresia.label', default: 'Membresia'), membresiaInstance.id])
	        redirect action: 'show', id: membresiaInstance.id
			break
		}
    }

    def show() {
        def membresiaInstance = Membresia.get(params.id)
        if (!membresiaInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'membresia.label', default: 'Membresia'), params.id])
            redirect action: 'list'
            return
        }

        [membresiaInstance: membresiaInstance]
    }

    def edit() {
		switch (request.method) {
		case 'GET':
	        def membresiaInstance = Membresia.get(params.id)
	        if (!membresiaInstance) {
	            flash.message = message(code: 'default.not.found.message', args: [message(code: 'membresia.label', default: 'Membresia'), params.id])
	            redirect action: 'list'
	            return
	        }

	        [membresiaInstance: membresiaInstance]
			break
		case 'POST':
	        def membresiaInstance = Membresia.get(params.id)
	        if (!membresiaInstance) {
	            flash.message = message(code: 'default.not.found.message', args: [message(code: 'membresia.label', default: 'Membresia'), params.id])
	            redirect action: 'list'
	            return
	        }

	        if (params.version) {
	            def version = params.version.toLong()
	            if (membresiaInstance.version > version) {
	                membresiaInstance.errors.rejectValue('version', 'default.optimistic.locking.failure',
	                          [message(code: 'membresia.label', default: 'Membresia')] as Object[],
	                          "Another user has updated this Membresia while you were editing")
	                render view: 'edit', model: [membresiaInstance: membresiaInstance]
	                return
	            }
	        }

	        membresiaInstance.properties = params

	        if (!membresiaInstance.save(flush: true)) {
	            render view: 'edit', model: [membresiaInstance: membresiaInstance]
	            return
	        }

			flash.message = message(code: 'default.updated.message', args: [message(code: 'membresia.label', default: 'Membresia'), membresiaInstance.id])
	        redirect action: 'show', id: membresiaInstance.id
			break
		}
    }

    def delete() {
        def membresiaInstance = Membresia.get(params.id)
        if (!membresiaInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'membresia.label', default: 'Membresia'), params.id])
            redirect action: 'list'
            return
        }

        try {
            membresiaInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'membresia.label', default: 'Membresia'), params.id])
            redirect action: 'list'
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'membresia.label', default: 'Membresia'), params.id])
            redirect action: 'show', id: params.id
        }
    }
}
