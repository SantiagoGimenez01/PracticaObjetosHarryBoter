import bots.*

class Materia{
    const hechizo
    const profesor

    method enseniar(alumnos){
        alumnos.forEach({alumno => alumno.aprender(hechizo)})
    }
}