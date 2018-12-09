import Foundation

enum Reindeer : Int {
    
    case dasher = 1 , dancer, prancer, vixen, comet, cupid, dunder, blixem, rudolph
    
}

enum NoseColour {
    case 🔴
    case black
}

let reindeers = [Reindeer.rudolph,Reindeer.dasher]

func noseColour(for reindeer:Reindeer) -> NoseColour {
    
    switch reindeer {
    case .rudolph:
        return .🔴
        
    default:
        return .black
    }
}

for reindeer in reindeers {
    
    print(reindeer.rawValue, reindeer, noseColour(for:reindeer))
}


