//: [Previous](@previous)

import Foundation

struct Car {
    let wheels: Int
    let engines: Int
    var total: Int

    // mutating is hier toegevoegd om erbij te zeggen dat het de huidige instance aanpast
    mutating func addWheelsToTotal(moreWheels: Int) {
        total = (wheels + moreWheels)
    }
}

var peugeot = Car(wheels: 1, engines: 2, total: 0)
peugeot.wheels
peugeot.total
peugeot.addWheelsToTotal(moreWheels: 33)
peugeot.total

func addTwenty(car: Car) -> Car {
    car.total + 20
    return car
}

func addThirty(car: inout Car) {
    car.total = car.total + 30
}

//addThirty(car: &peugeot)
//peugeot.total

//addTwenty(car: peugeot)
//peugeot.total

//: [Next](@next)
