import viajes.*

class Socio{
	var actQueRealizo=[]
	var maxDeActividades
	
	method esAdorador()= actQueRealizo.all({actividad=> actividad.sirveBroncearse()})
	method actividadesEsforzadas()= actQueRealizo.filter({actividad=> actividad.esfuerzo()})
	method realizaActividad(actividad)= 
		if (actQueRealizo.size() <= maxDeActividades) actQueRealizo.add(actividad) else self.error("cant maxima alcanzada") 
}
