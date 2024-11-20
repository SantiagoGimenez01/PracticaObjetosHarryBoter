

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
