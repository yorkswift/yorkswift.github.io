import Foundation

//creation

var cities = [String]()

cities.append("Rovaniemi")

cities += ["Tornio"]

let moreCities = ["Kemi", "Kemijärvi"]
cities += moreCities

cities.insert("Enontekiö", at: 0)

for city in cities {
    print(city)
}

for (index, city) in cities.enumerated() {
    print("\(index): \(city)")
}

let tree : Character = "🎄"
var sixTrees = Array(repeating: tree, count: 6)


//access

cities[0]
cities[0...2]

let firstCity = cities[cities.startIndex]

let lastCity = cities[cities.index(before: cities.endIndex)]

let penultimateCity = cities[cities.index(cities.endIndex, offsetBy: -2)]

let invalidIndex = moreCities.index(moreCities.endIndex, offsetBy: -3)
moreCities.indices.contains(invalidIndex)


//methods

cities.count
cities.isEmpty

let initials = cities.map { $0.first! }
print(initials)

let allLetterCount = cities.reduce(0,{ $0 + $1.count })
let allLetterCountVerbose = cities.reduce(0,{ total, city in total + city.count })
print(allLetterCount,allLetterCountVerbose)

