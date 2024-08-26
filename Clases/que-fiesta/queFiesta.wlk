object manic {
    var estrellas = 0
    var globos = 100

    
// Getter
    method estrellas() = estrellas
// Setter
    method estrellas(unaCantidad) {
      estrellas = unaCantidad
    }

    method globos() = globos 

    method encontrarEstrellas() {
    estrellas += 8
  }

    method regalarEstrellas(){
    estrellas = 0.max(estrellas - 1)
  }

  method tieneTodoListo() = estrellas >= 4

  method tieneSuficientesGlobos() = globos > 50


}
// Interfaz: Conjuntos de mensajes que entiende un objeto
// Encapsulamiento, uno de los tres pilares de objetos.

object fiesta {
  var quienOrganiza = manic

  method estaPreparada() = quienOrganiza.tieneTodoListo() && quienOrganiza.tieneSuficientesGlobos()
}