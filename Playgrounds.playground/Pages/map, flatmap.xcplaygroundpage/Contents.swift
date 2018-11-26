//: [Previous](@previous)

import Foundation

let suits = [100, 200, 300, 400]
let faces = ["A", "B", "C", "D", "E" ,"F", "G", "H", "I", "J", "K", "L", "M"]

//var mapTest = suits.map { suitMap in
//    String(suitMap)
//}
//
//print(mapTest)

var flatMapTest = suits.flatMap { suit in
    String(suit)
}

print(flatMapTest)

var compactMapTest = suits.compactMap { suit in
    String(suit)
}

print(compactMapTest)

//var compactFlatMapTest = suits.compactMap { suit in
//    suit
//}
//
//print(compactFlatMapTest)

var allCards = suits.flatMap { suit in
    faces.map { face in
        (suit, face)
    }
}

print(allCards)

//var allCards2 = suits

//: [Next](@next)
