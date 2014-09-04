package global

class Pais {
    String clave
	String nombre
    static constraints = {
		clave (unique: true)
		nombre (nullable: false)	
    }
	
	String toString(){
		nombre
   }
}
