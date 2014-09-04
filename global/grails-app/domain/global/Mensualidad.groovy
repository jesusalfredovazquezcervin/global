package global

class Mensualidad {

    Date fechaInicio
	Date fechaFin
	Date fechaPago
	Socio socio
	String concepto
	
    static constraints = {
		fechaInicio (nullable: false, blank: false)
		fechaFin (nullable: false, blank: false)
		socio (nullable: false, blank: false)
    }
}
