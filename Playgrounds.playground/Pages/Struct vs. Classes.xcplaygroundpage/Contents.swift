//: [Previous](@previous)

import Foundation

// 1. Struct are value types. classes are reference types.
//      Copying class are refering to the old copy 'person'
//      If making copies, struct don't reference to the old value. Classes do reference to the old value.
//      Class copy, struct aren't. They are refering to the original.
// 2. Struct have default initialiser
//      NOTE: Struct have default initializer which isn't declared public without declaring it public specific
// 3. Struct's are considered immutable. This means that we cannot change a property when we've initialised a let struct. We can change a property of a class that has been declared as a let.
// 4. We can only inherit from a class. A struct can't.
// 5. When we want to mutate a property from a function in a struct, we have to mark the function as mutating. With a class, we don't have to mark it mutating.

// MARK: - Struct

struct Person {
    var name: String
    var age: Int
}

// 2. Make use of automatically created initialiser
let person = Person(name: "Bart", age: 30)

// 3. Structs are immutable. We cannot change a property from a let struct.
//person.age = 33

// Make a copy of the first Person
// We use a struct which is a value type, which means it will make a direct copy of person into newAgePerson
var newAgePerson = person

// 1. Changing a property of the value copied Person makes it that the value did only changed in newAgePerson and not in person
newAgePerson.age = 35
person.age
newAgePerson.age

// Copying struct are NOT refering to the old copy 'person'

// MARK: - Classes

class NewPerson {
    var name: String
    var age: Int

    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

// Here we have to use the pre-defined initialiser. We cannot benefit the automatic created initialiser that structs are giving us.
let newPerson = NewPerson(name: "Bart", age: 35)

// 3. Structs are immutable. We cannot change a property from a let struct. From a let declared class, we can! Classes are NOT! immutable.
newPerson.age = 33

// 1. Make a new copy. Because classes are copied by reference, the copy of newPerson(newNewAgePerson) is still refering to the old newPerson.
var newNewAgePerson = newPerson
newNewAgePerson.age = 40
newPerson.age
newNewAgePerson.age

// Can we also change the original copy, which will lead to the copy being changed?
newPerson.age = 44
newPerson.age
newNewAgePerson.age
// Yes, it's changed in both copies because they're copies

// 4. We cannot inherit from a struct. We can with a class.

// We can't inherit in a struct from a struct

//struct Animal: Person {
//
//}

// We also can't inherit in a struct from a class

//struct Animal: NewPerson {
//
//}

// We also can't inherit in a class from a struct

//class SuperStructPerson: Person {
//
//}

// We can inherit in a class from a class
class SuperPerson: NewPerson {

    let hobby: String

    init() {
        hobby = "football"
        super.init(name: "Bobbe", age: 11)
    }
}



// 5. When we want to mutate a property from a function in a struct, we have to mark the function as mutating. With a class, we don't have to mark it mutating.

struct Point {
    var x: Int
    let y: Int

    mutating func multiplyX(_ factor: Int) {
        // Here we're change the propery 'x' from a function. Because structs are considered immutable, we have to mark the function immutable. In this way we know we're change a property of a immutable structure. It's mutable now.
        x *= factor
    }
}

var point = Point(x: 1, y: 2)
point.x
point.y
// When we're actually using the mutating func, we also need to make the struct a var. This is a extra measure that's build in to say that the struct is mutable now.
point.multiplyX(2)

//: [Next](@next)
