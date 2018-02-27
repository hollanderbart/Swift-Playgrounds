//: [Previous](@previous)

import Foundation

// MARK: - Struct

struct Person {
    var name: String
    var age: Int
}

let person = Person(name: "Bart", age: 30)
var newAgePerson = person
newAgePerson.age = 35
person.age
newAgePerson.age

// copying struct are NOT refering to the old copy 'person'

// MARK: - Classes

class NewPerson {
    var name: String
    var age: Int

    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

let newPerson = NewPerson(name: "Bart", age: 35)
var newNewAgePerson = newPerson
newNewAgePerson.age = 40
newPerson.age
newNewAgePerson.age

"https://stackoverflow.com/questions/33164532/swift-how-to-pass-by-value-of-a-object"

// copying class are refering to the old copy 'person'
// class copy, struct aren't
//: [Next](@next)
