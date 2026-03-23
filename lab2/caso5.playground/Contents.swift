func busquedaDef(palabra: String) -> Bool {
    if palabra == "Tecsup" || palabra == "MIT" {
        return true
    }
    return false
}

func primerIntento(palabra: String) -> Bool {
    if palabra == "UNI" {
        return true
    }
    return false
}

func segundoIntento(palabra: String) -> Bool {
    if palabra == "UNALM" {
        return true
    }
    return false
}

func tercerIntento(palabra: String) -> Bool {
    if palabra == "UPM" {
        return true
    }
    return false
}

func buscar(texto: String, intentos: Int) {
    if intentos <= 0 {
        print("No quedan intentos disponibles.")
        return
    }
    
    let Prefix = "Buscar "
    guard texto.hasPrefix(Prefix) else {
        print("Texto no tiene el formato esperado.")
        return
    }
    
    let StartIndex = texto.index(texto.startIndex, offsetBy: Prefix.count)
    let Palabra = String(texto[StartIndex...])

    print("Palabra a buscar: '\(Palabra)'")
    
    if busquedaDef(palabra: Palabra) {
        return
    }
    
    if primerIntento(palabra: Palabra) {
        return
    }
    
    if segundoIntento(palabra: Palabra) {
        return
    }
    
    if tercerIntento(palabra: Palabra) {
        return
    }
    
    print("No se encontró '\(Palabra)' en ninguna función.")
    print("Intentos restantes: \(intentos - 1)")
}

buscar(texto: "Buscar Tecsup", intentos: 2)
buscar(texto: "Buscar UNI", intentos: 2)
buscar(texto: "Buscar Harvard", intentos: 2)
