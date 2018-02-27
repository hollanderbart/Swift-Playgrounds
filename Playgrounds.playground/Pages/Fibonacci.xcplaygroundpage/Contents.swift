//: [Previous](@previous)

import Foundation

func fib1(n: UInt) -> UInt {
    if n < 2 {
        return n
    }
    return fib1(n: n - 1) + fib1(n: n - 2)
}

fib1(n: 8)

var fibMemo: [UInt: UInt] = [0: 0, 1: 1]
func fib2(n: UInt) -> UInt {
    if let result = fibMemo[n] {
        return result
    }
    return fib2(n: n - 1) + fib2(n: n - 2)
}
fib2(n: 8)


func fib3(n: UInt) -> UInt {
    guard n != 0 else { return n }
    var last: UInt = 0, next: UInt = 1
    for _ in 1..<n {
        (last, next) = (next, last + next)
    }
    return next
}
fib3(n: 30)

//: [Next](@next)
