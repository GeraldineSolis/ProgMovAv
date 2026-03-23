let PrecioUnitario = 50.0
let Cantidad = 4
let Descuento = 10.0

func calcularPagoTotal(precioUnitario: Double, cantidad: Int, descuento: Double) -> Double? {
    guard precioUnitario > 0 else {
        print("Error: Precio unitario debe ser mayor que cero.")
        return nil
    }
    guard cantidad > 0 else {
        print("Error: La cantidad debe ser mayor que cero.")
        return nil
    }
    guard descuento >= 0 && descuento <= 100 else {
        print("Error: Descuento debe estar entre 0 y 100%.")
        return nil
    }
    
    let Subtotal = precioUnitario * Double(cantidad)
    let MontoDescuento = Subtotal * (descuento / 100)
    let PagoTotal = Subtotal - MontoDescuento
    
    return PagoTotal
}

if let pago = calcularPagoTotal(precioUnitario: PrecioUnitario, cantidad: Cantidad, descuento: Descuento) {
    print("Subtotal: $\(PrecioUnitario * Double(Cantidad))")
    print("Monto del descuento: $\(PrecioUnitario * Double(Cantidad) * (Descuento / 100))")
    print("Pago total: $\(pago)")
}
