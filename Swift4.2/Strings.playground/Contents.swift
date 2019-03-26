import Foundation

//Strings


// Creation

var santaClaus = ""

santaClaus = "Ho"
santaClaus += ", ho, ho! "
    
let greetings = "Mérry Christmas!"
greetings.lengthOfBytes(using: .utf8)
greetings.count
santaClaus = santaClaus + " " + greetings

let krisKringle: Character = "🎅"

santaClaus.append(krisKringle)

 

// conversion
let day: NSNumber = 25
let ordinalFormatter = NumberFormatter()
ordinalFormatter.numberStyle = .ordinal
let dayString = ordinalFormatter.string(from: day)


let today = Date()

let calendar = Calendar.current

let xmasDay = calendar.date(from: DateComponents(calendar: calendar, year: 2018, month: 12, day: 25))!

if let days = calendar.dateComponents([.day], from: today, to:xmasDay).day {
    
   let plural = (days > 1) ? "s" : ""
    
    _ = "\(days) day\(plural) till Christmas"
}

//let index = greeting.index(greeting.startIndex, offsetBy: 7)
//greeting[index]”

//methods

//hasPrefix
//hasSuffix
if santaClaus.isEmpty { // string is empty
    
}

