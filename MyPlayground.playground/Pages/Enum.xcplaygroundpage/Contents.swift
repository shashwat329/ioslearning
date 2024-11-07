//learning about enums
//lecture 1: enum with rawvalues
enum Weekday: Int{
    case monday = 1
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
    case sunday
}
print(Weekday.sunday.rawValue)
enum direction: Int{
    case north = 0, south, east, west
}
enum Alpha:Int{
    case a=1, b, c, d, e, f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z
}
print(direction.east.rawValue)
print("the position of s is \(Alpha.s.rawValue)")
//lecture enum with associate value
enum Request{
    case get(url:String)
    case post(url:String, parameters :[String : String] )
}
func makeRequest(_ request: Request){
    switch request{
    case .get(let url):
        print(url)
    case .post(let url, let parameters):
        print(parameters)
        print(url)
        
    }
}
enum Result<T>{
    case success(T)
    case failure(Error)
}

func fetchData<T>(_ url: String, completion: @escaping (Result<T>) -> Void){
    let result: Result<T> = .success(["a":1,"b":2] as! T)
    completion(result)
}
//nested enum
enum Restaurant{
    enum menu{
        case starter, main, dessert
    }
    case rating, location
    case menuItem(menu)
}
print(Restaurant.menu.starter)
//enum with protcol conforms
enum Fruits: Equatable{
    case apple,banana,cherry
}
let fruit1: Fruits = .apple
let fruit2: Fruits = .apple
if fruit1 == fruit2{
    print("both fruits are same type")
}
else{
    print("both fruits are different")
}
//Enum with static function
enum httpMethod{
    case get
    case post
    case put
    case delete
     func title() ->String{
        switch self{
        case .get:
            return "GET"
        case .post:
            return "POST"
        case .put:
            return "PUT"
        case .delete:
            return "DELETE"
        }
    }
    static func allMethods() -> [httpMethod]{
        return [.get, .post, .put, .delete]
    }
}
let https = httpMethod.allMethods()
let httpsmeth = https.count
print(httpsmeth)
    //enum with compuated property
enum Weather{
    case sunny(Double)
    case rainy(Double)
    
    var isniceWeather:Bool{
        switch self{
        case.rainy(let rain):
            return rain<10
        case .sunny(let temp):
            return temp>10
        }
    }
}
let weatherstatus = Weather.rainy(2)
print(weatherstatus.isniceWeather)
