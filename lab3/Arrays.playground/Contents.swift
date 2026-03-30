var paises = ["Argentina", "Bolivia", "Chile", "Colombia", "Perú"]
var gdp2025: [Double] = [683.371, 57.086, 347.174, 438.121, 318.480]

func obtenerGDP(pais: String, paises: [String], gdps: [Double]) -> Double? {
    for i in 0..<paises.count {
        if paises[i] == pais {
            return gdps[i]
        }
    }
    return nil
}

func mostrarGDP(pais: String, paises: [String], gdps: [Double]) {
    for i in 0..<paises.count {
        if paises[i] == pais {
            print("GDP de \(pais):", gdps[i])
            return
        }
    }
    
    print("País no encontrado")
}

func actualizarGDP(pais: String, nuevoValor: Double, paises: [String], gdps: inout [Double]) {
    for i in 0..<paises.count {
        if paises[i] == pais {
            gdps[i] = nuevoValor
        }
    }
}

func calcularPromedio(gdps: [Double]) -> Double {
    var suma: Double = 0
    for valor in gdps {
        suma += valor
    }
    return suma / Double(gdps.count)
}

func calcularPromedioReduce(gdps: [Double]) -> Double {
    return gdps.reduce(0, +) / Double(gdps.count)
}

func obtenerMaximo(gdps: [Double]) -> Double {
    var max = gdps[0]
    for valor in gdps {
        if valor > max {
            max = valor
        }
    }
    return max
}

func filtrarPaises(paises: [String], gdps: [Double], limite: Double) -> [String] {
    var resultado: [String] = []
    
    for i in 0..<gdps.count {
        if gdps[i] > limite {
            resultado.append(paises[i])
        }
    }
    
    return resultado
}

func ordenarPorGDP(paises: [String], gdps: [Double]) -> [(String, Double)] {
    let combinado = zip(paises, gdps)
    return combinado.sorted { $0.1 > $1.1 }
}

mostrarGDP(pais: "Bolivia", paises: paises, gdps: gdp2025)

actualizarGDP(pais: "Perú", nuevoValor: 326.608, paises: paises, gdps: &gdp2025)
let PeruGdpAct = obtenerGDP(pais: "Perú", paises: paises, gdps: gdp2025)
print("Perú actualizado:", PeruGdpAct!)

actualizarGDP(pais: "Perú", nuevoValor: 318.480, paises: paises, gdps: &gdp2025)

print("Promedio:", calcularPromedio(gdps: gdp2025))
print("Promedio (reduce):", calcularPromedioReduce(gdps: gdp2025))

print("GDP más alto:", obtenerMaximo(gdps: gdp2025))

let mayores300 = filtrarPaises(paises: paises, gdps: gdp2025, limite: 300)
print("Países > 300:", mayores300)

let ordenados = ordenarPorGDP(paises: paises, gdps: gdp2025)
print("Ordenados por GDP:")
for (pais, gdp) in ordenados {
    print(pais, ":", gdp)
}
