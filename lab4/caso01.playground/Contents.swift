class Mascota {
    var nombre: String
    var edad: Int
    var tipo: String
    
    init(nombre: String, edad: Int, tipo: String) {
        self.nombre = nombre
        self.edad = edad
        self.tipo = tipo
    }
    
    func obtenerDescripcion() -> String {
        return "Soy un \(tipo) llamado \(nombre) y tengo \(edad) años"
    }
    
    func asignarEdad(nueva_edad: Int) {
        self.edad = nueva_edad
        print("Me están asignando una nueva edad: \(self.edad) años")
    }
}

let MiMascota = Mascota(nombre: "Coco", edad: 2, tipo: "Gato")

print(MiMascota.obtenerDescripcion())

MiMascota.asignarEdad(nueva_edad: 5)

print(MiMascota.obtenerDescripcion())
