import wollok.game.*

class ChevroletCorsa {
	var property image = "autitorojo.png"
	var  property position = game.at(3,3)
    const  posiciones= []
	var property color 
	
    
    
    
  	method capacidadDePasajeros(){
		return 4
	}
	 method transladarTanque(){} 
	method velocidadMaxima(){
   	   return 150
   }
   method peso(){ return 1300}
	method color(){return color }
	method acelerar(){}
	method relajar(){} 
	method cambiarPosicion(x,y){
    	posiciones.add(position)
    	position = game.at(x,y)
    	
    	 }
    method PasoPor(posicion){
    	return posiciones.contains(posicion)
    }
    method pasoPorLaFila(numero){
    	return posiciones.any({posisicon=>position.x() == numero}) 
    }
    method recorrioFilas(listaDeNumeros){
    	 return posiciones.filter({posicion=>posicion.x()}) == listaDeNumeros
    }
    method moverALaDerecha(){
    	self.position(self.position().right(1))
    }
    method moverALaIzquierda(){
    	self.position(self.position().left(1))
    }
    method moverArriba(){
    	self.position(self.position().up(1))
    }
    method moverAbajo(){
    	self.position(self.position().down(1))
    }
}
class RenaultKwid {
    var tieneTanqueAdicional = true 
	method capacidadDePasajeros(){
		  if(tieneTanqueAdicional){ return 3} else{ return 4}
	}
	method transladarTanque(){
		tieneTanqueAdicional = not tieneTanqueAdicional
	}   
   method velocidadMaxima(){
   	 if(tieneTanqueAdicional){ return 120} else{ return 110}
   }
   method peso(){ if(tieneTanqueAdicional){ return 1350} else{ return 1200}}
   method color(){return "Azul" }
   method acelerar(){}
   method relajar(){}
}
class AutosEspeciales {
   var property capacidadDePasajeros
   var property velocidadMaxima 
   var property  peso  
   var property color 
   method capacidadDePasajeros(){return capacidadDePasajeros}
   method transladarTanque(){}   
   method velocidadMaxima(){return velocidadMaxima}
   method peso(){return peso}
   method color(){return color}
   method acelerar(){}
   method relajar(){}
} 
