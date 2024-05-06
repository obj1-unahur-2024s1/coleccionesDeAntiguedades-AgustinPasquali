object antiguedad {
	var estadoBueno = true
	var antiguedad = 150 
	var fueRestaurada = false

	method esMuyAntiguo() = antiguedad > 100
	method antiguedad() = antiguedad	
	method restaurar(){
		fueRestaurada = true
		estadoBueno = true
	}
	method estadoBueno()= estadoBueno
}

object antiguedad2 {
	var estadoBueno = false
	var antiguedad = 50 
	var fueRestaurada = false

	method esMuyAntiguo() = antiguedad > 100
	method antiguedad() = antiguedad	
	method restaurar(){
		fueRestaurada = true
		estadoBueno = true
	}
	method estadoBueno()= estadoBueno
}

object antiguedad3 {
	var estadoBueno = true
	var antiguedad = 100 
	var fueRestaurada = true

	method esMuyAntiguo() = antiguedad > 100
	method antiguedad() = antiguedad
	method restaurar(){
		fueRestaurada = true
		estadoBueno = true
	}
	method estadoBueno()= estadoBueno

}