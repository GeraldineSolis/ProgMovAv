class Persona {
    var nombre: String
    var edad: Int
    
    init(nombre: String, edad: Int) {
        self.nombre = nombre
        self.edad = edad
    }
    
    func presentarse() {
        print("👋 Hola, soy \(nombre) y tengo \(edad) años.")
    }
}

class Estudiante: Persona {
    var curso: String
    
    init(nombre: String, edad: Int, curso: String) {
        self.curso = curso
        super.init(nombre: nombre, edad: edad)
    }
    
    override func presentarse() {
        print("👩‍🎓 Soy la estudiante \(nombre), tengo \(edad) años y estudio \(curso).")
    }
}

class Profesor: Persona {
    var especialidad: String
    
    init(nombre: String, edad: Int, especialidad: String) {
        self.especialidad = especialidad
        super.init(nombre: nombre, edad: edad)
    }
    
    override func presentarse() {
        print("👨‍🏫 Soy el profesor \(nombre), tengo \(edad) años y enseño \(especialidad).")
    }
}

let Profesor01 = Profesor(nombre: "Juan", edad: 30, especialidad: "Matematicas")
let Estudiante01 = Estudiante(nombre: "Ana", edad: 22, curso: "Ingeniería")

Profesor01.presentarse()
Estudiante01.presentarse()
