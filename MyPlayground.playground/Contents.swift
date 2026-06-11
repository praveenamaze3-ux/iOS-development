//1.conversion of celcius to fahrenheit:
let celsiusTEMP:Double = 25.0
let fahrenheitTEMP=(celsiusTEMP*9/5)+32
print("\(celsiusTEMP)°C is equal to \(fahrenheitTEMP)°F")

//2.print strings:
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

import Foundation

enum SquareRootError: Error {
    case OutOfBounds
    case noRoot
}

func findSquareRoot(of number: Int) throws -> Int {
    if number < 1 || number > 10000 {
        throw SquareRootError.OutOfBounds
    }
    for i in 1...100 {
        if i * i == number {
            return i
        }
    }
    throw SquareRootError.noRoot
}

print("---testing for valid---")
do{
    let result1 = try findSquareRoot(of: 144)
    print("The square root of 144 is \(result1)")
    let result2 = try findSquareRoot(of: 10_000)
    print("The square root of 10_000 is \(result2)")
} catch {
    print("An unexpected error occured")
}

print("---Testing error handling---")
do{
    let _ = try findSquareRoot(of: 15_000)
}catch SquareRootError.OutOfBounds{
    print("Error caught : Number is out of bounds")
}catch {
    print("Other error.")
}

do {
    let _ = try findSquareRoot(of: 50)
}catch SquareRootError.noRoot {
    print("Error caught : no square root value for 50")
}catch {
    print("other error.")
}
