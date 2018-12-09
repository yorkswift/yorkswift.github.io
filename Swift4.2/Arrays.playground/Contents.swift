import Foundation

//creation

var christmas = [String]()

christmas.append("🎁")

christmas += ["🍫"]

let holidays = ["✈️", "👨‍👩‍👦‍👦"]
christmas += holidays

christmas.insert("🍻", at: 0)

for tradition in christmas {
    print(tradition)
}

for (index, tradition) in christmas.enumerated() {
    print("\(index): \(tradition)")
}

let tree = "🎄"
var sixTrees = Array(repeating: tree, count: 6)
christmas += sixTrees

//access

christmas[0]
christmas[0...2]

let firstCity = christmas[christmas.startIndex]

let lastCity = christmas[christmas.index(before: christmas.endIndex)]

let penultimateCity = christmas[christmas.index(christmas.endIndex, offsetBy: -2)]

let invalidIndex = holidays.index(holidays.endIndex, offsetBy: -3)
holidays.indices.contains(invalidIndex)


//methods

christmas.count
christmas.isEmpty

let santify = christmas.map { $0 + "🎅"  }
print(santify)

let numberOfTrees = christmas.reduce(0,{
    total, tradition in
    if(tradition == "🎄"){
        return total + 1
    }
    return total
})

print(numberOfTrees)

