//generic function
import Foundation
// this is a generic func
func getFirstElement<T>(_ array:[T]) ->T?{
    return array.first
}
let names:[String] = ["shsh","rahul","ram","kamal"]
let numbers:[Int] = [1,2,3,4,5]
if let name = getFirstElement(names){
    print(name)
}
if let number = getFirstElement(numbers){
    print("\(number)")
}
//creating generic struct
struct GenericStruct<T>{
    var value:T
    func getvalue(){
        print(value)
    }
    mutating func setvalue(_ svalue:T){
        value = svalue
    }
}
GenericStruct<String> (value: "hello").getvalue()
//creating generic class
class Concentation<T>{
    var valuelist:[T] = []
    func appendlist(_ value:T){
        valuelist.append(value);
    }
    func poplist(){
        valuelist.popLast()
    }
}
var ls:[String] = ["hello","world","swift"]
let addls = Concentation<String>()
addls.appendlist("swift")
addls.appendlist("world")
addls.appendlist("hello")
addls.poplist()
print(addls.valuelist)

//generic are constrain by using protocol
//if we want to use codable protocol in our generic function then we need to add protocol in generic function
