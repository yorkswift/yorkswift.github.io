import Cocoa

enum ModuleType : String, CaseIterable, Codable {
    case Centre
    
    case QuadrantI
    case QuadrantII
    case QuadrantIII
    case QuadrantIV
}

enum ModuleCategory : String, CaseIterable, Codable {
    
    case accomodation
    case defence
    case education
    case infrastructure
    case recreation
    
}

struct SpaceStationModule {
    var moduleType : ModuleType
    var moduleCategory : ModuleCategory?
}

extension SpaceStationModule : Hashable {
    func hash(into hasher: inout Hasher) {
        hasher.combine(moduleType.initial)
        hasher.combine(moduleCategory)
    }
}

extension SpaceStationModule: Equatable {
    static func == (lhs: SpaceStationModule, rhs: SpaceStationModule) -> Bool {
        return lhs.moduleType == rhs.moduleType && lhs.moduleCategory == rhs.moduleCategory
    }
}
