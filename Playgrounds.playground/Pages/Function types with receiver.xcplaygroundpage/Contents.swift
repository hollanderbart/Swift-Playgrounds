//: [Previous](@previous)

import Foundation

//class PersonBuilder(var name:String? = null, var age:Int? = null) {
//    fun toPerson() = Person(name ?: "John Doe", age ?: 0) }
//}

// BOILERPLATE CODE => Duplicate

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


class PersonBuilder {

    let name: String?
    let age: Int?

    init(name: String? = nil, age: Int? = nil) {
        self.name = name
        self.age = age
    }

    func toPerson() -> StructPerson {
        return StructPerson(name: self.name ?? "John Doe", age: self.age ?? 0)
    }
}

func person(create: PersonBuilder) -> StructPerson {
    return create.toPerson()
}

//: [Next](@next)
