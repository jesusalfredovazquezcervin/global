package global

class Usuario {
	String username
	String password
	String email
	static constraints = {
		username(nullable: false, blank: false, unique: true)
		password(nullable: false, blank: false, password:true)
		email(nullable: false,unique: false,email: true, blank: false)
	}
	
	String toString(){
		 username 
	}
}