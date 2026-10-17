
class Elemento {
  const property pueblo = []
  method esBueno(){
    // Lógica para determinar si el elemento es bueno
  }
  method agregarElemento(elemento){
    pueblo.add(elemento)
  }
  method esCopado(){
    return self.elementosBuenos() > self.elementosMalos()
  }

  method elementosBuenos(){
    return pueblo.count({ elem => elem.esBueno() })
  }

  method elementosMalos(){
    return pueblo.count({ elem => !elem.esBueno() })
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