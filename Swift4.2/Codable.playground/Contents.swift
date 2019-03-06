import Foundation

let json = """
[
	{
		"name": "United Kingdom of Great Britain and Northern Ireland",
		"alpha2Code": "GB",
		"capital": "London",
		"region": "Europe",
		"population": 65110000,
		"latlng": [
			54.0,
			-2.0
		],
		"demonym": "British",
		"nativeName": "United Kingdom",
		"flag": "https://restcountries.eu/data/gbr.svg",
		"regionalBlocs": [
			{
				"acronym": "EU",
				"name": "European Union ??"
			}
		]
	},
    {
        "name": "Italy",
        "alpha2Code": "IT",
        "capital": "Rome",
        "region": "Europe",
        "population": 60665551,
        "latlng": [
            42.83333333,
            12.83333333
        ],
        "demonym": "Italian",
        "nativeName": "Italia",
        "regionalBlocs": [
            {
                "acronym": "EU",
                "name": "European Union"
            }
        ],
    },
]
"""

let countryRawData = Data(json.utf8)
let decoder = JSONDecoder()

/**
 
Basic Decoding

**/

struct SimpleCountry: Codable {
    var name: String
    var capital: String
}

typealias SimpleCountries = [SimpleCountry]

do {
    
    let europe = try decoder.decode(SimpleCountries.self, from: countryRawData)
    
    for county in europe {
        
        print("\(county.capital) is the capital city of \(county.name)")
    }
    
} catch {
    print("\(error)")
}

/*
Nested Decoding with custom keys
*/

struct Region : Codable {
    var acronym : String
    var name : String
}

struct Country: Codable {
    
    var regions : [Region]
    
    enum CodingKeys: String, CodingKey {
        case regions = "regionalBlocs"
    }
}

typealias Countries = [Country]

do {
    
    let europe = try decoder.decode(Countries.self, from: countryRawData)
    
    for county in europe {

        if let region = county.regions.first?.name {
            print(region)
        }
    }
    
} catch {
    print("\(error)")
}


/*
 Custom Decoding
*/

typealias GeoCountries = [GeoCountry]

struct GeoCountry: Codable {
    
    var code : String
    var location: Coordinate
    
    enum CodingKeys: String, CodingKey {
        case location = "latlng"
        case code = "alpha2Code"
    }
}

struct Coordinate: Codable {
    
    var latitude: Float?
    var longitude: Float?
    
    static let latitudeCoordinateIndex = 1
    static let longitudeCoordinateIndex = 2
    
    public init(from decoder: Decoder) throws {
        
        var coordinates = try decoder.unkeyedContainer()
        
        while (!coordinates.isAtEnd) {
            
            let coordinate = try coordinates.decode(Float.self)
            
            if(coordinates.currentIndex == Coordinate.latitudeCoordinateIndex){
                latitude = coordinate
            } else if(coordinates.currentIndex == Coordinate.longitudeCoordinateIndex){
                longitude = coordinate
            }
        }
    
    }
}

do {
    
    let europe = try decoder.decode(GeoCountries.self, from: countryRawData)
    
    enum DecodingError: Error {
        case message(String)
    }
    
    for county in europe {
        
        guard let long = county.location.longitude else { throw DecodingError.message("Missing longitude")  }
        guard let lat = county.location.latitude else { throw DecodingError.message("Missing latitude")  }
        
        print("\(county.code) = (\(long),\(lat))")

    }
    
} catch {
    print("\(error)")
}

/**
 
 Source:
 https://restcountries.eu/rest/v2/region/europe
 
 **/
