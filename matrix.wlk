object neo {
  var energia = 100
  method esElegido() = true 
  method energia() = energia
  method saltar() {
    energia = energia / 2 
  }
  method vitalidad() {
    return energia / 10 
  }

}
object morfeo {
  var vitalidad = 8
  var estaCansado = true
  method cambiarVitalidad(unaVitalidad) {
    vitalidad = unaVitalidad
  }
  method esElegido() = false
  method energia() = energia
  method saltar() {
    estaCansado = !estaCansado
    vitalidad = vitalidad - 1 
  }
  method vitalidad() {
    return 8
  }


}
object trinity {
  method vitalidad() = 0
  method saltar() {
    
  }
}
object nave {
  var pasajeros = #{}
  method cantidadPasajeros() {
    return pasajeros.size()
  }
  method pasajeroMayorVitalidad() {
    return pasajeros.max({e=>e.vitalidad()})
  }
  method pasajeroMenorVitalidad() {
    return pasajeros.min({e=>e.vitalidad()})
  }
  method estaEquilibradaEnVitalidad() {
    return self.pasajeroMayorVitalidad() < self.pasajeroMenorVitalidad()
  }
  method estaElElegido() {
    return pasajeros.any({e=>e.esElegido()})
  }
  method choca() {
    pasajeros.forEach({e=>e.saltar()})
    pasajeros.clear()
  }
  method acelera() {
    pasajeros.filtr({e=>!e.esElegido()}).forEach({e=>e.saltar()})
    
  }

}