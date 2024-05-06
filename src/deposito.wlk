import antiguedades.*

object deposito {
	const stock = [antiguedad, antiguedad2, antiguedad3]
	
	method inventario() = stock
	
	method ingresar(unArticulo){
		stock.add(unArticulo)
	}
	method ingresarLote(unLote){
		stock.addAll(unLote)
	}
	method hayEnStock(unArticulo) = self.inventario().contains(unArticulo)
	
	method cantidadDeAntiguedadesEnStock()= self.inventario().size()
	
	method ultimoIngreso() = self.inventario().last()
	
	method esMuyAntigua(unArticulo) = self.inventario().find({art => art == unArticulo}).esMuyAntiguo()
	
	method tomarArticuloNumero(unaPosicion) = self.inventario().get(unaPosicion)
	
	method antiguedadDelArticuloNumero(unaPosicion) = self.tomarArticuloNumero(unaPosicion).antiguedad()
	
	method restaurarAntiguedadNumero(unaPosicion){
		self.tomarArticuloNumero(unaPosicion).restaurar()
	}
	
	method restaurarPrimeraAntiguedadAdquirida(){
		self.inventario().first().restaurar()
	}
	method restaurarUltimaAntiguedadAdquirida(){
		self.ultimoIngreso().restaurar()
	}
	method restaurarAntiguedadSiEsNecesario(unaAntiguedad){
		if (not unaAntiguedad.estadoBueno()){unaAntiguedad.restaurar()}
	}
	method restaurarAntiguedadEnStockSiEsNecesario(unaAntiguedad){
		self.inventario().find({art => art == unaAntiguedad and not art.estadoBueno()}).restaurar()
	}
	method venderTodo(){
		stock.removeAll(stock)
	}
	
}
