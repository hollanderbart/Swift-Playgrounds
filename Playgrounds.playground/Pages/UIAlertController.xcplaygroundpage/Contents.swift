//: [Previous](@previous)

import Foundation
import UIKit
import PlaygroundSupport

let alertController = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
let action = UIAlertAction(title: "some action", style: .cancel, handler: nil)

alertController.addAction(action)
PlaygroundPage.current.liveView = alertController
//: [Next](@next)
