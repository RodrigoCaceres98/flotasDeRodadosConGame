import Rodados.*
import Trafic.*
import Pedidos.* 
class Dependencia {
	 var property empleados 
	 var property lista = []
	 const pedidos = []
	 method agregarAFlota(rodado){lista.add(rodado)}
	 method quitarDeFlota(rodado) {lista.remove(rodado)}
	 method pesoTotalDeLaFlota(){return lista.sum({elemento=>elemento.peso()})}
	 method estaBienEquipada(){return lista.size()>= 3 and lista.all({elemento=>elemento.velocidadMaxima()>100})}
	 method capacidadTotalEnColor(color){
	 	const autosDelColor = lista.filter({elemento=>elemento.color() == color})
	 	  return autosDelColor.sum({elemento=>elemento.capacidadDePasajeros()})
	 }
	 method colorDelRodadoMasRapido(){
	 	const autoMasRapido = lista.max({elemento=>elemento.velocidadMaxima()})
	 	  return autoMasRapido.color()
	 }
	 method capacidadTotalDeLaFlota(){return lista.sum({n=>n.capacidadDePasajeros()})}
	 method capacidadFaltante(){return (empleados  - self.capacidadTotalDeLaFlota())}
	 method esGrande(){return empleados>= 40 and lista.size()>= 5}
	 
	 
	 
	 method agregarPedido(pedido){pedidos.add(pedido)}
	 method quitarPedido(pedido){pedidos.remove(pedido)}
	 method totalDePasajerosEnPedidos(){return pedidos.sum({elemento=>elemento.capacidadDePasajeros()})}
	 method puedeSatisfacer(pedido){return lista.any({elemento=>pedido.puedeSatisfacerUnPedido(elemento)})} 
	 method pedidosFrustrados(){
	 	return pedidos.filter({elemento=> not self.puedeSatisfacer(elemento)})} 
	 method colorImcompatibleParaTodos(color){
	 	return pedidos.any({elem=>elem.coloresImcompatibles() == color})
	 		
	 }
	 method acelerar(){pedidos.forEach({elem=>elem.acelerar()})}
	method relajar(){pedidos.forEach({elem=>elem.relajar()})}
}
