package global

class Socio {

    String nombre
	String apellidoPaterno
	String apellidoMaterno
	Date fechaNacimiento
	Date socioDesde
	String sexo
	Membresia tipoMembresia
	String calle
	String ciudad
	Integer codigoPostal 
	Pais pais
	Estado estado
	Boolean notificar
	Usuario usuario
	byte[] fotografia
	static constraints = {
		nombre (nullable: false, blank: false)
		apellidoPaterno (nullable: false, blank: false)
		apellidoMaterno (nullable: false, blank: false)
		fechaNacimiento (nullable: true, blank: true)
		socioDesde (nullable: false, blank: false)
		sexo (nullable: false, blank: false, inList: ['Masculino','Femenino'])
		tipoMembresia (nullable: false, blank: false)
		calle (nullable: true, blank: true)
		ciudad (nullable: true, blank: true)
		codigoPostal (nullable: true, blank: true)
		pais (nullable: true, blank: true)
		estado (nullable: true, blank: true)
		notificar (nullable: false, blank: false)
		usuario (nullable: false, blank: false)
		fotografia (nullable: true,  maxSize:52428800)//5MB
    }

	String toString(){
		id + '-' + nombre + ' ' + apellidoPaterno + ' ' + apellidoMaterno
   }
	static mappings = {
		fotografia type: "blob"
	 }
}
