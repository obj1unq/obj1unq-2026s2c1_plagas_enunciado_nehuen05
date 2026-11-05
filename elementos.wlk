import plagas.*

class Elemento {
  method esBueno() // Lógica para determinar si el elemento es bueno
  
  

  method efectoDeLaPlaga(plaga) // Lógica para aplicar el efecto de una plaga sobre el elemento
}
object pueblo{
  const property cantidad = []
  
  method agregarElemento(elemento){
    cantidad.add(elemento)
  }
  
  method esCopado(){
    return self.elementosBuenos() > pueblo.cantidad
  }

  method elementosBuenos(){
    return pueblo.cantidad.count({ elem => elem.esBueno() })
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
  const produccionEsperada
  override method esBueno() {
    return nivelDeProduccion > produccionEsperada
 } 
 override method efectoDeLaPlaga(plaga){
    if (plaga.transmiteEnfermedades()) {
      nivelDeProduccion -= (plaga.nivelDeDaño() * 0.1)  + 10
    } else {
      nivelDeProduccion -= plaga.nivelDeDaño() * 0.1
    }
  }
}

object produccionEsperada{
  var valor = 10
  method setValor(nuevoValor){
    valor = nuevoValor
  }
}
