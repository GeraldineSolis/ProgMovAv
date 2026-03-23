let Tiempo:Double = 180.0
let Actividad:String = "Reposo"

func obtenerCaloriasPorMinuto(actividad: String) -> Double? {
    let Act = actividad.lowercased()
    if Act == "dormir" {
        return 1.08
    } else if Act == "reposo" {
        return 1.66
    } else {
        return nil
    }
}

func calcularCalorias(actividad: String, tiempo: Double) {
    guard let CaloriasPorMinuto = obtenerCaloriasPorMinuto(actividad: Actividad) else {
        print("Error: Actividad no válida. Solo se permite 'dormir' o 'reposo'.")
        return
    }
    if Tiempo <= 0 {
        print("Error: El tiempo debe ser un número positivo.")
        return
    }
    let Calorias = CaloriasPorMinuto * Tiempo
    
    print("Actividad: \(Actividad.uppercased())")
    print("Tiempo: \(Int(Tiempo)) minutos")
    print("Calorias consumidas: \(Calorias)")
}

calcularCalorias(actividad:Actividad, tiempo:Tiempo)
