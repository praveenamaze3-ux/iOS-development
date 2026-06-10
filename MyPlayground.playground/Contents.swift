print("Welcome to my app!")
print("By default This prints out a conversion")
print("chart from centimeters to inches, but you")
print("can also set a custom range if you want.")

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

