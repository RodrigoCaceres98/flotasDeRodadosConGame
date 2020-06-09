object trafic {
	var property motor
	var property interior
	
	method capacidadDePasajeros(){
		return interior.capacidadDePasajeros()	
	}
	method velocidadMaxima(){
		return motor.velocidadMaxima()
	}
	method peso(){
		return 4000 + interior.peso() + motor.peso()
	}
	method color(){return "Blanco"}
	method transladarTanque(){}
	
}
object motorPulenta{
	
	method velocidadMaxima(){
		return 130
	}
	method peso(){
		return 800
	}  
	
}
		
object motorBataton{
	method velocidadMaxima(){
		return 80
	}
	method peso(){
		return 500
	}  

}

object interiorPopular{
	method capacidadDePasajeros(){
		return 12
	}
	method peso(){
		return 1000
	}  
			
}

object interioComodo{
	method cantidadDePasajeros(){
		return 5
	}
	method peso(){
		return 700
	}  
	
}