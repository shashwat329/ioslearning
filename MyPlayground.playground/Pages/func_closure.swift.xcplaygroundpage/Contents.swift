func greet( name:String,age: Int)->String{
    return "Hello \(name), you are \(age) years old";
}
func greet(person name:String,from Country: String)->String{
    return"hello \(name), you are from \(Country)";
}
func greet(_ name: String,_ country:String)->String{
    return "hello \(name), you are from \(country)";
}
let greeting1 = greet(name: "shashwat1", age: 21);
let greeting2 = greet(person: "shashwat2", from: "india");
let greeting3 = greet("shashwat3","india");

print(greeting1)
print(greeting2)
print(greeting3)

func swapfunc( num1: inout Int,num2: inout Int) {
    let temp = num1;
    num1 = num2
    num2 = temp
}
var num1 = 10;
var num2 = 20
swapfunc(num1: &num1, num2: &num2);
print("num1 \(num1) and num2 \(num2)")

let swapnum: (inout Int,inout Int)-> Void = {(num1: inout Int,num2: inout Int) in
    let temp = num1;
    num1 = num2
    num2 = temp
}
swapnum(&num1, &num2);
print("num1 \(num1) and num2 \(num2)")
func multipe(_ num1: Int,_ num2: Int)->Int{
    return num1*num2
}

let multiplyclousure : (Int,Int)->Int = {(num1:Int,num2: Int) -> Int in
    return num1*num2;
}

let multiplyclousure2 : (Int,Int)->Int = {
    $0*$1
}
print("multiple of 10 and 20 is :\(multipe(10,20))")
print("multiple of 10 and 20 is :\(multiplyclousure(30,30))")
print("multiple of 10 and 20 is :\(multiplyclousure2(40,40))")

//trailing closure
func performaction(action:()->Void){
    
    action()
}
performaction {
    print("hello shashwat action is performed")
}
