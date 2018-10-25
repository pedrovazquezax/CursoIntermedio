import UIKit

var birthdayIsToday = true
var invitedGuest = 10
var cakeCandlesLit = false

func singHappyBirthday(){
    if birthdayIsToday{
        if invitedGuest > 0{
            if cakeCandlesLit{
                print("Happy birthday to you!")
            }else{
                print("The cake's candles havent been lit")
            }
        }else{
            print("its just a family party.")
            
        }
    }else{print("No one has birthday today")
    }
}

singHappyBirthday()

func singHappyBirthday2(){
    guard birthdayIsToday else {
        print("No one has a birthday party")
        return
    }
    guard invitedGuest > 0 else{
        print("It´s just a family party")
        return
    }
    guard cakeCandlesLit else {
        print("the cake´s candles havent been lit")
        return
    }
    
    print("Happy Birthday to you!")
}
singHappyBirthday2()

// guard condicion else{
// falso: ejecutas codigo
//return
//}
// verdadero


func divide(_ number: Double, by divisor: Double) {
    if divisor != 0.0 {
        let result = number / divisor
        print(result)
    }else{
        print("estas dividiendo entre cero")
    }
}

func divide2(_ number: Double, by divisor: Double) {
    
    guard divisor != 0.0 else{
        print("estas dividiendo entre cero")
        return
    }
        let result = number / divisor
        print(result)
}
divide(5.0, by: 0.0)
divide2(5.0, by: 0.0)



func processBook(title: String?, price: Double?, pages: Int?) {
    
    if let theTitle = title, let thePrice = price, let thePages =
        pages {
        print("\(theTitle) costs $\(price) and has \(pages)")
    }
}
func processBook2(title: String?, price: Double?, pages: Int?) {
    
    guard let theTitle = title, let thePrice = price, let thePages =
        pages else{
            print("algun valor es nulo")
            return
            
    }
        print("\(theTitle) costs $\(price) and has \(pages)")
    
}
processBook(title: "hola", price: nil, pages: 12)
processBook2(title: "hola", price: nil, pages: 12)





func entrar(){
    print("Entro")
    
}

func logIn(username: String?,password:String?){
    if let user = username,let password = password  {
    }else{
        print("error")
        return
    }
    entrar()
}
func logIn2(username: String?,password:String?){
    guard let user = username,let password = password else{
        entrar()
        return
    }
    print("error")
    
}

logIn(username: "pedro", password: nil)
logIn2(username: "pedro", password: nil)
//_______________________________________________________

