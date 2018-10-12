import UIKit

// Tipos de datos

//Int Float Double Bool String Character Any

var nombre: String = "Cesar"

let num = 1


//Operadores
// Matematicos
// + - * / % += -= *= /=
//Logicos
//< > != >= <= && || ==

//Control de flujo y toma de desiciones

// if - else switch case

if nombre == nombre {
    print("Hola \(nombre)")
}else if true == !true{
    print("Adios 💩")
}

var pet = "Dog"

switch pet {
case "Dog":
    print("Hola")
default:
    break
}

//ciclo for

for i in 1...9{
    print(i)
}

//Arrays

var array = [1,2,3,4,5]

array.append(6)

array.remove(at: 0)

var array2 = [7,8,9]
array += array2

var array3 = [Any]()
array3.append("Cesar")
array3.append(32)
array3.append(true)


//funciones

func name (nombre: String,lastName: String) -> String{
    return "Hola \(nombre) \(lastName)"
}

name(nombre: "Cesar", lastName: "Lugo")

//Estructuras

struct Person{
    let firtsName: String
    let lastName: String
    
    func sayHello(){
        print("Hello there! My name is \(firtsName) \(lastName)")
    }
}

let aPerson = Person(firtsName: "Cesar", lastName: "Lugo")

aPerson.sayHello()
//Enum

enum comida {
    case Pozole
    case Enchiladas
    case ComidaDeDonRata
    var vat: String{
        return "Hola"
    }
    
}


var food: comida
food = .ComidaDeDonRata
food.vat































