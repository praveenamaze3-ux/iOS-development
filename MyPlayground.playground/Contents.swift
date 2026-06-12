//1.conversion of celcius to fahrenheit: -------------
let celsiusTEMP:Double = 25.0
let fahrenheitTEMP=(celsiusTEMP*9/5)+32
print("\(celsiusTEMP)°C is equal to \(fahrenheitTEMP)°F")

//2.print strings: -----------------------------------
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

//3.Error handling and functions code : --------------
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

//4.Closures : ----------------------------------------
let luckyNumbers = [7,4,38,21,16,15,12,33,31,49]
let result = luckyNumbers.filter{ !$0.isMultiple(of: 2 )}.sorted().map{ "\($0) is a lucky number" }.forEach { print($0) }
print(result)

//5.Baisc Collections : -------------------------------
let studentScore: [String: Double] = [
    "Nick": 81.5,
    "Jack": 91.5,
    "Mike": 95.1,
    "luke": 80.9
]
let sortedOrder = studentScore.sorted { $0.value > $1.value }
print("---Students Grade Tracker---")
for (index,Student) in sortedOrder.enumerated(){
    print("Rank \(index+1): \(Student.key) - \(Student.value)%")
}

//6.Structures : --------------------------------------
struct Employee {
    let name: String
    var vacationRemaining: Int
    
    mutating func takevacation(days:Int){
        if vacationRemaining > days{
            vacationRemaining -= days
            print("In vacation")
            print("vacation left is \(vacationRemaining) days")
        }else{
            print("There isn't enough days")
        }
    }
}
var taylor=Employee.init(name:"Taylor Swift",vacationRemaining: 9)
taylor.takevacation(days: 5)
print(taylor.vacationRemaining)
    
//7.Classes : --------------------------------

class animals {
    var legs: Int
    
    init(legs: Int) {
        self.legs = legs
    }
}

class Dog: animals {
    init(){
        super.init(legs: 4)
    }
    func speak(){
        print("Bow Bow")
    }
}

class Corgi: Dog {
    override func speak() {
        print("Corgi's Bowwww Bowwww")
    }
}

class poodle: Dog {
    override func speak() {
        print("Poodle's BOWWWWW BOWWWWW")
    }
}

class Cat: animals {
    var isTame: Bool
    
    init(isTame: Bool) {
        self.isTame = isTame
        super.init(legs: 4)
    }
    func speak(){
        print("Meow")
    }
}
class Persion: Cat{
    init(){
        super.init(isTame: true)
    }
    
    override func speak() {
        print("Persion Meow")
    }
}

class Lion: Cat{
    init(){
        super.init(isTame: false)
    }
    
    override func speak(){
        print("A lion Roar!!")
    }
}
print("\n")
let dog = Dog()
dog.speak()

let corgi = Corgi()
corgi.speak()

let Toypoodle=poodle()
Toypoodle.speak()

let cat = Cat(isTame: true)
cat.speak()

let PersionCat = Persion()
PersionCat.speak()
print("Is the PersionCat Tame : \(PersionCat.isTame)")
