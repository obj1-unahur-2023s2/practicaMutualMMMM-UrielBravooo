class Viaje{
	var idioma = []
	
	method esViajeInteresante()= idioma.size() > 1
	
	method idioma() = idioma
	method cantDeDias() 
	method esfuerzo() 
	method sirveBroncearse()
	method recomendadaParaSocio(socio)= socio.leAtraeActividad(self) and self.esViajeInteresante() and not socio.actQueRealizo().contains(self)
}
class ViajeDePlaya inherits Viaje{
	var largo

	method largo() = largo
	override method cantDeDias() = largo/ 500 
	override method esfuerzo() =  largo > 1200
	override method sirveBroncearse()= true
}
class ExcursionACiudad inherits Viaje{
	var cantAtraccionesAVisitar
	
	override method esViajeInteresante()= super() or cantAtraccionesAVisitar==5
	override method cantDeDias() = cantAtraccionesAVisitar / 2
	override method esfuerzo() = cantAtraccionesAVisitar.between(5,8)
	override method sirveBroncearse()= false	
}
class  ExcursionesACiudadTropical inherits ExcursionACiudad{
	override method cantDeDias() = super() + 1
	override method sirveBroncearse() = true
}
class SalidaDeTrekking inherits Viaje{
	var kilometrosDeSenderos
	var diasDeSol
	override method esViajeInteresante()= super() and diasDeSol > 140
	
	override method cantDeDias() = kilometrosDeSenderos / 50
	override method esfuerzo() = kilometrosDeSenderos> 80
	override method sirveBroncearse() = diasDeSol > 200 or (diasDeSol.between(100,200)) and kilometrosDeSenderos > 120	
}
class ClaseDeGym inherits Viaje {
	override method recomendadaParaSocio(socio)= socio.edad().between(20,30)
	
	override method idioma() = "español"
	override method cantDeDias() = 1
	override method esfuerzo() =  true
	override method sirveBroncearse()= false	
}


