//: [Previous](@previous)

import Foundation

let animals = ["Antelope", "Butterfly", "Camel", "Dolphin"]
for animal in animals {
    print(animal)
}
print("")
var animalIterator = animals.makeIterator()
animalIterator.next()
animalIterator.next()
animalIterator.next()
animalIterator.next()
animalIterator.next()


while let animal = animalIterator.next() {
    print(animal)
}

//: [Next](@next)
