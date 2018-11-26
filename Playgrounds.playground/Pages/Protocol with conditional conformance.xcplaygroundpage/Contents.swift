//: [Previous](@previous)

import Foundation
import UIKit

protocol AlertPresentable {
    func presentAlert(message: String)
}

extension AlertPresentable where Self: UIViewController {
//extension AlertPresentable {
    func presentAlert(message: String) {
        let alert = UIAlertController(title: "Alert",
                                      message: message,
                                      preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK",
                                      style: .default,
                                      handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}

extension UIViewController: AlertPresentable {}

let settingViewController = UIViewController()
settingViewController.presentAlert(message: "Do you want to save this setting?")

// Be aware; with great power comes..
// You'll change the API for everyone, everywhere in your codebase
// How do you know this exists?
// Because of this extension, the class declaration itself is not enough to know if that's the whole implementation
//: [Next](@next)
