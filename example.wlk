
class Elemento {
  method esBueno(){
    return true
  }
}
class Mascota inherits Elemento {
  var property nivelDeSalud = 0
  override method esBueno(){
    return  nivelDeSalud >= 250
  }
}

class Hogar inherits Elemento {
  var property nivelDeMugre =  0
  var property nivelDeConfort = 0
  override method esBueno(){
    return  nivelDeMugre <= (nivelDeConfort/2)
  }
}

class Huerta inherits Elemento {
  var property capacidadDeProduccion = 0
  var property produccionEsperada = 15
  override method esBueno() {
    return capacidadDeProduccion > produccionEsperada
 } 
}