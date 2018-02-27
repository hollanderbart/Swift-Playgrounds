//: [Previous](@previous)

import Foundation


let excludeKeys = ["Hi", "Hoi"]
let immutableKeys = ["een"]
var header = [String: String]()

public func add(_ entries: [String: String]) {
    entries.forEach { (key, value) in
        if !immutableKeys.contains(key) {
            header[key] = value
        }
    }
}

add(["een": "Paprika",
     "twee": "Hallo",
     "three": "Hi"])

header

public func addTwo(_ entries: [String: String], excludeKeys: [String]) -> [String: String] {
    var header = [String: String]()
    for (key, value) in entries where !excludeKeys.contains(key) {
        header[key] = value
    }
    return header
}

var result = addTwo(["een": "Paprika",
                     "twee": "Hallo",
                     "three": "Hi"], excludeKeys: ["een"])

func addThree(_ entries: [String: String], excludeKeys: [String]) -> [String: String] {
    return entries.filter({ !excludeKeys.contains($0.key) })
}

var result3 = addThree(["een": "Paprika",
                        "twee": "Hallo",
                        "three": "Hi"], excludeKeys: ["een"])
result3 = addThree(["een": "Paprika",
                    "twee": "Hallo",
                    "vier": "Hi"], excludeKeys: ["een"])


//: [Next](@next)
