//: [Previous](@previous)

import Foundation

protocol Car {
    var name: String? { get }
}

struct Peugeot: Car {
    var name: String? {
        return "BLACK"
    }
}

let peugeot308: Car = Peugeot()

//: [Next](@next)
