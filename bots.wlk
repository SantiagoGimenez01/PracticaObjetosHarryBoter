import casas.*

class Bot{
    var energiaElectrica = 100
}

class Estudiante inherits Bot{

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