import bots.*

class Casa{
    const estudiantes = []

    method agregar(estudiante){ 
        estudiantes.add(estudiante) 
        estudiante.casa(self)
    }
    method proximaCasa()
    method integrantesPuros() = estudiantes.count({estudiante => estudiante.aceitePuro()})
    method integrantesSucios() = estudiantes.count({estudiante => !estudiante.aceitePuro()})
    method esPeligrosa() = self.integrantesSucios() > self.integrantesPuros()
    method atacarBotMaligno(){
        estudiantes.forEach({estudiante => estudiante.lanzarA(estudiante.ultimoHechizo(), botMaligno)})
    }
}

object gryffindor inherits Casa{

    override method proximaCasa() = slytherin
    override method esPeligrosa() = false
}

object slytherin inherits Casa{

    override method proximaCasa() = hufflepuff
    override method esPeligrosa() = true
}

object hufflepuff inherits Casa{
    
    override method proximaCasa() = ravenclaw

}

object ravenclaw inherits Casa{
   
    override method proximaCasa() = gryffindor
}

object nula{

}