import plagas.*

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
  method efectoDeLaPlaga(plaga){
    // Lógica para aplicar el efecto de una plaga sobre el elemento
  }
}
class Mascota inherits Elemento {
  var property nivelDeSalud = 0
  override method esBueno(){
    return  nivelDeSalud >= 250
  }
  override method efectoDeLaPlaga(plaga){
    if (plaga.transmiteEnfermedades()) {
      nivelDeSalud -= plaga.nivelDeDaño()
    }
  }
}

class Hogar inherits Elemento {
  var property nivelDeMugre =  0
  var property nivelDeConfort = 0
  override method esBueno(){
    return  nivelDeMugre <= (nivelDeConfort/2)
  }
  override method efectoDeLaPlaga(plaga){
    nivelDeMugre += plaga.nivelDeDaño()
  }
}

class Huerta inherits Elemento {
  var property nivelDeProduccion = 0
  var property produccionEsperada = 15
  override method esBueno() {
    return nivelDeProduccion > produccionEsperada
 } 
 override method efectoDeLaPlaga(plaga){
    if (plaga.transmiteEnfermedades()) {
      nivelDeProduccion -= plaga.nivelDeDaño()*0.01 + 10
    }else {
      nivelDeProduccion -= plaga.nivelDeDaño()*0.01
    }
  }
}