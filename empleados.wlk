
object galvan {
    var deuda = 0
    var dinero = 0

    var sueldo = 15000
    method sueldo(_sueldo){
        sueldo = _sueldo
    }
    method sueldoActual(){
        return sueldo
    }

    method gastar (gastos){
        deuda = deuda + gastos
        self.pagarDeudas()
    }

    method cobrarSueldo(){
        dinero = dinero + sueldo
        self.pagarDeudas()
    }
    method pagarDeudas(){
        if (dinero >= deuda){
            dinero = dinero - deuda
            deuda = 0 
        } else {
            deuda = deuda - dinero
            dinero = 0
        }
    }
}

object baigorria {
    var sueldo = 0
    var totalcobrado = 0
    const precioEmpanada = 15
    var empanadasVendidas = 3
    method vender_empanadas(numeroEmpanadas_){
        empanadasVendidas= empanadasVendidas + numeroEmpanadas_
    }
    method sueldoActual(){
        sueldo = empanadasVendidas * precioEmpanada
        return  sueldo
    }

    method cobrarSueldo(){
        totalcobrado = totalcobrado + sueldo
    }
}

object gimenez {
    var capital = 0
    method pagarSueldo(empleado) {
       self.validarPagarSueldo(empleado)
       capital = capital - empleado.sueldoActual()
       empleado.cobrarSueldo()
    }
   method capital (){
    return capital
   }
   method validarPagarSueldo(empleado) {
        if (capital < empleado.sueldoActual()) {
            self.error("No hay suficiente capital para pagar el sueldo" + empleado)
        }
    }

 }