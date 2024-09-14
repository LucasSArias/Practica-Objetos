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
// estado: conjunto de atributos
// comportamiento: conjunto de metodos
// Interfaz: Conjuntos de mensajes que entiende un objeto
// Encapsulamiento, uno de los tres pilares de objetos.

object fiesta {
  var quienOrganiza = capy

  method estaPreparada() = quienOrganiza.tieneTodoListo() && quienOrganiza.tieneSuficientesGlobos()
}

object chuy {
  method tieneTodoListo() = true
}

object capy {
  var property latas = 0
  var globos = 0

  method globos() = globos                  // Tendria que poner estas 3 lineas para cada personaje,
  method comprarGlobos(unaCantidad) {       // es repeticion de logica a lo loco
    globos = unaCantidad                    // pero no se me ocurre como implementarlo sino
  } 

  method recolectarLatas() {
    latas += 1    
  }

  method reciclarLatas() {
    latas = 0.max(latas-5)
  }

  method tieneTodoListo() = latas % 2 == 0
}

