import Foundation


class Toy {
    class func classMethod(){
        print("I'm a class method")
    }
}

class Train : Toy {
    var topSpeed: Int  = 0
    
    func soundHorn() -> String {
        return "Chu chu"
    }
}

class Mallard : Train {
    
    
    
}


Mallard.classMethod()


let present = Mallard()
present.soundHorn()


