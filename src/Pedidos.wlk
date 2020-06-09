import Rodados.*
class Pedidos {
	var property coloresImcompatibles= []
	var property distanciaARecorer
	var property tiempoMaximo
	var property capacidadDePasajeros
	method velocidadRequerida(){return distanciaARecorer / tiempoMaximo}
	method puedeSatisfacerUnPedido(auto){
		return (auto.velocidadMaxima()-self.velocidadRequerida())>=10 and auto.capacidadDePasajeros() >= capacidadDePasajeros and (coloresImcompatibles.all({elem=>elem != auto.color()}))
	}
	method acelerar(){tiempoMaximo -= 1}
	method relajar(){tiempoMaximo += 1}
}
