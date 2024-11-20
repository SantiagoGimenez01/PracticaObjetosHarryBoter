

object inmobilus{

    method efecto(afectado){ afectado.disminuirCarga(50) }
    method cumpleCondiciones(lanzador) = true
}

object sectumSempra{
    method efecto(afectado){ if(afectado.aceitePuro()) afectado.aceitePuro(false) }
    method cumpleCondiciones(lanzador) = lanzador.esExperimentado()
}

object avadaKedabra{

    method efecto(afectado) = afectado.anularCarga()
    method cumpleCondiciones(lanzador) = lanzador.ensuciarAceite() || lanzador.perteneceACasaPeligrosa()
}

class HechizoComun{
    const cargaDisminuida

    method efecto(afectado){ afectado.disminuirCarga(cargaDisminuida) }
    method cumpleCondiciones(lanzador) = lanzador.cargaElectrica() > cargaDisminuida
}

object curacion{
    const cura = 50

    method efecto(afectado){ afectado.curar(cura) }
    method cumpleCondiciones(lanzador) = lanzador.aceitePuro() && lanzador.cargaElectrica() > cura
}
