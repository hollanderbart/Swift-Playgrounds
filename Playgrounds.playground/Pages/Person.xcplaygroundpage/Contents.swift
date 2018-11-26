//: [Previous](@previous)

import Foundation

/// Swift: Class. Kotlin: Class

class Person {

    let name: String
    var age: Int

    init(_ name: String, _ age: Int = 0) {
        self.name = name
        self.age = age
    }

    func sayHi() -> String {
        return "Hi"
    }

    func add(_ lifetime: Int) {
        self.age += lifetime
    }

    static func newBorn(name: String) -> Person {
        return Person(name, 0)
    }
}

let chef = Person("Tim", 30)
chef.add(22)
chef.age

/// Swift: Struct. Kotlin: data class

struct StructPerson {

    var name: String
    var age: Int

    // Default initializers with Struct. Free!
//    init(_ name: String, _ age: Int = 0) {
//        self.name = name
//        self.age = age
//    }

    func sayHi() -> String {
        return "Hi"
    }

    mutating func add(_ lifetime: Int) {
        self.age += lifetime
    }

    static func newBorn(name: String) -> StructPerson {
        return StructPerson(name: name, age: 0)
    }
}

let jack = StructPerson(name: "Jack", age: 42)
jack.name
jack.age

extension StructPerson: Equatable {}

jack == StructPerson(name: "Jack", age: 42)

// Cannot use `copy` in one go. Have to first be more explicit and then override the properties
var fred = jack
fred.name = "Fred"
fred.name
fred.age

// Create a tupple. More explicit than Kotlin
let (name, age) = (fred.name, fred.age)
name
age




//: [Next](@next)
