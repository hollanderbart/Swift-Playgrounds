//: [Previous](@previous)

import Foundation

let date = Date()
let calendar = Calendar.current
let formatter = DateFormatter()
formatter.dateFormat = "yyyy-MM-DD"
let fromDate = formatter.date(from: "2016-01-08")!
let toDate = formatter.date(from: "2016-12-08")!

//let date = calendar.date

//: [Next](@next)
