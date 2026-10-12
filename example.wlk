object pepita {
  var energy = 100

  method energy() = energy

  method fly(minutes) {
    energy = energy - minutes * 3
  }
}

class Elemento {
  var  property barrio 
  method esBueno(){
    return true
  }
  method elBarrioEsCopado() {
    
  }
}
class Mascota inherits Elemento {
  var property nivelDeSalud 
  override method esBueno(){
    return  nivelDeSalud >= 250
  }
}

class Hogar inherits Elemento {
  var property nivelDeMugre 
  var property nivelDeConfort
  override method esBueno(){
    return  nivelDeMugre >= nivelDeConfort/2
  }
}

class Huerta inherits Elemento {
  var property capacidadDeProduccion
  const property produccionEsperada  
  override method esBueno() {
    return capacidadDeProduccion > produccionEsperada
 } 
}