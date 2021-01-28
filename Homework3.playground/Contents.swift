import UIKit
/*
 Exercise 1
 The user opens a deposit in the bank for 5 years in the amount of 500_000 Eur. The interest rate per annum \(rate). Calculate the amount of income \(profit) at the end of the \(period).
 for _ in 1...period{
 }
 print("Amount of income after \(period) years will be \(profit) Eur. My total deposit will be \(deposit) Eur !")
 */

let deposit = 500000.0
var interestRate = 0.42
var period: Double
for period in 1...5 {
    print("Amount of income after \(period) years will be = \((deposit) * (Double(interestRate) * Double(period))) Eur. My total deposit will be \(deposit) Eur !")
}

/*
 Exercise 2
 Create an integer array with any set of numbers and  print("My even numbers are: \(evenNumber)")
 Use a % inside the for loop.
 */


var arrayOfIntegers = [1,2,3,4,5,6,7,8,9,10]
for evenNumber: Int in arrayOfIntegers{
  if evenNumber % 2 == 0 {
    print("My even numbers are: \(evenNumber)")
  }
}


/*
 Exercise 3
 Inside the for loop create randomNumber for the random Int calculation. Calculate and print("Number 5 will be after \(counter) shuffles"). Don't forget to make a break inside the if statement.
 */


for var counter in  1 ... 1000{
let randomNumber = Int.random(in: 1..<100)
let rightNumber = 5
if randomNumber != rightNumber {
    counter += 1
} else {
    print("Number 5 will be after \(counter) shuffles")
    break
}
}

/*
 Exercise 4
 A bug is climbing to a 10-meter electric post. During the day, bug can climb two meters, during the night she slides down to 1 meter. Determine with the help of the cycle how many days bug will climb on the top of the post. Think about which loop to use in which situation. print("bug will spend \(numberOfDays)) to reach top of the post")
 */
var numberOfDays = 0
var climbed = 0

let electricPost = 10
let climbedInDay = 2
let climbedInNight = -1

while electricPost > climbed {
    climbed = (climbedInDay + climbedInNight) + climbed
    numberOfDays += 1
}
print("bug will spend \(numberOfDays) days to reach top of the post")
