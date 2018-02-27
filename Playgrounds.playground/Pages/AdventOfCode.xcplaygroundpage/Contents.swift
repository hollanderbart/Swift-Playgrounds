//: [Previous](@previous)

import Foundation

guard let fileURL = Bundle.main.url(forResource: "AdventOfCode2017-7", withExtension: "txt") else { fatalError() }
let content = try String(contentsOf: fileURL, encoding: .utf8)

struct Tree {
    var name: String
    var weight: String
    var branches: [String]?

    init() {
        name = ""
        weight = ""
        branches = nil
    }
}

var trees: [Tree] = []

let result = content.components(separatedBy: "\n")

var regexResult: [String] = []
//result.forEach { (element) in
//    regexResult.append(poorMansRegex(element))
//}

func poorMansRegex(_ input: String) -> String {
    return input.replacingOccurrences(of: ", ", with: ",").replacingOccurrences(of: " -> ", with: " ").replacingOccurrences(of: "(", with: "").replacingOccurrences(of: ")", with: "")
}

func createTrees(_ input: [String]) {
    input.forEach { (element) in
        let occurrences = element.components(separatedBy: " ")
        var tree = Tree()
        for (index, element) in occurrences.enumerated() {
            switch index {
            case 0:
                tree.name = element
            case 1:
                tree.weight = element
            case 2:
                tree.branches = element.components(separatedBy: ",")
            default:
                fatalError("should not happen")
            }
        }
        trees.append(tree)
    }
}

func scanBranches(_ trees: [Tree]) {
    trees.forEach { (tree) in
        if let branch = tree.branches {
            if scanWeightFromName(branch[0], trees: trees) != scanWeightFromName(branch[1], trees: trees) {
                print(tree.name)
            }
        }
    }
}

func scanWeightFromName(_ name: String, trees: [Tree]) -> String? {
    for tree in trees.enumerated() where tree.element.name == name {
        return tree.element.weight
    }
    return ""
}
createTrees(regexResult)
scanBranches(trees)

//: [Next](@next)
