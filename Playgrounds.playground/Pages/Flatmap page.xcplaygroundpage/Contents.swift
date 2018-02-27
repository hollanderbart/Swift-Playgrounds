//: [Previous](@previous)

import Foundation

var str = ["Hello, playground", "Hi! 👋"]

let flattenString = str.flatMap{$0}

let newString = "Hi" + flattenString

print(newString)


let stringElement: [String.Element] = ["H", "G"]

//: [Next](@next)
