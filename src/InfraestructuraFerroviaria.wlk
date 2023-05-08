
class VagonDePasajeros{
	var ancho = 0
	var largo = 0
	var tieneBanios = false
	var estaOrdenado = false
	
	method ordenarBanio() {estaOrdenado = true}
	
	method capacidadBase() = largo * if (ancho <= 3) 8 else 10	
	
	method capacidadPorOrden() = if (estaOrdenado) 0 else 15 
	
	method capacidadTotalPasajeros() = self.capacidadBase() - self.capacidadPorOrden() 
	
	method cargaMaxima() = if (tieneBanios) 300 else 800
	
	method pesoMaximo() = 2000 +  self.cargaMaxima() + (self.capacidadTotalPasajeros() * 80 )    
}

