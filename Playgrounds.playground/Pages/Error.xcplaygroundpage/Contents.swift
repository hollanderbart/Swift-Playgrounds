//: [Previous](@previous)

import Foundation

enum PlaygroundError: Error {
    case invalidInput
    case offByOne
}

/// Mock function test the error functionality
///
/// - Parameter needToThrow: Boolean to indicate if we want to throw
/// - Returns: String
/// - Throws: When `needToThrow` is true, the function will throw a `PlaygroundError`
func loadSomeImportantThing(needToThrow: Bool) throws -> String {
    if needToThrow {
        throw PlaygroundError.invalidInput
    }
    return "No throw"
}

// Force try it.
// I assume that the function doesn't throw
// But when it does it will return an error
// Uncomment next line
//try! loadSomeImportantThing(needToThrow: true)

// try?
// Optional try the function. If the try function does trow, return a nil, otherwise return no error
try? loadSomeImportantThing(needToThrow: false)
try? loadSomeImportantThing(needToThrow: true)

guard let result = try? loadSomeImportantThing(needToThrow: false) else {
    // There is no error information available here
    // You only know there has happened a error
    fatalError()
}

do {
    try loadSomeImportantThing(needToThrow: false)
}
catch(let error) {
    print(error)
}

do {
    try loadSomeImportantThing(needToThrow: true)
}
catch(let error) {
    print(error)
}

//: [Next](@next)
