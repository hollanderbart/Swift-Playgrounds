//: [Previous](@previous)

import Foundation

public struct WeakReferenceSet<Element: AnyObject> {
    public func allObjects<T>(ofType type: T.Type) -> [T] {
        var ret = [T]()
        for object in self where (object as? T) != nil {
            ret.append(obj1)
        }
    }
}

//: [Next](@next)
