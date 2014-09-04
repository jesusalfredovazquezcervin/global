package global

class Membresia {

    String nombre
	String descripcion
	float precio
    
	static constraints = {
		nombre (unique: true, nullable: false, blank: false)
		descripcion( nullable: false, blank: false)
		precio(nullable:false, blank:false)
    }
	
	String toString(){
		descripcion
   }
}
