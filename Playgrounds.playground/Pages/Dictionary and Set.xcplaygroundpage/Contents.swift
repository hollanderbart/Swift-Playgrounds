//: [Previous](@previous)

import Foundation

enum Section: Int {
    case accountNumber
    case cardNumber
    case birthDate
    case validUntil
    
    static let count = 4
}

let sectionInputType = (Section.accountNumber, )

// Begin with a single banana
var cart = ["🍌": 1]

cart["🍌"]
cart["hu"]


//: [Next](@next)
