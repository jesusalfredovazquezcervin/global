package global

class Notificacion {

    Date fecha
	Socio socio
	Mensualidad mesNotificado
    static constraints = {
		fecha (nullable: false, blank: false)
		socio (nullable: false, blank: false)
		mesNotificado (nullable: false, blank: false)
    }
}
