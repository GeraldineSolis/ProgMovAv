let Capital = 50000.0
let Tasa = 4.0
let Tiempo = 2.0

let Intereses = Capital * (Tasa / 100) * Tiempo

print("Intereses generados: $\(Intereses)")

var capitalFinal: Double

if Intereses > 7000 {
    capitalFinal = Capital + Intereses
    print("Los intereses superan $7000. Se reinvierten.")
} else {
    capitalFinal = Capital
    print("Los intereses no superan $7000. No se reinvierten.")
}

print("Capital final en la cuenta: $\(capitalFinal)")
