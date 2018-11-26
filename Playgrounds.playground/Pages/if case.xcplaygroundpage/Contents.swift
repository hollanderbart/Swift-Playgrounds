//: [Previous](@previous)

import Foundation

enum Car {
    case Audi(String)
    case Peugeot(String)
    case Ferrari(String)
    case Lambo(String?)
}

let audi = Car.Audi("A6")
switch audi {
case .Audi(let value):
    print(value)
case .Peugeot(let value):
    print(value)
case .Ferrari(let value):
    print(value)
case let .Lambo(value?):
    print(value)
case .Lambo(_):
    break
}

if case let .Audi(value) = audi, value == "A6" {
    print(value)
}

//
//if case .Lambo = car {
//    print("lambo")
//} else {
//    print("Iets anders")
//}
//
//if case .Audi(let string) = car {
//    print(string)
//}


//: [Next](@next)
