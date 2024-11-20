import casas.*
import materias.*

class Bot{
    var cargaElectrica = 100
}

class Estudiante inherits Bot{
    var property aceitePuro
    const hechizos = []


    method aprender(hechizo) = hechizos.add(hechizo)
}

class Profesor inherits Bot{

}

object sombreroSeleccionador inherits Bot{
    var casa = gryffindor

    method asignarGrupo(grupo){
        grupo.forEach({estudiante => self.asignar(estudiante)})
    }
    method asignar(estudiante){
        casa.agregar(estudiante)   
        casa = casa.proximaCasa()
    }       


}