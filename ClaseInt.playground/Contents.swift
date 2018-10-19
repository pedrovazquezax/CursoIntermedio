//: Playground - noun: a place where people can play

import UIKit

struct Book {
    var name: String
    var publicationYear: Int?
}

let firstHarryPotter = Book(name: "Harry Potter and the Sorcerer's Stone", publicationYear: 1997)
let scondHarryPotter = Book(name: "Harry Potter and the Chamber of Secrets", publicationYear: 1998)
let thirdHarryPotter = Book(name: "Harry Potter and the Prisioner of Azcaban", publicationYear: 1999)

let unanouncedBook = Book(name: "Rebels and Lions", publicationYear: nil)


var publicationYear: Int?

publicationYear = nil

if publicationYear != nil {
    let actualYear = publicationYear! // force unwrapped
    print(actualYear)
}else {
    print("El año de publicacion es desconocido")
}

if let unwrappedPublicarionYear = firstHarryPotter.publicationYear { //optional biding
    
    print("The book was published in \(unwrappedPublicarionYear)")
}else {
    print("The book does not have an official publication date")
}

func printFullName(firstName: String, middleName: String?, lastName: String){
    
    if middleName != nil {
        let md = middleName!
        print("My name is \(firstName) \(md) \(lastName)")
    } else {
        print("My name is \(firstName) \(lastName)")
    }
    
}

printFullName(firstName: "Julio", middleName: "Cesar", lastName: "Lugo")

//func textFromURL(url: URL) -> String?{
//
//    if url != nil {
//        return "el url es \(url)"
//    } else{
//        return "error 404"
//    }
//}

struct Toddler {
    var name : String
    var monthsOld: Int
    
    init?(name: String, monthsOld: Int){ // Failable Initialazers
        if monthsOld < 12 || monthsOld > 36 {
            return nil
        } else {
            self.name = name
            self.monthsOld = monthsOld
        }
    }
}

let possibleToddler = Toddler(name: "Juanite", monthsOld: 15)

if let toddler = possibleToddler {
    print("\(toddler.name) is \(toddler.monthsOld) months old")
} else {
    print("The age you specified for the toddler is not between 1 and 3 yrs of age")
}
//Optional Chaining
class Person {
    var age: Int
    var residence: Residence?
    
    init (age: Int){
        self.age = age
    }
    
}

class Residence {
    var address: Address?
}

class Address {
    var buildingNumber: String
    var streetName: String
    var apartmentNumber: String?
    
    init(buildingNumber: String, streetName: String) {
        self.streetName = streetName
        self.buildingNumber = buildingNumber
    }
}

var person = Person(age: 22)
person.residence = Residence()
person.residence?.address = Address(buildingNumber: "55", streetName: "Broca")
person.residence?.address?.apartmentNumber = "77"



if let theApartmentNumber = person.residence?.address?.apartmentNumber{
    print("He/She lives in the apartment number \(theApartmentNumber)")
}else {
    print("El o Ella o Elle es un vagabonde")
}



