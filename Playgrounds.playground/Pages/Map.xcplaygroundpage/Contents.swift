//: [Previous](@previous)

import Foundation
import UIKit

var str = ["Hello, playground"]

// Returning a Int while input is String
let result = str.map { (input: String) -> Int in
    return 1
}
result

// Returning a nil while input is String
let result2 = str.map { (input: String) -> Int? in
    return nil
}
result2

let range = (0..<10)
let strideSequence = stride(from: 0, through: 20, by: 5)

let points = zip(range, strideSequence).map { (tuple: (index: Int, stride: Int)) -> CGPoint in
    return CGPoint(x: tuple.index, y: tuple.stride)
}

extension String {
    func interspersed(_ element: Character) -> String {
//        let characters = self.flatMap {
//            return [$0, element]
//        }
        let characters = self.flatMap { (char: Character) -> [Character] in
            return [char, element]
        }
        return String(characters.dropLast())
    }
}

"HOI".interspersed("-")


//: [Next](@next)
