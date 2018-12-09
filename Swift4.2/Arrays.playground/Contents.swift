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
