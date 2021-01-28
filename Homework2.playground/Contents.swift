import UIKit
/*
 Ex1:
 1.1 Declare two variables of type Float and assign each a number with a fractional part - for example, 3.14 or 42.0
 1.2 Declare another variable of type Double and assign it the sum of two variables of type Float
 1.3 Print the result with print ()
 */
var float = 4.20
var float2 = 7.77
var double = float + float2
print(double)

/*
 Ex2:
 2.1 Create a variable numberOne and assign any integer value to it
 2.2 Create another integer variable numberTwo and assign it any value less than numberOne
 2.3 Set the new integer constant result to the result of dividing numberOne by numberTwo
 2.4 Assign the new integer constant remainder the remainder of numberOne divided by numberTwo
 2.5 Output to the console the message: "When dividing <...> by <...>, the result is <...>, the remainder is <...>".
 */

var numberOne = 35
var numberTwo = 8
let constant = numberOne / numberTwo
let constant2 = numberOne % numberTwo
print("When dividing \(numberOne) by \(numberTwo) , the result is \(constant), the remainder is \(constant2)")

/*
 Ex3:
 You need to buy several new MacBook Pro, each cost 1000 EUR.
 If you are buying 5 and more, with discount it will cost you 900 each! If you are buying 10 and more with discount it will cost you 850 each! Create if-else statements to check Conditions of buying in different amount!
 print("new: \(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) Eur")
 */

var price = 900
var price2 = 850
var price3 = 1000
let qty = Int.random(in: 1..<100)

var totalSum = qty * price
var totalSum2 = qty * price2
var totalSum3 = qty * price3

if qty >= 5 {
    print("new: \(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) Eur")
}
else if qty >= 10 {
    print("new: \(qty) MacBook Pro with the price of: \(price2) EUR, will cost you: \(totalSum2) Eur")
}else{
    print("new: \(qty) MacBook Pro with the price of: \(price3) EUR, will cost you: \(totalSum3) Eur")
}

/*
 Ex4:
 Create String userInputAge and put value "33a" and convert to Int to make Fatal error: Unexpectedly found nil while unwrapping an Optional value!
 Fix this Fatal error inside the if-else statements to print whenever this age can be converted to Int or not!
 */

var userInputAge = "33a"
var convertToInt = Int(userInputAge)

print(convertToInt)

if convertToInt == nil {
    print("userInputAge does not contains any value")
}else{
    print("userInputAge:", convertToInt as Any)
}

/*
 Ex5:
 Calculate the number of years, months, days from you birthday to current date.
 print("Total years: \(totalYearsFromBirth) , total months: \(totalMonthFromBirth), total days: \(totalDaysFromBirth)")
 */

let format = ISO8601DateFormatter()

let birthday = format.date(from: "1998-05-21T19:20:42+0000")!
let now = format.date(from: "2021-01-26T19:20:42+0000")!

let totalDaysFromBirth = Calendar.current.dateComponents([.day], from: birthday, to: now)
let totalMonthFromBirth = Calendar.current.dateComponents([.month], from: birthday, to: now)
let totalYearsFromBirth = Calendar.current.dateComponents([.year], from: birthday, to: now)

print("Total years: \(totalYearsFromBirth) , total months: \(totalMonthFromBirth), total days: \(totalDaysFromBirth)")

/*
 Ex6:
 Use Exercise 5 monthOfBirth to calculate in which quarter of the year you were born.
 Use switch case to print("I was born in the ... quarter")
 */

let date = birthday
let calendar = Calendar.current
let components = (calendar as NSCalendar).components([.month], from: date)
let month = components.month

if let month = components.month {
    switch month {
    case 0 ... 3:
        print("I was born in the first quarter")
    case 4 ... 6:
        print("I was born in the second quarter")
    case 7 ... 9:
        print("I was born in the third quarter")
    case 10 ... 12:
        print("I was born in the forth quarter")
    default:
        break
    }
}
