import UIKit
/*
Exercise 2.1
Create a constant named myAge and assign it the value of your age.
*/

let MyAge: Int = 22
print("I am", MyAge, "years old")

/*
Exercise 2.2
Declare an Int variable named myAgeInTenYears and assign it the value of your age after 10 years(use the constant myAge and the addition(+) operator).
*/

var MyAgeInTenYears = MyAge + 10
print ("After 10 years I will be", MyAgeInTenYears,"years old")

/*
Exercise 2.3
Declare another daysInYear constant and set it to 365.25 (the number of days in a leap year).
*/

let daysInYear: Float = 365.25
print("Days in year - ", daysInYear)

/*
Exercise 2.4
Declare a Float variable named daysPassed and set it to the number of days since you were born plus 10 years (use myAgeInTenYears(variable) and daysInYear(constant)).
*/

//var daysPassed = Float(MyAgeInTenYears) * daysInYear
//print(daysPassed)


let format = ISO8601DateFormatter()

let birthday = format.date(from: "1998-05-21T19:20:42+0000")!
let now = format.date(from: "2021-01-25T19:20:42+0000")!
let in10years = format.date(from: "2031-01-25T19:20:42+0000")!

let daysMyAge = Calendar.current.dateComponents([.day], from: birthday, to: now)
let daysMyAgeIn10Years = Calendar.current.dateComponents([.day], from: birthday, to: in10years)

print(daysMyAge)
print(daysMyAgeIn10Years)

/*
Exercise 3.
Calculate triangle's area and perimeter.
Conditions: triangle length: AC = 8.0, CB = 6.0. The hypotenuse of triangle AB is calculated using the sqrt(Double) function, replacing Double with the sum of squares of length.
 Steps:
 1.Right-angled triangle
 2.Hypotenuse of the triangle
 3.Area of a triangle
 4.Triangle perimeter
*/

let AC = 8.0
let CB = 6.0
let AB = sqrt(AC * AC + CB * CB) //hypotenuse

let area = AC * CB / 2 //area
print("Area is", area)

let perimeter = AC + CB + sqrt(AC * AC + CB * CB) //perimeter
print("Perimeter is", perimeter)
