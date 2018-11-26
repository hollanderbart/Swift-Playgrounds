//: [Previous](@previous)

import Foundation
import UIKit

extension Date
{

    func dateAt(day: Int, hours: Int, minutes: Int) -> Date
    {
        let calendar = NSCalendar(calendarIdentifier: NSCalendar.Identifier.gregorian)!

        //get the month/day/year componentsfor today's date.

        var dateComponents = calendar.components(
            [NSCalendar.Unit.year,
             NSCalendar.Unit.month,
             NSCalendar.Unit.day],
            from: self)

        //Create an NSDate for the specified time today.
        dateComponents.weekday = day
        dateComponents.hour = hours
        dateComponents.minute = minutes
        dateComponents.second = 0

        let newDate = calendar.date(from: dateComponents)!
        return newDate
    }
}


let now = Date()
let mondayFrom = now.dateAt(day: 3, hours: 8, minutes: 0)
print(mondayFrom)
let mondayTill = now.dateAt(day: 3, hours: 21, minutes: 0)

if now >= mondayFrom &&
    now <= mondayTill
{
    print("The time is between 8:00 and 16:30")
}

//: [Next](@next)
