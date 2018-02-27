import Foundation
import XCTest

struct Validator<T> {
    let closure: (T) -> Bool

    func validate(_ value: T) -> Bool {
        return closure(value)
    }

    func combine(validator: Validator<T>) -> Validator<T> {
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

XCTAssertTrue(nameValidatorNotToLargeRule.validate("Cuckoo's Nest"))
XCTAssertFalse(nameValidatorNotToLargeRule.validate("One Flew Over the Cuckoo's Nest"))

let nameValidatorNotToSmallRule = Validator<String> { (string:String) -> Bool in
    return string.count > 3
}

XCTAssertTrue(nameValidatorNotToSmallRule.validate("Cuckoo's Nest"))
XCTAssertFalse(nameValidatorNotToSmallRule.validate("One"))

// Int validator test

let ageValidatorRule = Validator<Int> {
    return $0 > 18
}

XCTAssertTrue(ageValidatorRule.validate(19))
XCTAssertFalse(ageValidatorRule.validate(18))

// Bool validator test

let notEmptyValidatorRule = Validator<String> { (string: String) -> Bool in
    return !string.isEmpty
}

XCTAssertTrue(notEmptyValidatorRule.validate("Cuckoo's Nest"))
XCTAssertFalse(notEmptyValidatorRule.validate(""))

// Combined validator test

let combinedStringsValidatorRule = nameValidatorNotToLargeRule
    .combine(validator: nameValidatorNotToSmallRule)
    .combine(validator: notEmptyValidatorRule)

XCTAssertTrue(combinedStringsValidatorRule.validate("Cuckoo's Nest"))
XCTAssertFalse(combinedStringsValidatorRule.validate(""))
XCTAssertFalse(combinedStringsValidatorRule.validate("One"))
XCTAssertFalse(combinedStringsValidatorRule.validate("One Flew Over the Cuckoo's Nest"))
