class Casa{
    const estudiantes = []

    method agregar(estudiante){ 
        estudiantes.add(estudiante) 
    }
    method proximaCasa()
}

object gryffindor inherits Casa{

    override method proximaCasa() = slytherin
}

object slytherin inherits Casa{

    override method proximaCasa() = hufflepuff
}

object hufflepuff inherits Casa{
    
    override method proximaCasa() = ravenclaw

}

object ravenclaw inherits Casa{
   
    override method proximaCasa() = gryffindor
}