//nil coalesing
import Foundation
var name : String?
print(name ?? "default")

//optianl chaining
class Person{
    var name: String
    var age:Int?
    var address:Address?
    init(name:String ,age: Int,address: Address){
        self.name = name
        self.age = age
        self.address = address
    }
}
class Address{
    var street:String
    var city:String
    var lankmark:String?
    init(street:String,city:String,lankmark:String?){
        self.street = street
        self.city = city
        self.lankmark = lankmark
        
    }
}
let person:Person? = Person(name:"shashwat",age:2,address:Address(street:"abc",city:"xyz", lankmark: nil))
if let landmark = person?.address?.lankmark{
    print(landmark)
}
//else{
//    print("you dont have a landmark")
//}

//force unwrapping
let url = URL(filePath:"https://shashwatt.in")!
print(url)
var user:String = "Shashwat"
print("User:", user)
