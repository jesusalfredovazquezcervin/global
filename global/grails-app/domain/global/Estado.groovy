package global

class Estado {

    String clave
	String estado
    static constraints = {
		clave (unique: true, nullable: false)
		estado (unique: true, nullable: false)
    }
	
	String toString(){
		estado
   }
}
