//: [Previous](@previous)

import Foundation

class Ship {
    var health: Int = 100
}

protocol Shooter {
    var strength: Int { get }

    func shootAt(ship: Ship)
    // Swift: Function bodies are not allowed. Most be declared in a object or an extension
}

// ADDITIONAL IN SWIFT

// Default implementation for protocol
//extension Shooter {
//    func shootAt(ship: Ship) {
//        ship.health = ship.health - strength
//    }
//}


class LazerShooter: Shooter {
    let strength: Int = 5

    func shootAt(ship: Ship) {
        ship.health = ship.health - strength
    }
}

class Commander: Shooter {

    let strength: Int = 10

    func shootAt(ship: Ship) {
        ship.health = ship.health - strength
    }
}

let bigShip = Ship()
let commander = Commander()
commander.shootAt(ship: bigShip)
commander.strength
commander is Ship
commander is Shooter

//: [Next](@next)
