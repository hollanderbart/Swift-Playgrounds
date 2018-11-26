//: [Previous](@previous)

import Foundation

enum Result<Element> {
    case success(Element)
    case error(Error)
}

func getTitleLabelFromBackend() -> Result<String> {
    return .success("YEAH")
}

var titleLabel = ""

switch getTitleLabelFromBackend() {
case .success(let title):
    titleLabel = title
case .error(let error):
    // errorHandler(error)
    break
}

