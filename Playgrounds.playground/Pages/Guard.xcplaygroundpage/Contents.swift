//: [Previous](@previous)

import Foundation
import UIKit

let boldFontColor: UIColor? = nil
let italicFontColor: UIColor? = .green

func parseColor(color: UIColor?) -> UIColor {
    guard let parsedColor = color else {
        fatalError("should have a color")
    }
    return parsedColor
}

//parseColor(color: boldFontColor)
parseColor(color: italicFontColor)

//: [Next](@next)
