import Cocoa

enum Colours : String, CaseIterable {
    case red
    case blue
    case yellow
    case green
    case purple
    case orange
}

struct GuessResult {
    var validPosition : Int
    var validColour : Int
}

func generateSecretCode() -> [Colours]{
    
    var randomColors = [Colours]()

    for _ in 1...4 {
        if let randomColour = Colours.allCases.randomElement() {
            randomColors.append(randomColour)
        }
    }

    return randomColors
    
}

func score(for guess : [Colours], with secret: [Colours]) -> GuessResult {
    
    var validPositions = 0
    var validColours = 0
    
    validPositions = 0
    for (index,colour) in secret.enumerated() {
        
        if(guess[index] == colour){
            validPositions += 1
        }
    
    }
    
    var secretsFound = secret
    for colour in guess {
        if let index = secretsFound.firstIndex(of: colour){
            validColours += 1
            secretsFound.remove(at: index)
        }
    }
    
    validColours -= validPositions
    
    return GuessResult(validPosition: validPositions, validColour: validColours)
}

func findAllCombinations(of guess: [Colours], with result : GuessResult, all: [[Colours]]) -> [[Colours]]{
    
    var sameResults = [[Colours]]()
    
    for combo in all {
        let currentScore = score(for: combo, with: guess)
        
        if(currentScore.validColour == result.validColour && currentScore.validPosition == result.validPosition){
            
            sameResults.append(combo)
            
        }
    }
    
    return sameResults
    
}

let secret = generateSecretCode()
let all = Combinatorics.permutationsWithRepetitionFrom(Colours.allCases, taking: 4)

var found = all
if var guess = all.randomElement() {
    
    var guessScore = score(for: guess, with: secret)
    
    while guessScore.validPosition != 4 {
        
        found = findAllCombinations(of: guess, with: guessScore, all: found)
        found.count
        
        if let newGuess = found.randomElement() {
            
            guess = newGuess
            guessScore = score(for: guess, with: secret)
            
        }
        
        
    }
    
    guess

}
