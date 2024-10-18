let n = 10
let m = 5
let fav = false
print(n+m)
print(n-m)
print(m*n)
print(n/m)
func isFavorite(_ fav: Bool) -> String {
        if fav {
        return "This is a favorite"
    } else {
        return "This is not a favorite"
    }
}
func isfav(_ fav: Bool) -> String {
    if fav {
        return"this is fav";
    }else{
        return "this is not fav"
    }
}
func twosum(num1: Int,num2: Int)->Int{
    return num1+num2;
}

let ans = twosum(num1: 21, num2: 12)
print(ans)

