//: [Previous](@previous)

import Foundation
import UIKit

class Hello: UIViewController {

    func special() {
        doSomeThingSpecial()
        doSomeThingOtherSpecial()
    }
}

private extension UIViewController {
    func doSomeThingSpecial() {

    }
}

extension UIViewController {
    fileprivate func doSomeThingOtherSpecial() {

    }
}

struct AStruct {
    func test() {

    }
}

// also works on structs

extension AStruct {
    func hello() {
        let astruct = AStruct()
        astruct.test()
    }
}

//: [Next](@next)
