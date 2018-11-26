//: [Previous](@previous)

import Foundation

enum Localized: String, CustomStringConvertible {
    var description: String {
        return getLocalizedString()
    }

    case PinPadTitle

    func getLocalizedString() -> String {
        return Bundle.main.localizedString(forKey: self.rawValue,
                                           value: getFrameworkString(),
                                           table: nil)
    }

    func getFrameworkString() -> String {
        ProcessInfo.processInfo.environment["EXECUTABLE_NAME"]!
        return NSLocalizedString(self.rawValue,
                                 tableName: nil,
                                 bundle: Bundle(identifier: ProcessInfo.processInfo.environment["EXECUTABLE_NAME"]!)!,
                                 value: "DEFAULT VALUE",
                                 comment: "")
    }
}

//: [Next](@next)
