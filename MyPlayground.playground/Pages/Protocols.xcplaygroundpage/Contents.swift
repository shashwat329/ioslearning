import Foundation

protocol Animal{
    var name:String{get}
    func makesound()
}
protocol mammal:Animal{
    func givebirth()
}
protocol bird:Animal{
    func canfly()
}
class human: mammal{
    var name:String
    init(name: String) {
        self.name = name
    }
    func makesound(){
        print("human make alot of noise")
    }
    func givebirth(){
        print("give birth and not lay egg!!")
    }
    func canwalk(){
        print("yes i can walk")
    }
    
}
var h1:human = human(name: "Shashwat")
print(h1.name)
h1.makesound()
h1.givebirth()
