package global

class Medicion {
	float peso
	float altura
	float pantorrillaMasa
	float pantorrillaPliegue
	float musloMasa
	float musloPliegue
	float cinturaMasa
	float cinturaPliegue
	float caderaMasa
	float caderaPliegue
	float pechoMasa
	float pechoPliegue
	float brazoMasa
	float brazoPliegue
	Date fechaMedicion
	Socio socio
	
	static constraints = {
		peso nullable: true
		altura nullable: true
		pantorrillaMasa nullable: true
		pantorrillaPliegue nullable: true
		musloMasa nullable: true
		musloPliegue nullable:true
		cinturaMasa nullable:true
		cinturaPliegue nullable:true
		caderaMasa nullable:true
		caderaPliegue nullable:true
		pechoMasa nullable:true
		pechoPliegue nullable:true
		brazoMasa nullable:true
		brazoPliegue nullable:true
		fechaMedicion nullable:false
		socio nullable:false
	}

}
