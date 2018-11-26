//: [Previous](@previous)

import Foundation

//var str = "Hello, playground"
//str = "Hi!"
//
//let tije: String? = nil
//if let tijeIsNietOptional = tije {
//    print(tijeIsNietOptional)
//}
//protocol LivableDelegate {
//    func doStuff()
//}
//
//class Person {
//    var name: String
//    var age: Int
//    var hobbies: [String]?
//    static let logger = "Logger"
//
//    init(_ name: String, age: Int, hobbies: [String]?) {
//        self.name = name
//        self.age = age
//        self.hobbies = hobbies
//    }
//}
//Person.logger
//
//let huub = Person("huub", age: 123, hobbies: ["vissen"])
//huub.name = "Hi"
//
//let bert = huub
//bert.name = "Bert"
//print(bert.name)
//print(huub.name)
//
//struct StructPerson {
//    var name: String
//    let age: Int
//    var hobbies: [String]?
//
//    func getAge(multiple: Int) -> Int {
//        return age * multiple
//    }
//}
//
//let sint = StructPerson(name: "Sint", age: 123, hobbies: nil)
//
//var piet = sint
//piet.name = "Piet"
//print(sint.name)
//print(piet.name)
//piet.getAge(multiple: 12)
//let dict:[String: Any] = ["Auto": 12,
//                          "Straat": 32]
//dict["Auto"]
//dict["Straat"]
//dict["Straats"]
//
//let tuple: (name: String, number: Int) = (name: "Klaas", number: 12)
//
//let (name, number) = tuple
//print(name, number)
//
//tuple.name
//tuple.number
//tuple.0
//tuple.1
//
//let ruben: String? = "Ruben"
//
//if let rubenName = ruben {
//    print(rubenName)
//}
////guard let rubenName2 = ruben else { fatalError() }
////rubenName2
//print(ruben ?? "😎")
//let 💩 = ruben
//print(💩!)

func doThis() -> Never {
    fatalError()
}

doThis()

print("HI")

//: [Next](@next)
