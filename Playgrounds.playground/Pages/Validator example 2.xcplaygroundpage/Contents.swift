import Foundation
import XCTest

struct Validator<T> {
    let closure: (T) -> Bool
    
    func validate(_ value: T) -> Bool {
        return closure(value)
    }

    func combine(validator: Validator<T>) -> Validator<T> {
        let array: [Bool]
        let combinedValidator = Validator<T> { (value: T) in
            return self.validate(value) && validator.validate(value)
        }
        return combinedValidator
    }
}

// String validator test
let nameValidatorNotToLargeRule = Validator<String> { (string:String) -> Bool in
    return string.count < 20
}

let result = nameValidatorNotToLargeRule.validate("Cuckoo's Nest")
let result2 = nameValidatorNotToLargeRule.validate("One Flew Over the Cuckoo's Nest")
