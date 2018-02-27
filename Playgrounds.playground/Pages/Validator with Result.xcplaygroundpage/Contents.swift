//: [Previous](@previous)

import Foundation

public enum ValidatorResult {
    case success
    case warning(String)
}

struct Validator<T> {
    let closure: (T) -> ValidatorResult
    
    func validate(_ value: T) -> ValidatorResult {
        return closure(value)
    }
    
    func combine(validator: Validator<T>) -> Validator<T> {
        let combinedValidator = Validator<T> { (value: T) in
            switch self.validate(value).first {
                case .success?:
                    let result = validator.validate(value).append(ValidatorResult.success)
                case .warning(let warningMessage)?:
                    warningArray.append(ValidatorResult.warning(warningMessage))
                    return self.validate(value)
                case .none:
                    break
            }
        }
        return combinedValidator
    }
}

// String validator test
//let nameValidatorNotToLargeRule = Validator<String> { (string:String) -> Bool in
//    return string.count < 20
//}

let nameValidatorRuleToLong = Validator<String> { (string: String) -> ValidatorResult in
    if string.count < 20 {
        return .success
    }
    return .warning("Should be less than 20 characters")
}

let nameValidator = nameValidatorRuleToLong.validate("Halil")

let nameValidatorNotToSmallRule = Validator<String> { (string:String) -> ValidatorResult in
    if string.count > 3 {
        return .success
    }
    return .warning("Should be higher than 3 characters")
}

let resultNameValidator = nameValidatorNotToSmallRule.validate("dd")
switch resultNameValidator.first {
    case .success?:
        print("OK")
    case .warning(let warningMessage)?:
        print(warningMessage)
    case .none:
        break
}

let nameValidatorFirstThreeCapital = Validator<String> { (string: String) -> ValidatorResult in
    let index = string.index(string.startIndex, offsetBy: 3)
    let substring = string[..<index]
    if substring.uppercased() == substring {
        return .success
    }
    return .warning("First three should be capital")
}

let test = nameValidatorFirstThreeCapital.validate("FFFgdfg")
switch test.first {
case .success?:
    print("OK")
case .warning(let warning)?:
    print(warning)
case .none:
    break
}

let result = nameValidatorRuleToLong
    .combine(validator: nameValidatorNotToSmallRule)
    .combine(validator: nameValidatorFirstThreeCapital)
    .validate("SShehdsifihusahf")

result.forEach({ (result) in
    switch result {
        case .success:
            print("OK")
        case .warning(let warningMessage):
            print(warningMessage)
    }
})

//: [Next](@next)




