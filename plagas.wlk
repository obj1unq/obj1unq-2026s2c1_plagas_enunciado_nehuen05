class Plagas {
    var property plagas = []
    var property poblacion = 0
    method transmiteEnfermedades() {
        // Lógica para transmitir enfermedades
    }
    method nivelDeDaño() {
        // Lógica para calcular el nivel de daño
    }
    method sobreLaPlaga(plaga) {
        poblacion = poblacion + plaga.poblacion() * 0.01
    }
}
class Mosquito inherits Plagas {
    override method nivelDeDaño() {
        return poblacion
    }
    override method transmiteEnfermedades() {
        return poblacion >= 10 && poblacion % 3 == 0 }
}
class Cucaracha inherits Plagas {
    var property pesoPromedio = 0
    override method nivelDeDaño() {
        return poblacion / 2
    }
    override method transmiteEnfermedades() {
        return poblacion >= 10 && pesoPromedio >= 10
    }
}
class Pulga inherits Plagas {
    override method nivelDeDaño() {
        return poblacion * 2
    }
    override method transmiteEnfermedades() {
        return poblacion >= 10
    }
}
class Garrapata inherits Plagas {
    override method nivelDeDaño() {
        return poblacion * 2
    }
    override method transmiteEnfermedades() {
        return poblacion >= 10
    }
}