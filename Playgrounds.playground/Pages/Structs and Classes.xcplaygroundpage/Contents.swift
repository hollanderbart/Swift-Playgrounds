//: Playground - noun: a place where people can play

import UIKit

let variable: Any = 1243
var str = "Hello, playground, \n \(String(describing: variable))"



let person1 = Person(name: "Tjabbe1", age: 15)
print("\(person1.name) \(person1.age)")

// through a extension, you can add new initializers for a Struct
extension Person {
    init(name: String) {
        self.name = name
        self.age = 10
    }
}

let person2 = Person(name: "Tjabbe2")
print("\(person2.name) \(person2.age)")

class Stream {
    
    let bufferSize: Int
    let offset: Int
    
    init(bufferSize: Int, offset: Int) {
        self.bufferSize = bufferSize
        self.offset = offset
    }
    
    // Convenience initializers.
    convenience init(bufferSize: Int) {
        self.init(bufferSize: bufferSize, offset: 0)
    }
    
    convenience init(offset: Int) {
        self.init(bufferSize: 2048, offset: offset)
    }
}

final class StreamReader: Stream {
    
    func read() {}
}

let readerA = StreamReader(bufferSize: 10, offset: 10)
let readerB = StreamReader(bufferSize: 512)
let readerC = StreamReader(offset: 256)

class FileStream: Stream {
    
    var filePath: String
    
    init(filePath: String) {
        self.filePath = filePath
        super.init(bufferSize: 2048, offset: 0)
    }
    
    override init(bufferSize: Int, offset: Int) {
        self.filePath = "11"
        super.init(bufferSize: bufferSize, offset: offset)
    }
}

let streamA = FileStream(filePath: "")
let streamB = FileStream(bufferSize: 3)



let targetHeight = 180 // in centimers
if 12...180 ~= targetHeight {
    print("Friend is tall enough for the rollercoaster.")
}

print("end")

let totalComponents = 3
for component in 0..<totalComponents {
    print(component)
}



