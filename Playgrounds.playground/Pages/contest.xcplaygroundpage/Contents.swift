//: [Previous](@previous)

import Foundation

/*
 write a function to identify the largest count of consecutive "1's" in the sequence. e.g. 111000011011 -> 3
 */

func longestSequence(of key: String) -> Int {
    var largest = [Character]()
    var copyLargest = [Character]()
    _ = key.compactMap { $0 }
        .map {
            if $0 == "1" {
                largest.append($0)
            } else if !largest.isEmpty {
                if largest.count > copyLargest.count {
                    copyLargest = largest
                }
                largest = [Character]()
            }
    }
    return copyLargest.count
}

print(longestSequence(of: "110111000011011"))

//: [Next](@next)
