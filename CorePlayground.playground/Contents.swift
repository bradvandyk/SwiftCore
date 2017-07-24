//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

extension Date {
    init(month:Int, day:Int, year:Int) {
        // Specify date components
        var dateComponents = DateComponents()
        dateComponents.year = year
        dateComponents.month = month
        dateComponents.day = day
//        dateComponents.timeZone = TimeZone(abbreviation: "JST") // Japan Standard Time
        dateComponents.hour = 0
        dateComponents.minute = 0
        
        // Create date from components
        let userCalendar = Calendar.current // user calendar
        let someDateTime = userCalendar.date(from: dateComponents)
        
        self.init(timeIntervalSinceNow: someDateTime!.timeIntervalSinceNow)
    }
}

extension String {
    init(with myInt:Int) {
        self.init()
    }
}

let mydate = Date(month: 7, day: 31, year: 2017)
print (str)

extension UIColor {
    convenience init(r: UInt8, g: UInt8 , b: UInt8 , a: UInt8) {
        self.init(red: CGFloat(r)/255, green: CGFloat(g)/255, blue: CGFloat(b)/255, alpha: CGFloat(a)/255)
    }
    convenience init(r: Double, g: Double , b: Double , alpha: Double) {
        self.init(red: CGFloat(r), green: CGFloat(g), blue: CGFloat(b), alpha: CGFloat(alpha))
    }
}

let myGreenColor1 = UIColor(r: 0, g: 255, b: 0, a: 255)

print (str)
