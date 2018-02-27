//: [Previous](@previous)

import Foundation

public enum ValidatorResult {
    case success
    case warning(String)
}

extension ValidatorResult: Equatable {
    public static func ==(lhs: ValidatorResult, rhs: ValidatorResult) -> Bool {
        switch (lhs, rhs) {
        case (.warning(let warningMessageA), .warning(let warningMessageB)):
            return warningMessageA == warningMessageB
        case (.success, .success):
            return true
        default:
            return false
        }
    }
}

struct Validator<T> {
    private var rules = [Rule<T>]()
    
    init() { }
    
    func rule(_ rule: Rule<T>) -> Validator<T> {
        var clone = self
        var newRules = clone.rules
        newRules.append(rule)
        clone.rules = newRules
        return clone
    }
    
    func run(_ string: String) -> [ValidatorResult] {
        var results: [ValidatorResult] = []
        rules.forEach { (rule) in
            if let validateRule = rule.validate as? (String) -> Bool {
                let result = validateRule(string) ? ValidatorResult.success : ValidatorResult.warning(rule.failure)
                results.append(result)
            }
        }
        return results
    }
    
}

struct Rule<T>: Any {
    let validate: (T) -> Bool
    var failure: String
    
    init(onFail: String, validate: @escaping (T) -> Bool) {
        self.failure = onFail
        self.validate = validate
    }
}

let validator = Validator<String>()
    .rule(
        Rule<String>(onFail: "The length is too short") { value in
            return value.count > 2
        }
    ).rule(
        Rule<String>(onFail: "The length is too long") { value in
            return value.count < 100
        }
    ).rule(
        Rule<String>(onFail: "The length is too short") { value in
            return value.count > 4
        }
    )

let result = validator.run("Dfi")

//: [Next](@next)

