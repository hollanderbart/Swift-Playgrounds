//: [Previous](@previous)

import Foundation
import UIKit

typealias LoginFailureReason = String

enum AnalyticsEvent {
    case loginScreenViewed
    case loginAttempted
    case loginFailed(reason: LoginFailureReason)

    func log() {
        switch self {
        case .loginScreenViewed, .loginAttempted:
            print(String(describing: self))
        case .loginFailed(let reason):
            print("Login failed with reason: \(reason)")
        }
    }
}

class MessageListViewController: UIViewController {

    var analytics: AnalyticsEvent {
        didSet {
            self.analytics.log()
        }
    }

    init() {
        self.analytics = .loginAttempted
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func loginFailed(reason: String) {
        analytics = .loginFailed(reason: reason)
    }
}

let messageController = MessageListViewController()
messageController.loginFailed(reason: "Failed loading data")

//: [Next](@next)
