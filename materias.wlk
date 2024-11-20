import bots.*
import hechizos.*
import casas.*

class Materia{
    const hechizo
    var profesor = nula
    method enseniar(alumnos){
        alumnos.forEach({alumno => alumno.aprender(hechizo)})
    }

    method asignarProfesor(profesorAsignado){ 
        profesor = profesorAsignado
        profesorAsignado.sumarMateria() 
    }
}