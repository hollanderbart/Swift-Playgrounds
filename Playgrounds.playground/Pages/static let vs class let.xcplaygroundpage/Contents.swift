//: [Previous](@previous)

import Foundation

class Cow {
    class var amountOfLiters: Int {
        return 100
    }
}

class SubClassCow: Cow {
    override class var amountOfLiters: Int {
        return 200
    }
}

Cow.amountOfLiters
SubClassCow.amountOfLiters


public class StaticCow {
    public static var amountOfLiters: Int {
        return 300
    }
}

class SubClassStaticCow: StaticCow {
    // Cannot override static var
//    override static var amountOfLiters: Int {
//        return 400
//    }
}

StaticCow.amountOfLiters

//: [Next](@next)
