//: [Previous](@previous)

import Foundation

struct Auth: Codable {
    let token: String
}

let encodedData = try? JSONEncoder().encode(Auth(token: "123"))
print(String(data: encodedData!, encoding: .utf8)!)

let decodedData = try? JSONDecoder().decode(Auth.self, from: encodedData!)
print(decodedData!.token)

//: [Next](@next)
