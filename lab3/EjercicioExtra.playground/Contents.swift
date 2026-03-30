let Conectores = ["es", "un", "el", "la", "a", "en"]


func limpiarTexto(_ texto: String) -> String {
    var limpio = ""
    
    for caracter in texto {
        if caracter != "," {
            limpio.append(caracter)
        }
    }
    
    return limpio
}


func obtenerPalabras(_ texto: String) -> [String] {
    return texto.split(separator: " ").map { String($0).lowercased() }
}


func filtrarPalabras(_ palabras: [String], conectores: [String]) -> [String] {
    var resultado: [String] = []
    
    for palabra in palabras {
        if !conectores.contains(palabra) {
            resultado.append(palabra)
        }
    }
    
    return resultado
}


func contarPalabras(_ palabras: [String]) -> Int {
    return palabras.count
}

func procesarFrase(_ frase: String) {
    let textoLimpio = limpiarTexto(frase)
    let palabras = obtenerPalabras(textoLimpio)
    let palabrasFiltradas = filtrarPalabras(palabras, conectores: Conectores)
    let total = contarPalabras(palabrasFiltradas)
    
    print("Frase original: \(frase)")
    print("Texto limpio: \(textoLimpio)")
    print("Palabras filtradas: \(palabrasFiltradas)")
    print("Cantidad de palabras (sin conectores): \(total)")
}

let Frase1 = "Bienvenidos a Tecsup, hoy es un gran dia"
let Frase2 = "Hoy es Lunes Santo"
let Frase3 = "En Tecsup aprendemos a ser buenos profesionales"

procesarFrase(Frase1)
procesarFrase(Frase2)
procesarFrase(Frase3)
