import Foundation

struct GiftWrappedBox {
    
    var width = 0.0, height = 0.0, depth = 0.0, present : String?
    var volume: Double {
        return width * height * depth
    }
    
    func open(){
        
        guard let present = self.present else {
            print("Empty")
            return
        }
        print(present)
        
    }
    
    mutating func wrap(present:String){
        self.present = present
    }
}


var 🎁 = GiftWrappedBox(width: 4.0, height: 5.0, depth: 2.0, present: nil)
🎁.volume
🎁.open()

🎁.wrap(present: "🚂")

🎁.open()

