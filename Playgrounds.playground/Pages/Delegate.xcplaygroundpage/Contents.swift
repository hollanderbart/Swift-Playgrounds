//: [Previous](@previous)

import Foundation
import UIKit

protocol WheresMyRideDetailProtocol: AnyObject {

    func completedWithShowingDetail()
}

class WheresMyRideViewController: UIViewController, WheresMyRideDetailProtocol {

    let detailViewController: WheresMyRideDetailViewController

    init() {
        self.detailViewController = WheresMyRideDetailViewController()
        print("Detail instance created")
        super.init(nibName: nil, bundle: nil)
        self.detailViewController.delegate = self
        print("Delegation reference from super to detail created")
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func presentDetail() {
        self.present(detailViewController, animated: true, completion: nil)
    }

    // MARK: - WheresMyRideDetailProtocol

    func completedWithShowingDetail() {
        print("Completed showing detail. Back to super class.")
    }
}

class WheresMyRideDetailViewController: UIViewController {

    weak var delegate: WheresMyRideDetailProtocol?

    init() {
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func userDetailShown() {
        print("Detail doesn't hold an reference from super. Call delegate to whoever has set the delegate")
        delegate?.completedWithShowingDetail()
    }
}

let superViewController = WheresMyRideViewController()
superViewController.presentDetail()
superViewController.detailViewController.userDetailShown()

//: [Next](@next)
