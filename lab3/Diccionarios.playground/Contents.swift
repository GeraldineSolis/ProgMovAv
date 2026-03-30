let Metro: [String: [String]] = [
    "Linea 1": ["Villa El Salvador", "Parque Industrial", "Pumacahua", "Villa Maria", "Maria Auxiliadora", "San Juan", "Atocongo", "Jorge Chavez", "Ayacucho", "Los Cabitos", "Angamos", "San Bborja Sur", "La Cultura", "Nicolar Arriola", "Gamarra", "28 de Julio", "Miguel Grau", "El Angel", "Prebistero Maestro", "Caja de Agua", "Piramide del Sol" , "Los Jardines", "Los Postres", "San Carlos", "San Martin", "Santa Rosa", "Bayovar"],
    
    "Linea 2": ["Puerto del Callao", "Buenos Aires", "Juan Pablo II", "Insurgentes", "Oscar R. Benavides", "San Marcos", "Elio", "La Alborada", "Tingo Maria", "Parque Murillo", "Plaza Bolognesi", "Plaza Manco Capac", "Cangalio", "Gamarra", "Circunvalacion", "San Juan de Dios", "Evitamiento", "Ovalo Santa Anita", "Colectora Industrial", "Hermilio Valdizan", "Mercado Santa Anita", "Vista Alegre", "Prolongacion Javier Prado", "Municipalidad de Ate"],
    
    "Linea 3": ["Pedro Miotta", "Los Heroes", "Las Gardenias", "Alejandro Valezco", "Juana Alarco", "Panama", "Parque Reducto", "Parque Central Miraflores", "Huaca Pucllana", "Andres Aramburu", "Conde de San Isidro", "Rivera Navarrete", "Cesar Canevaro", "Museo de Historia Natural", "Parque de la Reserva", "Garcilzo de la Vega", "Tacna", "Caqueta", "Jose Granda", "Bartolome de las Casas", "Tomas Valle", "Carlos Izaguirre", "Naranjal", "Villa Sol", "2 de Octubre", "Huandoy", "El Alamo"],
    
    "Linea 4": ["Ventanilla", "Callao", "San Miguel", "Magdalena", "Miraflores", "Surco"]
]



func obtenerEstaciones(linea: String, metro: [String: [String]]) {
    if let Estaciones = metro[linea] {
        print("Estaciones de \(linea):")
        for est in Estaciones {
            print("-", est)
        }
    } else {
        print("Línea no encontrada")
    }
}

func obtenerLineas(estacion: String, metro: [String: [String]]) {
    var resultado: [String] = []
    
    for (linea, estaciones) in metro {
        if estaciones.contains(estacion) {
            resultado.append(linea)
        }
    }
    
    if resultado.isEmpty {
        print("La estación no existe")
    } else {
        print("La estación \(estacion) pertenece a:", resultado)
    }
}

func pertenece(estacion: String, linea: String, metro: [String: [String]]) {
    if let Estaciones = metro[linea] {
        if Estaciones.contains(estacion) {
            print("Sí, \(estacion) pertenece a \(linea)")
        } else {
            print("No, \(estacion) NO pertenece a \(linea)")
        }
    } else {
        print("Línea no encontrada")
    }
}

func cantidadEstaciones(linea: String, metro: [String: [String]]) {
    if let Estaciones = metro[linea] {
        print("\(linea) tiene \(Estaciones.count) estaciones")
    } else {
        print("Línea no encontrada")
    }
}

obtenerEstaciones(linea: "Linea 1", metro: Metro)
obtenerLineas(estacion: "Centro", metro: Metro)
pertenece(estacion: "Miraflores", linea: "Linea 3", metro: Metro)
cantidadEstaciones(linea: "Linea 2", metro: Metro)
