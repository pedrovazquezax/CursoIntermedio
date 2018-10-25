//: Playground - noun: a place where people can play

import UIKit

// repaso de enum
enum CompassPoint {
    case north
    case south
    case east
    case west
}

enum Planet{
    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
}

var directionToHead = CompassPoint.west

directionToHead = .east

directionToHead = .south

switch directionToHead {
case .north:
    print("Lost of planets have a north")
case .south:
    print("Watch our penguins")
case .east:
    print("Where the sun rises")
case .west:
    print("Where the skies are blue")
}


//Clases

class Person{
    let name: String
    
    init(name: String){
        self.name = name
    }
    
    func sayHello(){
        print("Hello there!")
    }
}

let person = Person(name: "Cesar")
print(person.name)
person.sayHello()

class Vehicle {
    var currentSpeed = 0.0
    
    var desciption: String {
        return "traveling at \(currentSpeed) miles per hour"
    }
    
    func makeNoise() {
        //No todos los vehiculos hacen ruiditos
    }
}
let someVehicle = Vehicle()
print("Vehicle: \(someVehicle.desciption)")

class Bicycle: Vehicle{
    var hasBasket = false
}

let bicycle = Bicycle()
bicycle.hasBasket = true
bicycle.currentSpeed = 15.0

print("Bicycle: \(bicycle.desciption)")

class Tandem: Bicycle{
    var currentNumbersOfPassengers = 0
}

let tandem = Tandem()
tandem.hasBasket = true
tandem.currentNumbersOfPassengers = 2
tandem.currentSpeed = 22.0
print("Tandem: \(tandem.desciption)")

class Train: Vehicle{
    override func makeNoise() {
        print("Choo Chooooo!!!!")
    }
}

let train = Train()
train.currentSpeed = 50.0
print("Train: \(train.desciption)")
train.makeNoise()

class Car: Vehicle{
    var gear = 1
    
    override var desciption: String{
        return super.desciption + " in gear \(gear)"
    }
}

let car = Car()
car.currentSpeed = 100.0
car.gear = 4
print("Car: \(car.desciption)")

class Student: Person{
    var favoriteSubject: String
    
    init(name: String, favoriteSubject: String) {
        self.favoriteSubject = favoriteSubject
        super.init(name: name)
    }
}

class Persona {
    let name: String
    
    var age: Int
    
    init(name: String, age: Int){
        self.name = name
        self.age = age
    }
}
var jack = Persona(name: "Jack", age: 22)
var myFriend = jack
jack.age += 1
print(jack.age)
print(myFriend.age)

struct Personita{
    var name: String
    var age: Int
}

var cesar = Personita(name: "Cesar", age: 22)
var jerry = cesar

cesar.age += 1

print(cesar.age)
print(jerry.age)


















