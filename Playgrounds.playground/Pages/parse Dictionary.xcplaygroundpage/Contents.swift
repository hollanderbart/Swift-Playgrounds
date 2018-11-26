//: [Previous](@previous)

import Foundation

var options: [String: Any?] = [
    "showSpinner": true,
    "payload": ""
]

func parsePayload() {

    guard let _payload = options["payload"] else {
        return
    }
    print("SUCCESS")
}
parsePayload()

//: [Next](@next)
