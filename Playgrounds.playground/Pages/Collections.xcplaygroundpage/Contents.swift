//: [Previous](@previous)

import Foundation

var list1 = [1, 2, 3]
// let l2 = l + 4
// Cannot do this because l is from a different type than 'Int' '[Int]'

// list1 first needs to be changed to a muttable property using a 'var'
list1.append(4)

list1

var list3 = [5, 6, 7]
var list4 = [7, 8]

let set1: Set<Int> = Set(list3)
let set2: Set<Int> = Set(list4)

set1.union(set2)                // Union of two sets
set1.intersection(set2)         // Intersection of two sets
set1.symmetricDifference(set2)  // ExclusiveOr

let range = [2...10]

var stridedRange = [Int()].dropFirst()
for index in stride(from: 0, through: 10, by: 2) {
    index
    stridedRange.append(index)
}
stridedRange

let swapped = ["one": 1, "two": 2].flatMap({ return [$0.value: $0.key] })
swapped

let reduce = [1, 2, 3].reduce(0, { $0 + $1 })
reduce

let reduceShortened = [1, 2, 3].reduce(0, +)
reduceShortened

let zippy = [1, 2, 3]
let zippedResult = Array(zip(zippy, ["one", "two", "three"]))
zippedResult.first?.0
zippedResult.first?.1

//: [Next](@next)
