import casas.*
import materias.*

class Bot{
    var cargaElectrica = 100
    var property aceitePuro = true

    method estaActivo() = cargaElectrica > 0
    method disminuirCarga(cantidad){ cargaElectrica -= cantidad }
    method anularCarga(){ cargaElectrica = 0 }
    method ensuciarAceite(){ aceitePuro = false }
} 

class BotInteresante inherits Bot{
    const hechizos = []
    var property casa = nula

    method lanzarA(hechizo, alguien){
        if(!self.puedeLanzarlo(hechizo))
            throw new DomainException(message="El lanzador no puede lanzar el hechizo")
        hechizo.efecto(alguien)
        
    }
    method esExperimentado() = hechizos.size() > 3 && cargaElectrica > 50
    method puedeLanzarlo(hechizo) = self.tiene(hechizo) && self.estaActivo() && hechizo.cumpleCondiciones(self)
    method tiene(hechizo) = hechizos.contains(hechizo)
}

class Estudiante inherits BotInteresante{

    method aprender(hechizo) = hechizos.add(hechizo)
}

class Profesor inherits BotInteresante{
    var materiasDictadas

    override method disminuirCarga(cantidad) { super(0) }
    override method esExperimentado() = super() && materiasDictadas >= 2
    method sumarMateria(){ materiasDictadas += 1 }
    override method anularCarga(){ cargaElectrica = cargaElectrica/2 }

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

    override method ensuciarAceite(){}

}