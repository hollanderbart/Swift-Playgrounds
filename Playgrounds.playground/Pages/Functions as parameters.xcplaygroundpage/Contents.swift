//: [Previous](@previous)

import Foundation

// Functions as parameters

func useFunction<T, U>(on item: T, function: (T) -> U) -> U {
    return function(item)
}

func insertExclamationPoint(in string: String) -> String {
    return string
        .components(separatedBy: " ")
        .joined(separator: "! ")
}
let result = useFunction(on: "try Swift",
                         function: insertExclamationPoint(in:))


//: [Next](@next)
