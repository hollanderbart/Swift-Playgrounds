//: [Previous](@previous)

import Foundation
import UIKit


struct INGIcon {
    var name: String

    struct Menu {
        static let hamburger = INGIcon(name: "hamburgerIcon")
    }
}

func displayIcon(icon: INGIcon) {
//    print(image.name)
}


displayIcon(icon: INGIcon.Menu.hamburger)


/// #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
///
/// - Returns: color
func test() -> UIColor {
    return #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
}
let color = UIColor.black
//: [Next](@next)
