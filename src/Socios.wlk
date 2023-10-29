import viajes.*

class Socio{
	const property actQueRealizo =[]
	var maxDeActividades
	var property edad
	var property idioma =[]
	method esAdorador()= actQueRealizo.all({actividad=> actividad.sirveBroncearse()})
	method actividadesEsforzadas()= actQueRealizo.filter({actividad=> actividad.esfuerzo()})
	method realizaActividad(actividad)= 
		if (actQueRealizo.size() <= maxDeActividades) actQueRealizo.add(actividad) else self.error("cant maxima alcanzada") 
}
class SocioTranquilo inherits Socio{
	method leAtraeActividad(actividad) = actividad.cantDeDias() >= 4 
}
class SocioCoherente inherits Socio{
	method leAtraeActividad(actividad) = if (self.esAdorador()) actividad.sirveBroncearse() else actividad.esfuerzo()
}
class SocioRelajado inherits Socio{
	method leAtraeActividad(actividad)= idioma.any({idioma => actividad.idioma().contains(idioma)})
}