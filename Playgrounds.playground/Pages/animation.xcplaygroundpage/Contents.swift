//: [Previous](@previous)

import Foundation
import PlaygroundSupport

extension UIView {
    func setAnchorPoint(_ point: CGPoint) {
        var newPoint = CGPoint(x: bounds.size.width * point.x, y: bounds.size.height * point.y)
        var oldPoint = CGPoint(x: bounds.size.width * layer.anchorPoint.x, y: bounds.size.height * layer.anchorPoint.y);

        newPoint = newPoint.applying(transform)
        oldPoint = oldPoint.applying(transform)

        var position = layer.position

        position.x -= oldPoint.x
        position.x += newPoint.x

        position.y -= oldPoint.y
        position.y += newPoint.y

        layer.position = position
        layer.anchorPoint = point
    }
}

let box = UIView(frame: CGRect(x: 50, y: 50, width: 256, height: 256))
box.backgroundColor = .blue
PlaygroundPage.current.liveView.addSubview(box)

box.setAnchorPoint(CGPoint(x: 0, y: 0))

UIView.animate(withDuration: 3) {
    box.transform = CGAffineTransform(rotationAngle: .pi)
}

//: [Next](@next)
