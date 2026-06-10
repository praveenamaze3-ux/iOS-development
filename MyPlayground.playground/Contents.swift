let celsiusTEMP:Double = 25.0
let fahrenheitTEMP=(celsiusTEMP*9/5)+32
print("\(celsiusTEMP)°C is equal to \(fahrenheitTEMP)°F")

for number in 1...100{
    if number.isMultiple(of: 3) && number.isMultiple(of: 5){
        print("FizzBuzz")
    }
    else if number.isMultiple(of: 3){
        print("Fizz")
    }
    else if number.isMultiple(of: 5){
        print("Buzz")
    }
    else{
        print(number)
    }
}
